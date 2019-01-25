#define DYNEventSpecial
/* DSblock model generated by Dymola from Modelica model ModelInitalComponentsVariable_Intracranial_Translational_Examples_Gravitymodel2
 Dymola Version 2019 FD01 (64-bit), 2018-10-10 translated this at Fri Jan 25 14:27:16 2019

   */

#include <matrixop.h>
/* Declaration of C-structs */
/* Prototypes for functions used in model */
/* Codes used in model */
/* DSblock C-code: */

#define NX_    1
#define NX2_   0
#define NU_    2
#define NY_    1
#define NW_    17
#define NP_    6
#define NPS_   0
#define ND_   0
#define NXP_   0
#define NInitial_   0
#define MAXAuxStr_   0
#define MAXAuxStrLen_   500
#define NHash1_ -742496154
#define NHash2_ -51155218
#define NHash3_ 0
#define NI_    0
#define NRelF_ 0
#define NRel_  0
#define NTim_  0
#define NSamp_ 0
#define NCons_ 0
#define NA_    18
#define SizePre_ 0
#define SizeEq_ 2
#define SizeDelay_ 0
#define QNLmax_ 0
#define MAXAux 0
#define NrDymolaTimers_ 0
#define NWhen_ 0
#define NCheckIf_ 0
#define NGlobalHelp_ 0
#define NGlobalHelpI_ 0
#ifndef NExternalObject_
#define NExternalObject_ 0
#endif
#include <moutil.c>
DYMOLA_STATIC unsigned int FMIClockValueReferences_[1]={0};
DYMOLA_STATIC unsigned int FMIClockFirstValueReferences_[1]={0};
PreNonAliasDef(0)
PreNonAliasDef(1)
PreNonAliasDef(2)
PreNonAliasDef(3)
PreNonAliasDef(4)
PreNonAliasDef(5)
#if !defined(DYM2CCUR)
 DYMOLA_STATIC const char*modelName="ModelInitalComponentsVariable_Intracranial_Translational_Examples_Gravitymodel2";
#endif
DYMOLA_STATIC const char*usedLibraries[]={0};
DYMOLA_STATIC const char*dllLibraryPath[]={0};
DYMOLA_STATIC const char*default_dymosim_license_filename=
 "c:/users/3048038/appdata/roaming/dassaultsystemes/dymola/dymola.lic";
#include <dsblock1.c>

/* Define variable names. */

#define Sections_

TranslatedEquations

InitialSection
#if defined(DynSimStruct) || defined(BUILDFMU)
DYNX(W_,12) = 8;
DYNX(W_,15) = 16;
DYNX(W_,1) = 10;
DYNX(W_,13) = 1060;
DYNX(W_,7) = 10;
DYNX(W_,14) = 9.81;
DYNX(W_,11) = 10.0;
DYNX(W_,5) = 10.0;
DYNX(W_,4) = 10.0;
#endif
if (!DymolaUserHomotopy) UpdateInitVars(time, X_, XD_, U_, DP_, IP_, LP_, F_, Y_, W_, QZ_, duser_, iuser_, cuser_, did_, 1);
BoundParameterSection
BoundParameterConstantSection
DYNX(W_,9) = 1.8499+3.9310671194230222*DYNX(DP_,5)-10.854045178833852*
  DYNX(DP_,5)*DYNX(DP_,3);
DYNX(W_,10) = 10.0-DYNX(W_,9);
BoundParameterSection
InitialSection
#if defined(DynSimStruct) || defined(BUILDFMU)
DYNX(Y_,0) = 9.1;
#endif
InitialSection
InitialStartSection
InitialSection
if (!DymolaUserHomotopy) UpdateInitVars(time, X_, XD_, U_, DP_, IP_, LP_, F_, Y_, W_, QZ_, duser_, iuser_, cuser_, did_, 1);
DefaultSection
InitializeData(0)
InitialSection
InitialSectionB
Init_=false;InitializeData(2);Init_=true;
EndInitialSection

OutputSection
DYNX(Y_,0) = DYNX(X_,0);

