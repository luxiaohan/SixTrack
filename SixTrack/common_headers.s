!     This file contains variables that are shared between all
!     parts of the code, such as lout and crlibm functions

!add in floating point constants
+cd parnum
      real(kind=fPrec) c180e0,c1e1,c1e12,c1e13,c1e15,c1e16,c1e2,c1e3,   &
     &c1e4,c1e6,c1m1,c1m7,c1m10,c1m12,c1m13,c1m15,c1m18,c1m2,c1m21,     &
     &c1m24,c1m3,c1m36,c1m38,c1m6,c1m9,c2e3,c4e3,crade,clight,four,half,&
     &one,pieni,pmae,pmap,three,two,zero

      parameter(pieni = 1e-38_fPrec)

      parameter(zero = 0.0_fPrec)
      parameter(half = 0.5_fPrec)
      parameter(one = 1.0_fPrec)
      parameter(two = 2.0_fPrec)
      parameter(three = 3.0_fPrec)
      parameter(four = 4.0_fPrec)

      parameter(c1e1 = 1.0e1_fPrec)
      parameter(c1e2 = 1.0e2_fPrec)
      parameter(c1e3 = 1.0e3_fPrec)
      parameter(c2e3 = 2.0e3_fPrec)
      parameter(c4e3 = 4.0e3_fPrec)
      parameter(c1e4 = 1.0e4_fPrec)
      parameter(c1e6 = 1.0e6_fPrec)
      parameter(c1e12 = 1.0e12_fPrec)
      parameter(c1e13 = 1.0e13_fPrec)
      parameter(c1e15 = 1.0e15_fPrec)
      parameter(c1e16 = 1.0e16_fPrec)
      parameter(c180e0 = 180.0_fPrec)

      parameter(c1m1 = 1.0e-1_fPrec)
      parameter(c1m2 = 1.0e-2_fPrec)
      parameter(c1m3 = 1.0e-3_fPrec)
      parameter(c1m6 = 1.0e-6_fPrec)
      parameter(c1m7 = 1.0e-7_fPrec)
      parameter(c1m9 = 1.0e-9_fPrec)
      parameter(c1m10 = 1.0e-10_fPrec)
      parameter(c1m12 = 1.0e-12_fPrec)
      parameter(c1m13 = 1.0e-13_fPrec)
      parameter(c1m15 = 1.0e-15_fPrec)
      parameter(c1m18 = 1.0e-18_fPrec)
      parameter(c1m21 = 1.0e-21_fPrec)
      parameter(c1m24 = 1.0e-24_fPrec)
      parameter(c1m36 = 1.0e-36_fPrec)
      parameter(c1m38 = 1.0e-38_fPrec)

!     electron mass from PDG, 2002
      parameter(pmap = 938.271998_fPrec)
      parameter(pmae = .510998902_fPrec)
      parameter(crade = 2.817940285e-15_fPrec)
      parameter(clight = 2.99792458e8_fPrec)

+cd crlibco
      real(kind=fPrec) sin_rn,cos_rn,tan_rn,sinh_rn,cosh_rn,asin_rn,    &
     &acos_rn,atan_rn,atan2_rn,exp_rn,log_rn,log10_rn
+cd crcoall
!     Standard output unit
!     For CR version, this is the "buffer file" fort.92;
!     Otherwise write directly to "*" aka iso_fortran_env::output_unit (usually unit 6)
      integer lout
      common /crflags/lout

+dk fPrec
      module floatPrecision
      use, intrinsic :: iso_fortran_env, only : real32, real64, real128

+if 32bitm
      integer, parameter :: fPrec = real32
+ei
+if 64bitm
      integer, parameter :: fPrec = real64
+ei
+if 128bitm
      integer, parameter :: fPrec = real128
+ei

      end module floatPrecision

