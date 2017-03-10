#!/bin/bash
KOKKOSKERNELS_PATH=$1
mkdir generated_specializations
#abs
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_abs Kokkos_Blas1_MV_impl_abs.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#axpby
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_V_axpby Kokkos_Blas1_MV_impl_axpby.hpp KokkosBlas ${KOKKOSKERNELS_PATH}
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_axpby Kokkos_Blas1_MV_impl_axpby.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#dot
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_dot Kokkos_Blas1_MV_impl_dot.hpp KokkosBlas ${KOKKOSKERNELS_PATH}
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_V_dot Kokkos_Blas1_MV_impl_dot.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#fill
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_fill Kokkos_Blas1_MV_impl_fill.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#mult
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_mult Kokkos_Blas1_MV_impl_mult.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#nrm1
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_nrm1 Kokkos_Blas1_MV_impl_nrm1.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#nrm2
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_nrm2 Kokkos_Blas1_MV_impl_nrm2.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#nrm2w
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_nrm2w Kokkos_Blas1_MV_impl_nrm2w.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#nrmInf
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_nrmInf Kokkos_Blas1_MV_impl_nrmInf.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#recip
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_recip Kokkos_Blas1_MV_impl_recip.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#scal
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_scal_singlecoeff Kokkos_Blas1_MV_impl_scal.hpp KokkosBlas ${KOKKOSKERNELS_PATH}
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_scal_multicoeff Kokkos_Blas1_MV_impl_scal.hpp KokkosBlas ${KOKKOSKERNELS_PATH}
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_V_scal_singlecoeff Kokkos_Blas1_MV_impl_scal.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#sum
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_sum Kokkos_Blas1_MV_impl_sum.hpp KokkosBlas ${KOKKOSKERNELS_PATH}

#update
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_MV_update Kokkos_Blas1_MV_impl_update.hpp KokkosBlas ${KOKKOSKERNELS_PATH}
${KOKKOSKERNELS_PATH}/scripts/generate_specialization_function.bash KokkosBlas1_impl_V_update Kokkos_Blas1_V_impl_update.hpp KokkosBlas ${KOKKOSKERNELS_PATH}