DynamicsSection
DYNX(W_,2) = 10.0-DYNX(X_,0);
DYNX(W_,16) = DYNX(W_,10)-DYNX(W_,2);
 /* Linear system of equations to solve. */
DYNX(W_,8) = RememberSimple_(DYNX(W_,8), 0);
SolveScalarLinear(DYNX(U_,1),"u1",  -DYNX(W_,16)," -resistance1_1.p", DYNX(W_,8),
  "pressure_base.flowp.q");
 /* End of Equation Block */ 

DYNX(W_,3) = DYNX(U_,0)+DYNX(W_,8);
 /* Linear system of equations to solve. */
DYNX(F_,0) = RememberSimple_(DYNX(F_,0), 1);
SolveScalarLinearParametric( -DYNX(DP_,1)," -storageCSF1.C",  -DYNX(W_,3),
  " -storageCSF1.q", DYNX(F_,0),"der(storageCSF1.p)");
 /* End of Equation Block */ 


AcceptedSection1

AcceptedSection2
DYNX(W_,0) = DYNX(W_,2)-10.0;
DYNX(W_,6) = DYNX(U_,0)-DYNX(W_,3);

DefaultSection
InitializeData(1)
EndTranslatedEquations

#include <dsblock6.c>

PreNonAliasNew(0)
StartNonAlias(0)
DeclareVariable("csfFormation1.p", "pressure difference between the inflow and outflow [mmHg]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("csfFormation1.q", "Volume flow between in and out [ml/min]", "u", 1,\
 2, 0, 0)
DeclareVariable("csfFormation1.inf.p", "Pressure  [mmHg]", 10, 0.0,0.0,0.0,0,521)
DeclareAlias2("csfFormation1.inf.q", "Flow [ml/min]", "u", -1, 2, 0, 132)
DeclareVariable("csfFormation1.out.p", "Pressure  [mmHg]", 0.0, 0.0,0.0,0.0,0,520)
DeclareAlias2("csfFormation1.out.q", "Flow [ml/min]", "u", 1, 2, 0, 132)
DeclareAlias2("csfFormation1.u", "", "u", 1, 2, 0, 0)
DeclareState("storageCSF1.p", "pressure difference between the inflow and outflow [mmHg]",\
 0, 9.1, 0.0,0.0,0.0,0,560)
DeclareDerivative("storageCSF1.der(p)", "der(pressure difference between the inflow and outflow) [(mmHg)/s]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("storageCSF1.q", "Volume flow between in and out [ml/min]", 0.0,\
 0.0,0.0,0.0,0,512)
DeclareAlias2("storageCSF1.inf.p", "Pressure  [mmHg]", "csfFormation1.out.p", 1,\
 5, 2, 4)
DeclareAlias2("storageCSF1.inf.q", "Flow [ml/min]", "storageCSF1.q", -1, 5, 3, 132)
DeclareVariable("storageCSF1.out.p", "Pressure  [mmHg]", 10.0, 0.0,0.0,0.0,0,521)
DeclareAlias2("storageCSF1.out.q", "Flow [ml/min]", "storageCSF1.q", 1, 5, 3, 132)
DeclareParameter("storageCSF1.E", "[1/ml]", 0, 0.432, 0.0,0.0,0.0,0,560)
DeclareParameter("storageCSF1.C", "", 1, 3.68, 0.0,0.0,0.0,0,560)
DeclareAlias2("storageCSF1.o", "", "storageCSF1.p", 1, 1, 0, 0)
DeclareVariable("pressure_base1.flowp.p", "Pressure  [mmHg]", 10.0, 0.0,0.0,0.0,\
0,521)
DeclareVariable("pressure_base1.flowp.q", "Flow [ml/min]", 0.0, 0.0,0.0,0.0,0,776)
DeclareVariable("pressure_base.flowp.p", "Pressure  [mmHg]", 10, 0.0,0.0,0.0,0,521)
DeclareVariable("pressure_base.flowp.q", "Flow [ml/min]", 0.0, 0.0,0.0,0.0,0,776)
DeclareOutput("z", "", 0, 9.1, 0.0,0.0,0.0,0,512)
DeclareVariable("csfAbsorptionGravity.p", "pressure difference between the inflow and outflow [mmHg]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("csfAbsorptionGravity.q", "Volume flow between in and out [ml/min]",\
 "pressure_base.flowp.q", -1, 5, 8, 0)
DeclareVariable("csfAbsorptionGravity.inf.p", "Pressure  [mmHg]", 0.0, 0.0,0.0,\
0.0,0,521)
DeclareAlias2("csfAbsorptionGravity.inf.q", "Flow [ml/min]", "pressure_base.flowp.q", 1,\
 5, 8, 132)
DeclareVariable("csfAbsorptionGravity.out.p", "Pressure  [mmHg]", 10.0, 0.0,0.0,\
0.0,0,521)
DeclareAlias2("csfAbsorptionGravity.out.q", "Flow [ml/min]", "pressure_base.flowp.q", -1,\
 5, 8, 132)
DeclareParameter("csfAbsorptionGravity.P", "CVP", 2, 4.2, 0.0,0.0,0.0,0,560)
DeclareVariable("csfAbsorptionGravity.a", "Angle of incline in Deg", 8, 0.0,0.0,\
0.0,0,513)
DeclareVariable("csfAbsorptionGravity.r", "Density of blood in Kg/m^3 [kg/m3|g/cm3]",\
 1060, 0.0,1E+100,0.0,0,513)
DeclareVariable("csfAbsorptionGravity.g", "Gravitational constant m/s^2", 9.81, \
0.0,0.0,0.0,0,513)
DeclareParameter("csfAbsorptionGravity.Lcvp", "Distance from cranial midpoint to Right Atrium in m",\
 3, 0.3, 0.0,0.0,0.0,0,560)
DeclareParameter("csfAbsorptionGravity.Lcollapse", "Distance from cranial midpoint to IJV collapse in m",\
 4, 0.09, 0.0,0.0,0.0,0,560)
DeclareVariable("csfAbsorptionGravity.a1", "Angle of collapse of IJV and thus uncoupling from CVP",\
 16, 0.0,0.0,0.0,0,513)
DeclareParameter("csfAbsorptionGravity.G", "Multiples of G- force", 5, 1, \
0.0,0.0,0.0,0,560)
DeclareVariable("resistance1_1.p", "pressure difference between the inflow and outflow [mmHg]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("resistance1_1.q", "Volume flow between in and out [ml/min]", \
"pressure_base.flowp.q", -1, 5, 8, 0)
DeclareAlias2("resistance1_1.inf.p", "Pressure  [mmHg]", "csfFormation1.out.p", 1,\
 5, 2, 4)
DeclareAlias2("resistance1_1.inf.q", "Flow [ml/min]", "pressure_base.flowp.q", 1,\
 5, 8, 132)
DeclareAlias2("resistance1_1.out.p", "Pressure  [mmHg]", "csfAbsorptionGravity.inf.p", 1,\
 5, 10, 4)
DeclareAlias2("resistance1_1.out.q", "Flow [ml/min]", "pressure_base.flowp.q", -1,\
 5, 8, 132)
DeclareAlias2("resistance1_1.r", "Resistance to flow [mmHg/(ml/min)]", "u1", 1, 2,\
 1, 0)
DeclareAlias2("resistance1_1.R", "", "u1", 1, 2, 1, 0)
DeclareInput("u", "[:#(prefix=input)]", 0, 0.0, 0.0,0.0,0.0,0,512)
DeclareInput("u1", "[:#(prefix=input)]", 1, 0.0, 0.0,0.0,0.0,0,512)
EndNonAlias(0)

#define DymolaHaveUpdateInitVars 1
#include <dsblock5.c>

DYMOLA_STATIC void UpdateInitVars(double*time, double* X_, double* XD_, double* U_, double* DP_, int IP_[], Dymola_bool LP_[], double* F_, double* Y_, double* W_, double QZ_[], double duser_[], int iuser_[], void*cuser_[],struct DYNInstanceData*did_,int initialCall) {
}
StartDataBlock
StartEqBlock
DoRemember_(DYNX(F_,0), 0.0, 1);
DoRemember_(DYNX(W_,8), 0.0, 0);
EndEqBlock
EndDataBlock