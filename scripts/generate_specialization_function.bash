#!/bin/bash

Function=$1
MasterHeader=$2
NameSpace=$3
KokkosKernelsPath=$4
ScalarList="double float Kokkos::complex<double> Kokkos::complex<float>"
LayoutList="LayoutLeft LayoutRight"
ExecMemSpaceList="Cuda,CudaSpace OpenMP,HostSpace Pthread,HostSpace Serial,HostSpace"


filename_hpp=generated_specializations/${Function}_decl_specialization.hpp
Function_UpperCase=`echo ${Function} | awk '{print toupper($0)}'`


echo "#ifndef ${Function_UpperCase}_DECL_SPECIALISATION_HPP_" > ${filename_hpp}
echo "#define ${Function_UpperCase}_DECL_SPECIALISATION_HPP_" >> ${filename_hpp}

cat ${KokkosKernelsPath}/scripts/header >> ${filename_hpp}

echo "namespace ${NameSpace} {" >> ${filename_hpp}
echo "namespace Impl {" >> ${filename_hpp}

for Scalar in ${ScalarList}; do
for Layout in ${LayoutList}; do
for ExecMemSpace in ${ExecMemSpaceList}; do
   ExecMemSpaceArray=(${ExecMemSpace//,/ })
   ExecSpace=${ExecMemSpaceArray[0]}
   MemSpace=${ExecMemSpaceArray[1]}
   echo "Generate: " ${Function} " " ${Scalar} " " ${Layout} " " ${ExecSpace} " " ${MemSpace}
   ${KokkosKernelsPath}/scripts/generate_specialization_type.bash ${Function} ${Scalar} ${Layout} ${ExecSpace} ${MemSpace} ${MasterHeader} ${NameSpace} ${KokkosKernelsPath}
done
done
done

echo "} // Impl" >> ${filename_hpp}
echo "} // $3" >> ${filename_hpp}
echo "#endif // ${Function_UpperCase}_DECL_SPECIALISATION_HPP_" >> ${filename_hpp}

