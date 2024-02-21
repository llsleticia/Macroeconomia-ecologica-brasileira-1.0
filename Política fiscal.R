#-------------------------------------------------------------------------------------------------------------
# DEFINE 1.1
#-------------------------------------------------------------------------------------------------------------

rm(list=ls(all=T))
T<-84
monte<-1 #should increase to 100 for Monte Carlo simulations
loops<-4

#-------------------------------------------------------------------------------------------------------------
#ENDOGENOUS VARIABLES 
#-------------------------------------------------------------------------------------------------------------

#Matter, waste and recycling
MY<- vector(length=T)
M<- vector(length=T)
REC<- vector(length=T)
DEM<- vector(length=T)
SES<- vector(length=T)
W<- vector(length=T)
CEN<- vector(length=T)
O2<- vector(length=T)	
HWS<- vector(length=T)
hazratio<- vector(length=T)
REV_M<- vector(length=T)
CON_M<- vector(length=T)
RES_M<- vector(length=T)
dep_M<- vector(length=T)

#Energy
E<- vector(length=T)
ER<- vector(length=T)
EN<- vector(length=T)
ED<- vector(length=T)
REV_E<- vector(length=T)
CON_E<- vector(length=T)
RES_E<- vector(length=T)
dep_E<- vector(length=T)

#Emissions and climate change 
EMIS_IN<- vector(length=T)
EMIS_L<- vector(length=T)
EMIS<- vector(length=T)
CO2_AT<- vector(length=T)
CO2_UP<- vector(length=T)
CO2_LO<- vector(length=T)
Forc<- vector(length=T)
F_EX<- vector(length=T)
T_AT<- vector(length=T)
T_LO<- vector(length=T)

#Ecological efficiency and technology
omega<- vector(length=T)
g_omega<- vector(length=T)
mu<- vector(length=T)
rho<- vector(length=T)
epsilon<- vector(length=T)
theta<- vector(length=T)	

#Output determination
Y_star_M<- vector(length=T)
Y_star_E<- vector(length=T)
Y_star_K<- vector(length=T)
Y_star_N<- vector(length=T)
Y_star<- vector(length=T)
um<- vector(length=T)
ue<- vector(length=T)
u<- vector(length=T)
re<- vector(length=T)
Y<- vector(length=T)
Y_N<- vector(length=T)
D_T<- vector(length=T)
D_TP<- vector(length=T)
D_TF<- vector(length=T)

#Firms
TP<- vector(length=T)
TP_G<- vector(length=T)
RP<- vector(length=T)
DP<- vector(length=T)
r<- vector(length=T)
I_PRI_D<- vector(length=T)
I_PRI_D_1<- vector(length=T) 
I_PRI_D_2<- vector(length=T) 
I_PRI_D_3<- vector(length=T)
I_PRI_D_4<- vector(length=T)
IG_PRI_D_1<- vector(length=T) 
IG_PRI_D_2<- vector(length=T) 
IG_PRI_D_3<- vector(length=T)
IG_PRI_D_4<- vector(length=T)
IC_PRI_D_1<- vector(length=T)
IC_PRI_D_2<- vector(length=T)
IC_PRI_D_3<- vector(length=T)
IC_PRI_D_4<- vector(length=T)
beta_S1<- vector(length=T)
beta_S2<- vector(length=T)
beta_S3<- vector(length=T)
beta_S4<- vector(length=T)
beta_0_S1<- vector(length=T)
beta_0_S2<- vector(length=T)
beta_0_S3<- vector(length=T)
beta_0_S4<- vector(length=T)
g_beta_0<- vector(length=T)
RC<- vector(length=T)
g_RC<- vector(length=T)
NLG_D_1<- vector(length=T)
NLG_D_2<- vector(length=T)
NLG_D_3<- vector(length=T)
NLG_D_4<- vector(length=T)
NLC_D_1<- vector(length=T)
NLC_D_2<- vector(length=T)
NLC_D_3<- vector(length=T)
NLC_D_4<- vector(length=T)
IG_PRI_1<- vector(length=T)
IG_PRI_2<- vector(length=T)
IG_PRI_3<- vector(length=T)
IG_PRI_4<- vector(length=T)
IC_PRI_1<- vector(length=T) 
IC_PRI_2<- vector(length=T)
IC_PRI_3<- vector(length=T)
IC_PRI_4<- vector(length=T)
IG_PRI<- vector(length=T)
IC_PRI<- vector(length=T)
I_PRI<- vector(length=T)
L<- vector(length=T)
KG_PRI<- vector(length=T)
KG_PRI_1<- vector(length=T)
KG_PRI_2<- vector(length=T)
KG_PRI_3<- vector(length=T)
KG_PRI_4<- vector(length=T)
KC_PRI<- vector(length=T)
KB<- vector(length=T)
KC_PRI_1<- vector(length=T)
KC_PRI_2<- vector(length=T)
KC_PRI_3<- vector(length=T)
KC_PRI_4<- vector(length=T)
K_PRI<- vector(length=T)
kappa<- vector(length=T)
delta<- vector(length=T)
v<- vector(length=T)
g_lambda<- vector(length=T)
lambda<- vector(length=T)
wage<- vector(length=T)
N<- vector(length=T)
ur<- vector(length=T)
b_C<- vector(length=T)
b_G<- vector(length=T)
x_1<- vector(length=T)
x_2<- vector(length=T)
B_C<- vector(length=T)
B_G<- vector(length=T)
p_C<- vector(length=T)
p_G<- vector(length=T)
B<- vector(length=T)
DL<- vector(length=T)
def<- vector(length=T)
illiq<- vector(length=T)
x_20<- vector(length=T)
g_x_20<- vector(length=T)
coupon_C<- vector(length=T)
coupon_G<- vector(length=T)

#Households 
Y_HG<- vector(length=T)
Y_H<- vector(length=T)
CO_PRI<- vector(length=T)
CO_PRI_N<- vector(length=T)
V_HF<- vector(length=T)
SEC_H<- vector(length=T)
B_CH<- vector(length=T)
B_GH<- vector(length=T)
D_N<- vector(length=T)
D<- vector(length=T)
b_CH<- vector(length=T)
b_GH<- vector(length=T)
yield_C<- vector(length=T)
yield_G<- vector(length=T)
DC<- vector(length=T)
LF<- vector(length=T)
POP<- vector(length=T)
g_POP<- vector(length=T)
lf_1<- vector(length=T)
lambda_30<- vector(length=T)
g_lambda_30<- vector(length=T)
lambda_40<- vector(length=T)
g_lambda_40<- vector(length=T)

#Banks 
BP<- vector(length=T)
CAP<- vector(length=T)
BP_U<- vector(length=T)
BP_D<- vector(length=T)
HPM<- vector(length=T)
SEC_B<- vector(length=T)
A<- vector(length=T)
CR<- vector(length=T)
CR_C_1<- vector(length=T)
CR_C_2<- vector(length=T)
CR_C_3<- vector(length=T)
CR_C_4<- vector(length=T)
CR_C<- vector(length=T)
CR_G<- vector(length=T)
LC<- vector(length=T)
LC_1<- vector(length=T)
LC_2<- vector(length=T)
LC_3<- vector(length=T)
LC_4<- vector(length=T)
LG<- vector(length=T)
LG_1<- vector(length=T)
LG_2<- vector(length=T)
LG_3<- vector(length=T)
LG_4<- vector(length=T)
lev_B<- vector(length=T)
CAR<- vector(length=T)
w_LT<- vector(length=T)
sh_NLG<- vector(length=T)
sh_NLC_1<- vector(length=T)
sh_NLC_2<- vector(length=T)
sh_NLC_3<- vector(length=T)
sh_NLC_4<- vector(length=T)
sh_LG<- vector(length=T)
sh_LC_1<- vector(length=T)
sh_LC_2<- vector(length=T)
sh_LC_3<- vector(length=T)
sh_LC_4<- vector(length=T)
int<- vector(length=T)
int_G<- vector(length=T)
int_C_1<- vector(length=T)
int_C_2<- vector(length=T)
int_C_3<- vector(length=T)
int_C_4<- vector(length=T)
spr<- vector(length=T)
spr_G<- vector(length=T)
spr_C_1<- vector(length=T)
spr_C_2<- vector(length=T)
spr_C_3<- vector(length=T)
spr_C_4<- vector(length=T)

#Government
GB <- vector(length=T)
SEC<- vector(length=T)
IG_GOV <- vector(length=T)
IC_GOV <- vector(length=T)
I_GOV <- vector(length=T)
KG_GOV<- vector(length=T)
KC_GOV <- vector(length=T)
K_GOV <- vector(length=T)
K<- vector(length=T)
KG<- vector(length=T)
KC<- vector(length=T)
CO_GOV<- vector(length=T)
SUB<- vector(length=T)
TAX_H<- vector(length=T)
TAX_F<- vector(length=T)
TAX_C<- vector(length=T)
tau_C<- vector(length=T)
TAX<- vector(length=T)

#Central bank
CBP<- vector(length=T)
B_GCB<- vector(length=T)
B_CCB<- vector(length=T)
b_CCB<- vector(length=T)
b_GCB<- vector(length=T)
SEC_CB<- vector(length=T)
SEC_CBred<- vector(length=T)

#Auxiliary variables 
g_Y<- vector(length=T)
gI<- vector(length=T)
gC<- vector(length=T)
g_K<- vector(length=T)
CO2_absorbed<- vector(length=T)
ur_per<- vector(length=T)
g_Y_per<- vector(length=T)
theta_per<- vector(length=T)
greenI<- vector(length=T)
r_total<- vector(length=T)
Y_POP_ratio<- vector(length=T)
I_Y_ratio<- vector(length=T)
I_K_ratio<- vector(length=T)
C_Y_ratio<- vector(length=T)
C_K_ratio<- vector(length=T)
Y_K_ratio<- vector(length=T)
Y_H_Y_ratio<- vector(length=T)
Y_H_K_ratio<- vector(length=T)
A_K_ratio<- vector(length=T)
zero<- vector(length=T)
sigma_0<- vector(length=T)
sigma_0_optimal<- vector(length=T)
h<- vector(length=T)
h_optimal<- vector(length=T)
g_h<- vector(length=T)
omega_ratio<- vector(length=T)
mu_ratio<- vector(length=T)
rho_ratio<- vector(length=T)
epsilon_ratio<- vector(length=T)
Wbill<- vector(length=T)
Interest<- vector(length=T)
Depreciation<- vector(length=T)
CO2_ATppm<- vector(length=T)
L_K<- vector(length=T)
SEC_Y<- vector(length=T)
SEC_Y_per<- vector(length=T)
fiscal_balance_per<- vector(length=T)
PORT_BCH<- vector(length=T)
PORT_BGH<-vector(length=T)
PORT_SECH<-vector(length=T)
PORT_D<-vector(length=T)
SEC_BN<-vector(length=T)
sh_L<-vector(length=T)
g_bC<-vector(length=T)
g_bG<-vector(length=T)
g_pG<-vector(length=T)
g_pC<-vector(length=T)
B_C_issue<-vector(length=T)
B_G_issue<-vector(length=T)
IG_cum<- vector(length=T)
IC_cum<- vector(length=T)
V_CB<- vector(length=T)
gGOVCO<- vector(length=T)
HPM_K_ratio<- vector(length=T)
D_K_ratio<- vector(length=T)
ID_K_ratio<- vector(length=T)
fiscal_balance<- vector(length=T)
A_N<- vector(length=T)
g_lf<- vector(length=T)
W_POP_ratio<- vector(length=T)
E_N_ratio<- vector(length=T)
Y_E_ratio<- vector(length=T)
g_EN_ratio<- vector(length=T)
g_YE_ratio<- vector(length=T)
lambda_perworker<- vector(length=T)
random1<- vector(length=T)
random2<- vector(length=T)
BAILOUT<- vector(length=T)
BAILOUT_levB<- vector(length=T)
BAILOUT_CAR<- vector(length=T)
CAP_before<- vector(length=T)
E_ratio<- vector(length=T)
CO2_ratio<- vector(length=T)
lf<- vector(length=T)
dsr<- vector(length=T)
haz_flow<- vector(length=T)
NLG_DN_1<- vector(length=T)
NLG_DN_2<- vector(length=T)
NLG_DN_3<- vector(length=T)
NLG_DN_4<- vector(length=T)
NLC_DN_1<- vector(length=T)
NLC_DN_2<- vector(length=T)
NLC_DN_3<- vector(length=T)
NLC_DN_4<- vector(length=T)
V_H<- vector(length=T)
Y_HD<- vector(length=T)
KG_GOV_Y_ratio<- vector(length=T)
KC_GOV_Y_ratio<- vector(length=T)
IG_GOV_Y_ratio<- vector(length=T)
IC_GOV_Y_ratio<- vector(length=T)
KG_Y_ratio<- vector(length=T)
KC_Y_ratio<- vector(length=T)
KG_KB<- vector(length=T)
KG_K_ratio<- vector(length=T)
LG_L_ratio_pseudo<- vector(length=T)
LG_L_ratio <- vector(length=T)
RC_pseudo<- vector(length=T)
g_Y_cum<- vector(length=T)
def_per<- vector(length=T)
CAR_per<- vector(length=T)
beta<- vector(length=T)
I_PRI_1<- vector(length=T)
I_PRI_2<- vector(length=T)
I_PRI_3<- vector(length=T)
I_PRI_4<- vector(length=T)
IG_PRI_D<- vector(length=T)
IC_PRI_D<- vector(length=T)
TAX_C_change<- vector(length=T)
SUB_change<- vector(length=T)
IG_GOV_change<- vector(length=T)

g_Y_per_mean_max_policy<- vector(length=T)
EMIS_mean_max_policy<- vector(length=T)
T_AT_mean_max_policy<- vector(length=T)
g_Y_per_mean_min_policy<- vector(length=T)
EMIS_mean_min_policy<- vector(length=T)
T_AT_mean_min_policy<- vector(length=T)

sce=1

for (j in 1:loops){
  
  #Monte Carlo variables
  assign(paste("Monte_g_Y_per",sce, sep=""), matrix(nrow=T,ncol=monte))
  assign(paste("Monte_ur_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_Y",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_CO_PRI",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_I_PRI",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_lambda",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_N",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_Y_POP_ratio",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_lambda_perworker",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_E_N_ratio",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_I_K_ratio",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_ur_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_POP",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_beta_S1",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_greenI",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_kappa",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_theta_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_r_total",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_dsr",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_L_K",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_def_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_lev_B",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_PORT_BCH",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_PORT_BGH",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_p_C",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_p_G",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_h",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_EMIS",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_T_AT",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_dep_E",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_dep_M",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_Forc",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_CO2_ATppm",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_rho",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_mu",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_epsilon",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_W",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_W_POP_ratio",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_hazratio",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_CAR_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_CR",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_CR_C_1",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_CR_G",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_spr",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_spr_C_1",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_spr_G",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_SEC_Y_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_fiscal_balance_per",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_illiq",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_LF",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_lf",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte_yield_C",sce, sep=""), matrix(nrow=T,ncol=monte))
  assign(paste("Monte_yield_G",sce, sep=""), matrix(nrow=T,ncol=monte))
  
  assign(paste("g_Y_per_mean",sce, sep=""), vector(length=T))
  assign(paste("ur_per_mean",sce, sep=""), vector(length=T))
  assign(paste("Y_mean",sce, sep=""), vector(length=T))
  assign(paste("CO_PRI_mean",sce, sep=""), vector(length=T))
  assign(paste("I_PRI_mean",sce, sep=""), vector(length=T))
  assign(paste("lambda_mean",sce, sep=""), vector(length=T))
  assign(paste("N_mean",sce, sep=""), vector(length=T))
  assign(paste("Y_POP_ratio_mean",sce, sep=""), vector(length=T))
  assign(paste("lambda_perworker_mean",sce, sep=""), vector(length=T))
  assign(paste("E_N_ratio_mean",sce, sep=""), vector(length=T))
  assign(paste("I_K_ratio_mean",sce, sep=""), vector(length=T))
  assign(paste("ur_per_mean",sce, sep=""), vector(length=T))
  assign(paste("POP_mean",sce, sep=""), vector(length=T))
  assign(paste("beta_S1_mean",sce, sep=""), vector(length=T))
  assign(paste("greenI_mean",sce, sep=""), vector(length=T))
  assign(paste("kappa_mean",sce, sep=""), vector(length=T))
  assign(paste("theta_per_mean",sce, sep=""), vector(length=T))
  assign(paste("r_total_mean",sce, sep=""), vector(length=T))
  assign(paste("dsr_mean",sce, sep=""), vector(length=T))
  assign(paste("L_K_mean",sce, sep=""), vector(length=T))
  assign(paste("def_per_mean",sce, sep=""), vector(length=T))
  assign(paste("lev_B_mean",sce, sep=""), vector(length=T))
  assign(paste("PORT_BCH_mean",sce, sep=""), vector(length=T))
  assign(paste("PORT_BGH_mean",sce, sep=""), vector(length=T))
  assign(paste("p_C_mean",sce, sep=""), vector(length=T))
  assign(paste("p_G_mean",sce, sep=""), vector(length=T))
  assign(paste("h_mean",sce, sep=""), vector(length=T))
  assign(paste("EMIS_mean",sce, sep=""), vector(length=T))
  assign(paste("T_AT_mean",sce, sep=""), vector(length=T))
  assign(paste("dep_E_mean",sce, sep=""), vector(length=T))
  assign(paste("dep_M_mean",sce, sep=""), vector(length=T))
  assign(paste("Forc_mean",sce, sep=""), vector(length=T))
  assign(paste("CO2_ATppm_mean",sce, sep=""), vector(length=T))
  assign(paste("rho_mean",sce, sep=""), vector(length=T))
  assign(paste("mu_mean",sce, sep=""), vector(length=T))
  assign(paste("epsilon_mean",sce, sep=""), vector(length=T))
  assign(paste("W_mean",sce, sep=""), vector(length=T))
  assign(paste("W_POP_ratio_mean",sce, sep=""), vector(length=T))
  assign(paste("hazratio_mean",sce, sep=""), vector(length=T))
  assign(paste("CAR_per_mean",sce, sep=""), vector(length=T))
  assign(paste("CR_mean",sce, sep=""), vector(length=T))
  assign(paste("CR_C_1_mean",sce, sep=""), vector(length=T))
  assign(paste("CR_G_mean",sce, sep=""), vector(length=T))
  assign(paste("spr_mean",sce, sep=""), vector(length=T))
  assign(paste("spr_C_1_mean",sce, sep=""), vector(length=T))
  assign(paste("spr_G_mean",sce, sep=""), vector(length=T))
  assign(paste("SEC_Y_per_mean",sce, sep=""), vector(length=T))
  assign(paste("fiscal_balance_per_mean",sce, sep=""), vector(length=T))
  assign(paste("illiq_mean",sce, sep=""), vector(length=T))
  assign(paste("LF_mean",sce, sep=""), vector(length=T))
  assign(paste("lf_mean",sce, sep=""), vector(length=T))
  assign(paste("yield_C_mean",sce, sep=""), vector(length=T))
  assign(paste("yield_G_mean",sce, sep=""), vector(length=T))
  
  #--------------------------------------------------------------------------------------------------------------
  #VALUES FOR PARAMETERS & EXOGENOUS VARIABLES 
  #--------------------------------------------------------------------------------------------------------------
  
  for (k in 1:monte) {
    
    for (i in 1:T) {
      #-------------------------------------------------
      # Scenarios
      #-------------------------------------------------
      #Parameters necessary for the scenarios
      GVA_1<- 7.7 #trillion US$4.8
      GVA_2<- 13.4 #trillion US$16.3
      GVA_3<- 6.6 #trillion US$6.4
      GVA_4<- 44 #trillion US$43
      EMIS_IN_1<- 15.32# GtCO2 
      EMIS_IN_2<- 5.94 # GtCO2
      EMIS_IN_3<- 7.73 # GtCO2  
      EMIS_IN_4<- 3.29# GtCO2 
      GVA<-71.95 # trillion US$
      EMIS_tot<-32.29# GtCO2
      
      sh_GVA_1<-GVA_1/(GVA_1+GVA_2+GVA_3+GVA_4)
      sh_GVA_2<-GVA_2/(GVA_1+GVA_2+GVA_3+GVA_4)
      sh_GVA_3<-GVA_3/(GVA_1+GVA_2+GVA_3+GVA_4)
      sh_GVA_4<-1-sh_GVA_1-sh_GVA_2-sh_GVA_3
      sh_EMIS_IN_1<-EMIS_IN_1/(EMIS_IN_1+EMIS_IN_2+EMIS_IN_3+EMIS_IN_4)
      sh_EMIS_IN_2<- EMIS_IN_2/(EMIS_IN_1+EMIS_IN_2+EMIS_IN_3+EMIS_IN_4)
      sh_EMIS_IN_3<- EMIS_IN_3/(EMIS_IN_1+EMIS_IN_2+EMIS_IN_3+EMIS_IN_4)
      sh_EMIS_IN_4<- 1-sh_EMIS_IN_1-sh_EMIS_IN_2-sh_EMIS_IN_3
      db_PRI_1<- (EMIS_IN_1/GVA_1)/(EMIS_tot/GVA)
      db_PRI_2<-(EMIS_IN_2/GVA_2)/(EMIS_tot/GVA)
      db_PRI_3<- (EMIS_IN_3/GVA_3)/(EMIS_tot/GVA)
      db_PRI_4<- (EMIS_IN_4/GVA_4)/(EMIS_tot/GVA)
      db_GOV<-1
      g_baseline<-0.027 # auxiliary parameter 
      TAX_C_initial<-0.033 # trillion US
      EMIS_IN_initial<-36.18 # GtCO2
      tau_C_initial<- TAX_C_initial/(EMIS_IN_initial/(1+g_baseline)) 
      g_tau_C<-0.03
      
      B_G_initial<-0.25 #(Bii)
      B_GCB_initial<-0 # there was no green QE programme in 2017
      B_initial<-12 #(Bii) 
      B_C_initial<-B_initial-B_G_initial #auxiliary exogenous variable
      B_CCB_initial<-0.1 # $0.1tr  is the approximate value of conventional bonds held by central banks
      s_C<-B_CCB_initial/(B_C_initial/(1+g_baseline)) #(Ci)
      SUB_initial<- 0.14# trillion US$ 
      prop<-0.72 
      IG_initial<- 0.7 #trillion US$
      IG_PRI_initial<- prop*IG_initial #trillion US$
      IG_GOV_initial<-(1-prop)*IG_initial #trillion US$
      Y_initial<-80.7#trillion US
      car<-3.667 #(Bii)
      
      #-------------
      # Baseline
      #-------------
      if (j==1){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      } 
      
      #----------------
      # Carbon tax
      #----------------
      if (j==2 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==2 & i>=6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #-----------------------
      # Green subsidies
      #-----------------------
      
      if (j==3 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==3 & i>=6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-0.6
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #-----------------------
      # Green public inv.
      #-----------------------
      
      if (j==4 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==4 & i>=6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-4*IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #--------------------------------
      # Green fiscal policy mix
      #--------------------------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-0.6
        gov_IG<-4*IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #----------------
      # GSF
      #----------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #----------------
      # BPF
      #----------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #----------------
      # GSF+BPF
      #----------------
      
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #--------------------------------
      # Carbon tax+GSF+BPF
      #--------------------------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #----------------
      # Green QE
      #----------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-0.25
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #-----------------------------
      # GSF+BPF+Green QE
      #-----------------------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-0.25
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #-----------------------------------
      # Chance in cons. patterns
      #-----------------------------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-0.25
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0.05 #auxiliary parameter
      }
      
      #--------------------------------------------------------------------
      # Green fiscal policy mix + GSF + BPF + QE
      #--------------------------------------------------------------------
      if (j==200 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==200 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-0.6
        gov_IG<-4*IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-0.25 #(Ci)
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      
      #--------------------------------------------------------------------------------------------
      # Green fiscal policy mix + GSF + BPF + Green QE (sensitivity-min)
      #--------------------------------------------------------------------------------------------
      if (j==5 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1*(1-0.1) #0C; (Bii)
        CO2_UP_PRE<-car*360*(1+0.1) #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==5 & i>=6) {
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-0.6
        gov_IG<-4*IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-0.25 #(Ci)
        S<-3.1*(1-0.1) #0C; (Bii)
        CO2_UP_PRE<-car*360*(1+0.1) #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #-------------------------------------------------------------------------------------------
      # Green fiscal policy mix + + GSF + BPF + Green QE (sensitivity-max)
      #-------------------------------------------------------------------------------------------
      if (j==6 & i<6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-B_GCB_initial/(B_G_initial/(1+g_baseline)) #(Ci)
        S<-3.1*(1+0.1) #0C; (Bii)
        CO2_UP_PRE<-car*360 *(1-0.1)#GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==6 & i>=6) {
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.56995776# econometrically estimated coefficient
        l_1<-1 
        spr_1<-0.04793488#econometrically estimated coefficient
        spr_2<-1
        beta_2<-1#4#0.5#(Biii)
        tau_C_2022<- 0.016
        gov_SUB<-0.6
        gov_IG<-4*IG_GOV_initial/(Y_initial/(1+g_baseline))
        s_G<-0.25 #(Ci)
        S<-3.1*(1+0.1) #0C; (Bii)
        CO2_UP_PRE<-car*360 *(1-0.1)#GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #-----------------------------
      # Sensitivity-minimum
      #-----------------------------
      if (j==16 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==16 & i>=6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==17 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==17 & i>=6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==18 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==18 & i>=6){
        w_G<-1-0.25  #(Biii)
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==19 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==19 & i>=6){
        w_G<-1-0.25  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==20 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==20 & i>=6){
        w_G<-1  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==21 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==21 & i>=6){
        w_G<-1  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==22 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==22 & i>=6){
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<-1.05865076# econometrically estimated coefficient
        l_1<-1*(1-0.5) 
        spr_1<-0.03859055#econometrically estimated coefficient
        spr_2<-1*(1-0.5)
        beta_2<-0.5*(1-0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      #------------
      if (j==23 & i<6){
        w_G<-1  #(Biii)
        w_C_1<-1 #(Biii)
        w_C_2<-1 #(Biii)
        w_C_3<-1 #(Biii)
        w_C_4<-1 #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      if (j==23 & i>=6){
        w_G<-1-0.25  #(Biii)
        w_C_1<-1+min(db_PRI_1,1)*0.25  #(Biii)
        w_C_2<-1+min(db_PRI_2,1)*0.25  #(Biii)
        w_C_3<-1+ min(db_PRI_3,1)*0.25  #(Biii)
        w_C_4<-1+ min(db_PRI_4,1)*0.25  #(Biii)
        r_3_dCR_dCAR_max<- 2.08126476 #auxiliary parameter
        l_1<-1*(1+0.5) 
        spr_1<- 0.05727922#econometrically estimated coefficient
        spr_2<-1*(1+0.5)
        beta_2<-0.5*(1+0.5)#(Biii)
        tau_C_2022<-tau_C_initial*(1+g_tau_C)^(2022-2017)
        gov_SUB<-SUB_initial/(IG_PRI_initial/(1+g_baseline))
        gov_IG<-IG_GOV_initial/(Y_initial/(1+g_baseline))
        S<-3.1 #0C; (Bii)
        CO2_UP_PRE<-car*360 #GtCO2; (Bii)
        con_change<-0 #auxiliary parameter
      }
      
      #---------------------------------
      
      if (i == 1) {
        for (iterations in 1:15){
          
          #------------------------------------------
          
          #----------------------------------------------------------------------------------------------------------------------
          # (A) Econometrically estimated parameters
          # (B) Directly calibrated parameters using (i) data, (ii) previous studies or (iii) a reasonable range of values
          # (C) Parameters that have been indirectly calibrated such that the model (i) matches the initial values obtained from the data or (ii) generates the baseline scenario 
          #----------------------------------------------------------------------------------------------------------------------
          
          #Auxiliary parameters for the simulation of the model
          cr_rationing_dummy<-1#auxiliary parameter
          damage_dummy<-1 #auxiliary parameter
          stagnation_dummy<-1 #auxiliary parameter
          lambda_is_optimal<-0 #auxiliary parameter
          random_dummy<-0 #auxiliary parameter
          beta_is_endogenous_different<-1 #auxiliary parameter
          cr_adjust<-0.015*cr_rationing_dummy #auxiliary parameter
          dam_adjust<-0.0009*damage_dummy #auxiliary parameter
          stag_adjust<-2*stagnation_dummy #auxiliary parameter
          #-------------
          g_change<-0  #auxiliary parameter
          h_is_optimal<-0 #auxiliary parameter
          
          #3.1.1 Matter, waste and recycling
          haz<-0.04 #(Bi) 
          con_M<-0.0015#0.0005 #(Biii)
          xi<-(g_baseline*(DEM[i]-mu[i]*delta[i]*(K[i]/(1+g_baseline))))/(CO_PRI[i]*mu[i]-DEM[i]+mu[i]*delta[i]*(K[i]/(1+g_baseline))) #ensures that the growth rate of DC is equal to g_baseline; (Cii)
          
          #3.1.2 Energy
          con_E<-0.003 #(Biii)
          
          #3.1.3 Emissions and climate change
          lr<-1-(1-0.115)^(1/5) #0.115 is the value taken from the DICE-2016R model (Nordhaus, 2016); 5 is his time-step; (Bii)
          CO2_AT_PRE<-car*588 #GtCO2; (Bii)
          CO2_LO_PRE<-car*1720 #GtCO2; (Bii)
          phi_12<-0.024 #0.12 is the value taken from the DICE-2016R model (Nordhaus, 2016); 5 is their time-step; (Bii)
          phi_23<-0.001344 #0.007 is the value taken from the DICE-2016R model (Nordhaus, 2016); 5 is their time-step; (Bii)
          phi_11<-1-phi_12 #(Bii)
          phi_21<-phi_12*(CO2_AT_PRE/ CO2_UP_PRE) #(Bii)
          phi_22<-1-phi_21-phi_23 #(Bii)
          phi_32<-phi_23*(CO2_UP_PRE/ CO2_LO_PRE) #(Bii)
          phi_33<-1-phi_32 #(Bii)
          F_2CO2<-3.6813 #W/m^2 #(Bii)
          fex<-(1-0.5)/85 #W/m^2; in DICE-2016R model (Nordhaus, 2016) 1 is the value of exogenous forcing in 2100 and 0.5 is the value of exogenous forcing in 2015; 85 are the number of years between 2015 and 2100; (Bii)
          t_2<-0.017688 #0.088 is the value taken from the DICE-2016R model (Nordhaus, 2016); 5 is his time-step; (Bii)
          t_3<-0.005275 #0.025 is the value taken from the DICE-2016R model (Nordhaus, 2016); 5 is his time-step; (Bii)
          t_1_DICE<-0.020301  #0.1005 is the value taken from the DICE-2016R model (Nordhaus, 2016); 5 is his time-step; (Bii)
          C_eff<-(Forc[i]-(F_2CO2/S)*T_AT[i])/((t_1_DICE*(277777.7/8760))*(Forc[i]-(F_2CO2[i]/S)*T_AT[i]-t_2*(T_AT[i]-T_LO[i]))) #;(Bii)
          t_1<- (Forc[i]-(F_2CO2/S)*T_AT[i])/((C_eff*(277777.7/8760))*(Forc[i]-(F_2CO2[i]/S)*T_AT[i]-t_2*(T_AT[i]-T_LO[i]))) # C_eff is the effective heat capacity and is measured in GJm^-2K^-1; the ratio 277777.7/8760 is used to transform GJ into W; (Bii)
          
          
          
          #3.1.4 Ecological efficiency and technology
          zeta_1<-0.0004 #(Cii)
          g_omega_initial<- -0.0033 #auxiliary parameter; (Cii)
          mu_max<-1.5 #(Biii)
          mu_min<-0.3 #(Biii)
          mu_rat<-0.9 #auxiliary parameter
          mu_2050<-mu_rat*mu[i] #auxiliary parameter; (Cii)
          rho_max<-0.8 #(Biii)
          rho_rat<-1.4 #auxiliary parameter
          rho_2050<-rho_rat*rho[i] #auxiliary parameter; (Cii)
          epsilon_max<-12 #(Biii)
          epsilon_min<-2 #(Biii)
          epsilon_rat<-0.7 #auxiliary parameter; (Cii)
          epsilon_2050<-epsilon_rat*epsilon[i] #auxiliary parameter
          theta_2050<-0.25 #auxiliary parameter
          KG_KB_2049<-0.0564#auxiliary parameter
          pi_2<-(log((mu[i]-mu_min)/(mu_max-mu[i]))-log((mu_2050-mu_min)/(mu_max-mu_2050)))/(KG_KB_2049-1*(KG[i])/(KB[i])) #(Cii)
          pi_1<-((mu[i]-mu_min)/(mu_max-mu[i]))*exp(pi_2*1*(KG[i])/(KB[i])) #(Cii)
          pi_4<-(log(rho_max-rho[i])-log(rho_max-rho_2050)-log(rho[i])+log(rho_2050))/(KG_KB_2049-1*(KG[i])/(KB[i])) #(Cii)
          pi_3<-((rho_max-rho[i])*exp(pi_4*1*(KG[i])/(KB[i])))/rho[i] #(Cii)
          pi_6<-(log((epsilon[i]-epsilon_min)/(epsilon_max-epsilon[i]))-log((epsilon_2050-epsilon_min)/(epsilon_max-epsilon_2050)))/(KG_KB_2049-1*(KG[i])/(KB[i])) #(Cii)
          pi_5<-((epsilon[i]-epsilon_min)/(epsilon_max-epsilon[i]))*exp(pi_6*1*(KG[i])/(KB[i])) #(Cii)
          pi_8<-(log(1-theta[i])-log(1-theta_2050)-log(theta[i])+log(theta_2050))/(KG_KB_2049-1*(KG[i])/(KB[i]))
          pi_7<-((1-theta[i])*exp(pi_8*1*(KG[i])/(KB[i])))/theta[i] #(Cii)
          
          #3.2.1 Output determination
          eta_1<-0 #(Bii)
          eta_2<-0.00284 #(Bii)
          eta_3<-0.0000175#0.000005 (Bii)
          ad_K<-0.8 #(Biii)
          ad_LF<-0.8 #(Biii)
          ad_P<-0.8 #(Biii)
          p<-0.1 #(Biii)
          
          #3.2.2 Firms
          alpha_00<-(g_baseline+cr_adjust+dam_adjust+delta[1])*2 #stabilises I/K; (Cii)
          alpha_1_dI_du_max<-0.12#should be higher than the econometrically estimated coefficient; auxiliary parameter
          alpha_1<-(alpha_1_dI_du_max*4)/(alpha_00+2*delta[1]) #(A)
          alpha_2_dI_dr_max<-0.15#should be higher than the econometrically estimated coefficient; auxiliary parameter
          alpha_2<-(alpha_2_dI_dr_max*4)/(alpha_00+2*delta[1]) #(A)
          alpha_31_dI_dur_max<-0.001#should be higher than the econometrically estimated coefficient; auxiliary parameter
          alpha_31<-(alpha_31_dI_dur_max*4)/(alpha_00+2*delta[1]) #(A)
          alpha_32<-0.5 #(Biii)
          alpha_41<-0.1 #(Biii)
          alpha_42<-0.99 #(Biii)
          alpha_51<-0.1 #(Biii)
          alpha_52<-0.99 #(Biii)
          delta_0<-0.048 #(Bi) 0.04
          K_Y_ratio<-(0.23*(1+g_baseline))/(g_baseline+delta_0) #auxiliary parameter; (Bi) 3
          s_W<-0.54 #(Bi) 0.52
          hours<-1900 #auxiliary parameter; (Bi) 1850
          beta_1<-0.2#0.02 #(Cii)
          tau_F<-0.15 #(Biii)
          x_11<-0.25 #(Biii)
          x_10<-x_1[i]+x_11*yield_C[i]  #(Ci)
          x_21<-0.25 #(Biii)
          x_20[i]<-x_2[i]+x_21*yield_G[i] #(Ci)
          coupon_C[i]<-yield_C[i]*p_C[i] #(Ci)
          coupon_G[i]<-yield_G[i]*p_G[i] #(Ci)
          p_C_bar<-100 #(Biii)
          p_G_bar<-100 #(Biii)
          g_beta_initial<-0.0003 #auxiliary parameter; (Cii)
          zeta_2<-0.02 #(Cii)
          g_RC_initial<-0.01 #auxiliary parameter; (Cii)
          zeta_3<-0.03 #(Cii)
          beta_initial<-IG_PRI_D[i]/I_PRI_D[i] #auxiliary parameter; (Ci)
          beta_initial_S1<-IG_PRI_D_1[i]/I_PRI_D_1[i] #auxiliary parameter; (Ci)
          beta_initial_S2<-IG_PRI_D_2[i]/I_PRI_D_2[i] #auxiliary parameter; (Ci)
          beta_initial_S3<-IG_PRI_D_3[i]/I_PRI_D_3[i] #auxiliary parameter; (Ci)
          beta_initial_S4<-IG_PRI_D_4[i]/I_PRI_D_4[i] #auxiliary parameter; (Ci)
          zeta_4<-0.0152 #(Cii)
          sigma_0_initial<- -0.01882*(1/(1-zeta_4)) #auxiliary parameter; (Cii) 
          sigma_1<-0.0095 #(Cii)
          sigma_2<-0.92  #econometrically estimated; (A)  
          g_x_20[i]<-0.04
          zeta_5<-0.2 #(Cii)
          
          #3.2.3 Households 
          c_2<-0.048 #econometrically estimated; (A)
          pr<-0.99 #(Biii)
          lambda_12<- -0.01 #(Biii)
          lambda_13<- -0.01 #(Biii)
          lambda_14<- -0.01 #(Biii)
          lambda_15<- -0.01 #(Biii)
          lambda_23<- -0.01 #(Biii)
          lambda_24<- -0.01 #(Biii)
          lambda_25<- -0.01 #(Biii)
          lambda_34<- -0.01 #(Biii)
          lambda_35<- -0.01 #(Biii)
          portfolio_dam<-0.2 #(Biii)
          lambda_10prime<- 0.5*portfolio_dam #(Biii)
          lambda_20prime<- -1*portfolio_dam #(Biii)
          lambda_30prime<- 0*portfolio_dam #(Biii)
          lambda_40prime<- -lambda_10prime-lambda_20prime-lambda_30prime #(Biii)
          lambda_21<- lambda_12 #(Biii)
          lambda_41<- lambda_14 #(Biii)
          lambda_42<- lambda_24 #(Biii)
          lambda_43<- lambda_34 #(Biii)
          lambda_31<- lambda_13 #(Biii)
          lambda_32<- lambda_23 #(Biii)
          lambda_11<- -lambda_21- lambda_31-lambda_41 #(Biii)
          lambda_22<- -lambda_12-lambda_32-lambda_42 #(Biii)
          lambda_33<- -lambda_13-lambda_23-lambda_43 #(Biii)
          lambda_44<- -lambda_14-lambda_24-lambda_34 #(Biii)
          lambda_45<- -lambda_15-lambda_25-lambda_35 #(Biii)
          int_A<-0.03 #(Bi) 0.02
          int_D<-0.025 #(Bi) 0.015
          int_S<-0.025 #(Bi) 0.015
          zeta_6<-0.0265 #(Cii)
          zeta_7<-0.0003 #(Cii)
          lf_2<-0.001 #(Biii)
          lf_1[i]<-LF[i]/(POP[i]*(1-(1-ad_LF)*D_TF[i]))+lf_2*hazratio[i]# (Ci)
          PORT_BCH[i]<-B_CH[i]/ (V_HF[i]/(1+g_baseline)) #auxiliary parameter; (Ci)
          PORT_BGH[i]<-B_GH[i]/(V_HF[i]/(1+g_baseline)) #auxiliary parameter; (Ci)
          PORT_SECH[i]<-SEC_H[i]/(V_HF[i]/(1+g_baseline)) #auxiliary parameter; (Ci)
          PORT_D[i]<-1- PORT_BCH[i]-PORT_BGH[i]- PORT_SECH[i]  #auxiliary parameter; (Ci)
          lambda_10<-(SEC_H[i]/(V_HF[i]/(1+g_baseline)))-lambda_10prime*D_T[i]-lambda_11*int_S-lambda_12*yield_C[i]-lambda_13*yield_G[i]-lambda_14*int_D-lambda_15*(Y_H[i]/V_HF[i]) #(Ci)
          lambda_20<-(B_CH[i]/(V_HF[i]/(1+g_baseline)))-lambda_20prime*D_T[i]-lambda_21*int_S-lambda_22*yield_C[i]-lambda_23*yield_G[i]-lambda_24*int_D-lambda_25*(Y_H[i]/V_HF[i]) #(Ci)
          lambda_30[i]<-(B_GH[i]/(V_HF[i]/(1+g_baseline)))-lambda_30prime*D_T[i]-lambda_31*int_S-lambda_32*yield_C[i]-lambda_33*yield_G[i]-lambda_34*int_D-lambda_35*(Y_H[i]/V_HF[i]) #(Ci)
          lambda_40[i]<-1- lambda_10- lambda_20- lambda_30[i]#(Ci) 
          g_lambda_30[i]<-g_x_20[i]
          
          #3.2.4 Banks
          rep<-0.1 #(Biii)
          h_1<-0.2 #(Bi) 
          def_max<-0.2 #(Biii)
          def_0<-(def_max/def[i])-1 #(Ci)
          def_2_ddef_dilliq_max<-0.25 #auxiliary parameter 
          def_2<-(def_2_ddef_dilliq_max)*((1+def_0)^2)/(def_max*def_0) #(Biii)
          def_1<-def_2*illiq[i] #(Ci)
          CR_max<-0.5 #(Biii)
          CAR_min<-0.08#(Biii)
          lev_B_max<-1/0.03#(Biii)
          CR_initial<-0.2 #auxiliary parameter; (Biii)
          h_2<-SEC_B[i]/D[i] #(Ci)
          w_S<-0 #(Biii)
          
          sh_LG[i]<-LG[i]/L[i]
          sh_LC_1[i]<-LC_1[i]/L[i]
          sh_LC_2[i]<-LC_2[i]/L[i]
          sh_LC_3[i]<-LC_3[i]/L[i]
          sh_LC_4[i]<-1-sh_LG[i]-sh_LC_1[i]-sh_LC_2[i]-sh_LC_3[i]
          
          spr_initial<- 0.05 # 0.07-int_A
          spr_0<-spr_initial+spr_1*(CAR[i]-CAR_min)
          
          int_G[i]<-spr_G[i]+int_A
          int_C_1[i]<-spr_C_1[i]+int_A
          int_C_2[i]<-spr_C_2[i]+int_A
          int_C_3[i]<-spr_C_3[i]+int_A
          int_C_4[i]<-spr_C_4[i]+int_A
          spr[i]<-spr_0-spr_1*(CAR[i]-CAR_min)
          spr_G[i]<-(1+spr_2*(w_G-w_LT[i]))*spr[i]
          spr_C_1[i]<-(1+spr_2*(w_C_1-w_LT[i]))*spr[i]
          spr_C_2[i]<- (1+spr_2*(w_C_2-w_LT[i]))*spr[i]
          spr_C_3[i]<- (1+spr_2*(w_C_3-w_LT[i]))*spr[i]
          spr_C_4[i]<-(spr[i]-sh_LG[i]*spr_G[i]-sh_LC_1[i]*spr_C_1[i]-sh_LC_2[i]*spr_C_2[i]-sh_LC_3[i]*spr_C_3[i])/sh_LC_4[i]
          
          #3.2.5 Government
          gov_C<-0.17 #(Bi) 0.164
          gov_IC<- IC_GOV[i]/(Y[i]/(1+g_baseline))
          
          #Parameters/endogenous variables estimated such that the model achieves a steady state when there are no damages
          
          c_1<-((Y[i]*g_baseline)/K_PRI[i]-(c_2*V_HF[i])/K_PRI[i]-g_baseline-delta[i]-(Y[i]*gov_C)/K_PRI[i] -(Y[i]*gov_IC)/K_PRI[i] -(Y[i]*gov_IG)/K_PRI[i]+Y[i]/K_PRI[i])/(Y_H[i]/K_PRI[i]) #stabilises Y/K; (Cii)
          
          s_F<-(I_PRI_D[i]-CR_C[i]*IC_PRI_D[i]-CR_G[i]*IG_PRI_D[i]-delta[i]*(K_PRI[i]-CR_C[i]*KC_PRI[i]-CR_G[i]*KG_PRI[i])/(1+g_baseline)-CR_C[i]*rep*LC[i]/(1+g_baseline)-CR_G[i]*rep*LG[i]/(1+g_baseline)-def[i]*L[i]/(1+g_baseline)-(1-CR_C[i])*x_1[i]*IC_PRI_D[i]-(1-CR_G[i])*x_2[i]*IG_PRI_D[i]-L[i]*g_baseline/(1+g_baseline))/(TP[i]*(1-CR_C[i]*(1-beta[i])-CR_G[i]*beta[i])/(1+g_baseline)) #stabilises L/K; (Cii)
          
          alpha_01<-alpha_1*u[i]+alpha_2*r[i]-alpha_31*ur[i]^(-alpha_32)-alpha_41*(1-ue[i])^(-alpha_42)-alpha_51*(1-um[i])^(-alpha_52) #stabilises I/K; (Cii)
          
          tau_H<-(gov_C+gov_IC+gov_IG-(tau_F*TP_G[i])/Y[i] -(tau_C[i]*EMIS_IN[i])/Y[i]+(int_S*SEC[i])/Y[i]-(coupon_C[i]*b_CCB[i]+coupon_G[i]*b_GCB[i]+int_A*A[i]+int_S*SEC_CB[i])/Y[i]+SUB[i]*(1+g_baseline)/Y[i]-(SEC[i]*g_baseline)/Y[i])/(Y_HG[i]/Y[i]) #stabilises SEC/Y; (Cii)
          
          x_1[i]<-(B_C[i]*g_bC[i])/(IC_PRI_D[i]*(1+g_bC[i])) #stabilises the growth rate of b_C; (Cii)
          x_2[i]<-(B_G[i]*g_bG[i])/(IG_PRI_D[i]*(1+g_bG[i])) #stabilises the growth rate of b_G; (Cii) 
          
          s_B<-(def[i]*L[i]+CAP[i]*g_baseline)/BP[i] #stabilises CAP/K; (Cii)
          
          g_pC[i]<- 0.0 #(Cii)
          g_pG[i]<-0.0 #(Cii)
          V_CB[i]<-0.0 #stabilises V_CB/K; (Cii)
          
          g_bC[i]<-(g_baseline-g_pC[i])/(1+ g_pC[i]) #stabilises the growth rate of B_C; (Cii)
          g_bG[i]<-(g_baseline-g_pG[i])/(1+ g_pG[i]) #stabilises the growth rate of B_G; (Cii)
          
          I_PRI_D[i]<-(g_baseline+delta[i]+cr_adjust*cr_rationing_dummy)*(K_PRI[i]/(1+g_baseline)) #trillion US$
          
          I_PRI[i]<-prop*0.23*Y[i]#(g_baseline+delta[i])*(K_PRI[i]/(1+g_baseline))#trillion US$
          
          KG_GOV[i]<- gov_IG*Y[i]/(delta[i]+g_baseline) #trillion US$#stabilises KG_GOV/Y; (Cii)
          
          KC_GOV[i]<-K_GOV[i]-KG_GOV[i] #KC_GOV[i]<- gov_IC*Y[i]/(delta[i]+g_baseline) #trillion US$ #stabilises KC_GOV/Y; (Cii)
          
          
          #--------------------------------------------------------------------------------------------------------------
          #INITIAL VALUES FOR ENDOGENOUS VARIABLES 
          #--------------------------------------------------------------------------------------------------------------
          
          #2.1.1 Matter, waste and recycling
          MY[i]<- 52.11#Gt
          REC[i]<-4.57#Gt
          M[i]<- MY[i]-REC[i]#Gt 
          DEM[i]<-17 #Gt
          SES[i]<-mu[i]*(K[i]+DC[i]) #Gt
          W[i]<-DEM[i]-REC[i]#Gt
          CEN[i]<-(1/car)*EMIS_IN[i] #Gt
          O2[i]<-EMIS_IN[i]-CEN[i] #Gt
          HWS[i]<-14.09 #Gt
          hazratio[i]<-HWS[i]/POP[i]
          REV_M[i]<-M[i]/dep_M[i] #Gt
          CON_M[i]<-con_M*RES_M[i] #Gt
          RES_M[i]<-(35/0.54)*REV_M[i] #Gt
          dep_M[i]<-0.02#0.008
          
          #2.1.2 Energy
          E[i]<-580 # EJ 
          ER[i]<-theta[i]*E[i] #EJ
          EN[i]<-E[i]-ER[i] #EJ
          ED[i]<-ER[i]+EN[i] #EJ
          REV_E[i]<-39530 #EJ38000
          CON_E[i]<-con_E*RES_E[i] #Gt
          RES_E[i]<- 550690 # EJ  543000
          dep_E[i]<-EN[i]/REV_E[i]
          
          #2.1.3 Emissions and climate change 
          EMIS_IN[i]<-EMIS_IN_initial# GtCO2
          EMIS_L[i]<-2.54 # GtCO2
          EMIS[i]<-EMIS_IN[i]+EMIS_L[i] # GtCO2
          CO2_AT[i]<-3163.8 #GtCO2 
          CO2_UP[i]<-car*462 #GtCO2 
          CO2_LO[i]<-car*1740 #GtCO2
          Forc[i]<-F_2CO2*log2(CO2_AT[i]/CO2_AT_PRE)+F_EX[i] #W/m^2 
          F_EX[i]<-0.51 #W/m^2
          T_AT[i]<-1.1 #0C 
          T_LO[i]<-0.0112 #0C
          
          #2.1.4 Ecological efficiency and technology
          omega[i]<-EMIS_IN[i]/EN[i] #GtCO2/EJ
          g_omega[i]<-g_omega_initial
          mu[i]<- MY[i]/(Y[i]-CO_GOV[i]) #Gt/trillion $ or kg/$
          rho[i]<- REC[i]/DEM[i]  
          epsilon[i]<-E[i]/Y[i] #EJ/trillion $
          theta[i]<-0.14
          
          #2.2.1 Output determination
          Y_star_M[i]<-(REV_M[i]+REC[i])/mu[i] #trillion US$
          Y_star_E[i]<-REV_E[i]/((1-theta[i])*epsilon[i]) #trillion US$
          Y_star_K[i]<-v[i]*K_PRI[i] #trillion US$
          Y_star_N[i]<-lambda[i]*LF[i]*h[i] #trillion US$
          Y_star[i]<-min(min(Y_star_M[i], Y_star_E[i]),min(Y_star_N[i], Y_star_K[i])) #trillion US$
          Y[i]<-Y_initial#trillion US$
          um[i]<- (Y[i]-CO_GOV[i])/Y_star_M[i]
          ue[i]<-Y[i]/Y_star_E[i] 
          u[i]<-0.72
          re[i]<-1- ur[i] 
          D_T[i]<-(1-(1/(1+eta_1*T_AT[i]+eta_2*T_AT[i]^2+eta_3*T_AT[i]^6.754)))*damage_dummy
          D_TP[i]<-p*D_T[i]
          D_TF[i]<-1-(1-D_T[i])/(1-D_TP[i])
          
          #2.2.2 Firms
          TP_G[i]<-Y[i]-wage[i]*N[i]-int_C_1[i]*LC_1[i]/(1+g_baseline)-int_C_2[i]*LC_2[i]/(1+g_baseline)-int_C_3[i]*LC_3[i]/(1+g_baseline)-int_C_4[i]*LC_4[i]/(1+g_baseline)-int_G[i]*(LG_1[i]/(1+g_baseline)+LG_2[i]/(1+g_baseline)+LG_3[i]/(1+g_baseline)+LG_4[i]/(1+g_baseline))-delta[i]*(K_PRI[i]/(1+g_baseline))-coupon_C[i]*(b_C[i]/(1+g_bC[i]))-coupon_G[i]*(b_G[i]/(1+g_bG[i])) +SUB[i]    #trillion US$
          TP[i]<-TP_G[i]-TAX_F[i]-TAX_C[i]  #trillion US$
          RP[i]<-s_F*(TP[i]/(1+g_baseline)) #trillion US$
          DP[i]<-TP[i]-RP[i] #trillion US$
          r[i]<-TP[i]/K_PRI[i]
          random1[i]<-0
          I_PRI_D_1[i]<-sh_GVA_1*I_PRI_D[i] #trillion US$
          I_PRI_D_2[i]<-sh_GVA_2*I_PRI_D[i] #trillion US$
          I_PRI_D_3[i]<-sh_GVA_3*I_PRI_D[i] #trillion US$
          I_PRI_D_4[i]<-sh_GVA_4*I_PRI_D[i] #trillion US$
          sh_GREEN_1<-0.3/IG_initial+sh_GVA_1*(0.3/IG_initial)
          sh_GREEN_2<-sh_GVA_2*(0.3/IG_initial)
          sh_GREEN_3<-0.1/IG_initial+sh_GVA_3*(0.3/IG_initial)
          sh_GREEN_4<-sh_GVA_4*(0.3/IG_initial)
          IG_PRI_D_1[i]<-(1+CR_G[i]*cr_rationing_dummy)*IG_PRI_1[i] #trillion US$
          IG_PRI_D_2[i]<- (1+CR_G[i]*cr_rationing_dummy)*IG_PRI_2[i]#trillion US$
          IG_PRI_D_3[i]<- (1+CR_G[i]*cr_rationing_dummy)*IG_PRI_3[i]#trillion US$
          IG_PRI_D_4[i]<- (1+CR_G[i]*cr_rationing_dummy)*IG_PRI_4[i] #trillion US$
          IC_PRI_D_1[i]<-I_PRI_D_1[i]-IG_PRI_D_1[i] #trillion US$
          IC_PRI_D_2[i]<-I_PRI_D_2[i]-IG_PRI_D_2[i] #trillion US$
          IC_PRI_D_3[i]<-I_PRI_D_3[i]-IG_PRI_D_3[i] #trillion US$
          IC_PRI_D_4[i]<-I_PRI_D_4[i]-IG_PRI_D_4[i] #trillion US$
          beta_0_S1[i]<-beta_S1[i]+beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_1*tau_C[i]*EMIS_IN[i]/IC_PRI_1[i])+beta_2*(sh_L[i]*(int_G[i]-int_C_1[i])+(1-sh_L[i])*(yield_G[i]-yield_C[i]))
          beta_0_S2[i]<- beta_S2[i]+beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_2*tau_C[i]*EMIS_IN[i]/IC_PRI_2[i])+beta_2*(sh_L[i]*(int_G[i]-int_C_2[i])+(1-sh_L[i])*(yield_G[i]-yield_C[i]))
          beta_0_S3[i]<-beta_S3[i]+beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_3*tau_C[i]*EMIS_IN[i]/IC_PRI_3[i])+beta_2*(sh_L[i]*(int_G[i]-int_C_3[i])+(1-sh_L[i])*(yield_G[i]-yield_C[i]))
          beta_0_S4[i]<-beta_S4[i]+beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_4*tau_C[i]*EMIS_IN[i]/IC_PRI_4[i])+beta_2*(sh_L[i]*(int_G[i]-int_C_4[i])+(1-sh_L[i])*(yield_G[i]-yield_C[i]))
          beta_S1[i]<-beta_initial*(1-beta_is_endogenous_different)+beta_initial_S1* beta_is_endogenous_different
          beta_S2[i]<-beta_initial*(1-beta_is_endogenous_different)+beta_initial_S2* beta_is_endogenous_different
          beta_S3[i]<-beta_initial*(1-beta_is_endogenous_different)+beta_initial_S3* beta_is_endogenous_different
          beta_S4[i]<-beta_initial*(1-beta_is_endogenous_different)+beta_initial_S4* beta_is_endogenous_different
          g_beta_0[i]<-g_beta_initial 
          RC[i]<-1.05
          g_RC[i]<- g_RC_initial
          NLG_D_1[i]<-IG_PRI_D_1[i]-sh_GVA_1*beta_S1[i]*RP[i]+rep*LG_1[i]/(1+g_baseline)-delta[i]*KG_PRI_1[i]/(1+g_baseline)-sh_GVA_1*p_G_bar*(b_G[i]-b_G[i]/(1+g_bG[i])) #trillion US$
          NLG_D_2[i]<- IG_PRI_D_2[i]-sh_GVA_2*beta_S2[i]*RP[i]+rep*LG_2[i]/(1+g_baseline)-delta[i]*KG_PRI_2[i]/(1+g_baseline)-sh_GVA_2*p_G_bar*(b_G[i]-b_G[i]/(1+g_bG[i])) #trillion US$
          NLG_D_3[i]<- IG_PRI_D_3[i]-sh_GVA_3*beta_S3[i]*RP[i]+rep*LG_3[i]/(1+g_baseline)-delta[i]*KG_PRI_3[i]/(1+g_baseline)-sh_GVA_3*p_G_bar*(b_G[i]-b_G[i]/(1+g_bG[i])) #trillion US$
          NLG_D_4[i]<- IG_PRI_D_4[i]-sh_GVA_4*beta_S4[i]*RP[i]+rep*LG_4[i]/(1+g_baseline)-delta[i]*KG_PRI_4[i]/(1+g_baseline)-sh_GVA_4*p_G_bar*(b_G[i]-b_G[i]/(1+g_bG[i])) #trillion US$
          NLC_D_1[i]<-IC_PRI_D_1[i]-sh_GVA_1*(1-beta_S1[i])*RP[i]+rep*LC_1[i]/(1+g_baseline)-delta[i]*KC_PRI_1[i]/(1+g_baseline)-sh_GVA_1*p_C_bar*(b_C[i]-b_C[i]/(1+g_bC[i]))   #trillion US$
          NLC_D_2[i]<-IC_PRI_D_2[i]-sh_GVA_2*(1-beta_S2[i])*RP[i]+rep*LC_2[i]/(1+g_baseline)-delta[i]*KC_PRI_2[i]/(1+g_baseline)-sh_GVA_2*p_C_bar*(b_C[i]-b_C[i]/(1+g_bC[i]))   #trillion US$
          NLC_D_3[i]<-IC_PRI_D_3[i]-sh_GVA_3*(1-beta_S3[i])*RP[i]+rep*LC_3[i]/(1+g_baseline)-delta[i]*KC_PRI_3[i]/(1+g_baseline)-sh_GVA_3*p_C_bar*(b_C[i]-b_C[i]/(1+g_bC[i]))   #trillion US$
          NLC_D_4[i]<-IC_PRI_D_4[i]-sh_GVA_4*(1-beta_S4[i])*RP[i]+rep*LC_4[i]/(1+g_baseline)-delta[i]*KC_PRI_4[i]/(1+g_baseline)-sh_GVA_4*p_C_bar*(b_C[i]-b_C[i]/(1+g_bC[i]))   #trillion US$
          IG_PRI_1[i]<-sh_GREEN_1*IG_PRI[i] #trillion US$
          IG_PRI_2[i]<-sh_GREEN_2*IG_PRI[i] #trillion US$
          IG_PRI_3[i]<-sh_GREEN_3*IG_PRI[i] #trillion US$
          IG_PRI_4[i]<-sh_GREEN_4*IG_PRI[i] #trillion US$
          IC_PRI_1[i]<-I_PRI_1[i]-IG_PRI_1[i] 
          IC_PRI_2[i]<-I_PRI_2[i]-IG_PRI_2[i] 
          IC_PRI_3[i]<-I_PRI_3[i]-IG_PRI_3[i] 
          IC_PRI_4[i]<-I_PRI_4[i]-IG_PRI_4[i] 
          IG_PRI[i]<- IG_PRI_initial##trillion US$
          IC_PRI[i]<-I_PRI[i]-IG_PRI[i] #trillion US$
          L[i]<-(0.947-B[i]/Y[i])*Y[i] #0.947 is the credit to non-financial corporations/GDP ratio; trillion US$
          kappa[i]<- IG_PRI[i]/I_PRI[i]
          KG_PRI[i]<-kappa[i]*K_PRI[i] #trillion US$
          KG_PRI_1[i]<- sh_GVA_1*KG_PRI[i]*(1-beta_is_endogenous_different)+sh_GREEN_1*KG_PRI[i]* beta_is_endogenous_different #trillion US$
          KG_PRI_2[i]<- sh_GVA_2*KG_PRI[i]*(1-beta_is_endogenous_different)+sh_GREEN_2*KG_PRI[i]* beta_is_endogenous_different #trillion US$
          KG_PRI_3[i]<- sh_GVA_3*KG_PRI[i]*(1-beta_is_endogenous_different)+sh_GREEN_3*KG_PRI[i]* beta_is_endogenous_different #trillion US$
          KG_PRI_4[i]<- sh_GVA_4*KG_PRI[i]*(1-beta_is_endogenous_different)+sh_GREEN_4*KG_PRI[i]* beta_is_endogenous_different #trillion US$
          KC_PRI[i]<-K_PRI[i]-KG_PRI[i] #trillion US$
          KB[i]<-db_PRI_1*KC_PRI_1[i]+db_PRI_2*KC_PRI_2[i]+ db_PRI_3*KC_PRI_3[i]+db_PRI_4*KC_PRI_4[i]+db_GOV*KC_GOV[i] #trillion US$
          KC_PRI_1[i]<-sh_GVA_1*KC_PRI[i] #trillion US$
          KC_PRI_2[i]<-sh_GVA_2*KC_PRI[i] #trillion US$
          KC_PRI_3[i]<-sh_GVA_3*KC_PRI[i] #trillion US$
          KC_PRI_4[i]<-sh_GVA_4*KC_PRI[i] #trillion US$
          K_PRI[i]<- prop*K_Y_ratio*Y[i] #trillion US$ prop*K[i]
          delta[i]<-delta_0+(1-delta_0)*(1-ad_K)*D_TF[i]
          v[i]<-Y[i]/(K_PRI[i]*u[i])
          g_lambda[i]<-sigma_0[i]+sigma_1+sigma_2*g_Y[i]
          sigma_0[i]<-sigma_0_initial
          lambda[i]<-(Y[i]/N[i])/h[i] #trillion US$/(millions of empoyees*annual hours worked per employee)
          wage[i]<-s_W*lambda[i]*h[i] #trillion US$/millions of employees
          N[i]<-re[i]*LF[i] #billion people
          ur[i]<-0.055
          b_C[i]<-B_C[i]/p_C[i]#trillion US$
          b_G[i]<-B_G[i]/p_G[i]#trillion US$
          B[i]<-B_initial #trillion US$
          B_G[i]<-B_G_initial #trillion US$
          B_C[i]<-B_C_initial  #trillion US$
          p_C[i]<- p_C_bar #index
          p_G[i]<- p_C_bar #index
          
          yield_C[i]<-0.05
          yield_G[i]<-0.05
          DL[i]<-def[i]*(L[i]/(1+g_baseline)) #trillion US$
          def[i]<-0.04 
          
          illiq[i]<-((int_C_1[i]+rep)*LC_1[i]/(1+g_baseline)+(int_C_2[i]+rep)*LC_2[i]/(1+g_baseline)+(int_C_3[i]+rep)*LC_3[i]/(1+g_baseline)+(int_C_4[i]+rep)*LC_4[i]/(1+g_baseline)+(int_G[i]+rep)*LG[i]/(1+g_baseline)+coupon_C[i]*b_C[i]/(1+g_bC[i])+coupon_G[i]*b_G[i]/(1+g_bG[i])+wage[i]*N[i]+TAX_F[i]+TAX_C[i]+delta[i]*K_PRI[i]/(1+g_baseline))/(Y[i]+(1-CR_C_1[i])*NLC_D_1[i]+(1-CR_C_2[i])*NLC_D_2[i]+(1-CR_C_3[i])*NLC_D_3[i]+(1-CR_C_4[i])*NLC_D_4[i]+ (1-CR_G[i])*(NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+NLG_D_4[i])+(b_C[i]-b_C[i]/(1+g_bC[i]))*p_C_bar+ (b_G[i]-b_G[i]/(1+g_bG[i]))*p_G_bar) 
          
          dsr[i]<-((int_C_1[i]+rep)*LC_1[i]/(1+g_baseline)+(int_C_2[i]+rep)*LC_2[i]/(1+g_baseline)+(int_C_3[i]+rep)*LC_3[i]/(1+g_baseline)+(int_C_4[i]+rep)*LC_4[i]/(1+g_baseline)+(int_G[i]+rep)*(LG[i]/(1+g_baseline))+coupon_C[i]*(b_C[i]/(1+g_bC[i]))+coupon_G[i]*(b_G[i]/(1+g_bG[i])))/(TP[i]+int_C_1[i]*LC_1[i]/(1+g_baseline)+int_C_2[i]*LC_2[i]/(1+g_baseline)+int_C_3[i]*LC_3[i]/(1+g_baseline)+int_C_4[i]*LC_4[i]/(1+g_baseline)+(int_G[i])*(LG[i]/(1+g_baseline))+coupon_C[i]*(b_C[i]/(1+g_bC[i]))+coupon_G[i]*(b_G[i]/(1+g_bG[i])))
          
          
          #2.2.3 Households 
          Y_HG[i]<-wage[i]*N[i]+DP[i]+BP_D[i]+int_D*(D[i]/(1+g_baseline))+int_S*(SEC_H[i]/(1+g_baseline))+coupon_C[i]*(b_CH[i]/(1+g_bC[i]))+coupon_G[i]*(b_GH[i]/(1+g_bG[i]))  #trillion US$
          Y_H[i]<-Y_HG[i]-TAX_H[i] #trillion US$
          CO_PRI_N[i]<-Y[i]-I_PRI[i]-CO_GOV[i]-I_GOV[i] #trillion US$
          CO_PRI[i]<-CO_PRI_N[i] #trillion US$
          
          V_HF[i]<-D[i]+p_C[i]*b_CH[i]+p_G[i]*b_GH[i]+SEC_H[i]   #trillion US$
          SEC_H[i]<-SEC[i]-SEC_CB[i]-SEC_B[i] #trillion US$
          B_CH[i]<-B_C[i]-B_CCB[i] #trillion US$
          B_GH[i]<-B_G[i]-B_GCB[i] #trillion US$
          D[i]<-70#trillion US$
          b_CH[i]<-B_CH[i]/p_C[i] #trillion US$
          b_GH[i]<-B_GH[i]/p_G[i] #trillion US$
          DC[i]<-((DEM[i]-mu[i]*delta[i]*(K_PRI[i]+K_GOV[i])/(1+g_baseline))/(mu[i]*xi))*(1+g_baseline)  #trillion US$
          LF[i]<-3.45  #billion people  
          POP[i]<-7.55 #billion people 
          g_POP[i]<-0.012 
          
          
          #2.2.4 Banks
          BP[i]<-int_C_1[i]*LC_1[i]/(1+g_baseline)+int_C_2[i]*LC_2[i]/(1+g_baseline) +int_C_3[i]*LC_3[i]/(1+g_baseline)+int_C_4[i]*LC_4[i]/(1+g_baseline)+int_G[i]*(LG_1[i]/(1+g_baseline)+LG_2[i]/(1+g_baseline)+LG_3[i]/(1+g_baseline)+LG_4[i]/(1+g_baseline))+int_S*(SEC_B[i]/(1+g_baseline))-int_D*(D[i]/(1+g_baseline))-int_A*(A[i]/(1+g_baseline)) #trillion US$
          HPM[i]<-h_1*D[i] #trillion US$
          CAP[i]<-(HPM[i]+LG[i]+LC[i]+SEC_B[i])/lev_B[i]
          CAP_before[i]<-CAP[i]
          BP_U[i]<-s_B*(BP[i]/(1+g_baseline)) #trillion US$
          BP_D[i]<-BP[i]-BP_U[i] #trillion US$
          SEC_B[i]<-0.15*SEC[i] #trillion US$0.2*SEC[i]
          A[i]<-HPM[i]+LG[i]+LC[i]+ SEC_B[i]-D[i]-CAP[i]#trillion US$
          A_N[i]<-A[i] #trillion US$
          random2[i]<-0
          LG[i]<- kappa[i]*L[i] #trillion US$ 
          LG_1[i]<-sh_GVA_1*LG[i] #trillion US$
          LG_2[i]<-sh_GVA_2*LG[i] #trillion US$
          LG_3[i]<-sh_GVA_3*LG[i] #trillion US$
          LG_4[i]<-sh_GVA_4*LG[i] #trillion US$
          LC[i]<-L[i]-LG[i] #trillion US$ 
          LC_1[i]<-sh_GVA_1*LC[i] #trillion US$
          LC_2[i]<-sh_GVA_2*LC[i] #trillion US$
          LC_3[i]<-sh_GVA_3*LC[i] #trillion US$
          LC_4[i]<-sh_GVA_4*LC[i] #trillion US$
          lev_B[i]<-1/0.1075 
          BAILOUT[i]<-0 #trillion US$
          BAILOUT_levB[i]<-0 #trillion US$
          BAILOUT_CAR[i]<-0 #trillion US$
          
          r_0<-(CR_max/CR_initial)-1 #(Ci)
          r_2_dCR_ddsr_max<-1.45618715# econometrically estimated coefficient
          r_2<-(r_2_dCR_ddsr_max *((1+r_0)^2))/(CR_max*r_0) #(Biii)
          r_3<-(r_3_dCR_dCAR_max *((1+r_0)^2))/(CR_max*r_0) #(Biii)
          r_1<-r_2*dsr[i]-r_3*(CAR[i]-CAR_min)#(Ci)
          sh_NLG[i]<- 0.03461764 #NLG_D[i]/(NLG_D[i]+NLC_D_1[i]+NLC_D_2[i] +NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_1[i]<- 0.08441604#NLC_D_1[i]/(NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i] +NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_2[i]<- 0.18339914#0NLC_D_2[i]/(NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i] +NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_3[i]<- 0.08334091#NLC_D_3[i]/(NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i] +NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_4[i]<-1-sh_NLG[i]-sh_NLC_1[i]-sh_NLC_2[i]-sh_NLC_3[i]
          w_LT[i]<-sh_LG[i]*w_G+sh_LC_1[i]*w_C_1+sh_LC_2[i]*w_C_2+sh_LC_3[i]*w_C_3+sh_LC_4[i]*w_C_4
          CR_G[i]<- (1+l_1*(w_G-w_LT[i]))*CR[i]
          CR_C_1[i]<-(1+l_1*(w_C_1-w_LT[i]))*CR[i]
          CR_C_2[i]<-(1+l_1*(w_C_2-w_LT[i]))*CR[i]
          CR_C_3[i]<-(1+l_1*(w_C_3-w_LT[i]))*CR[i]
          CR_C_4[i]<-(CR[i]-sh_NLG[i]*CR_G[i]-sh_NLC_1[i]*CR_C_1[i]-sh_NLC_2[i]*CR_C_2[i]-sh_NLC_3[i]*CR_C_3[i])/sh_NLC_4[i]
          
          CR_C[i]<-0.2*cr_rationing_dummy
          CR[i]<-CR_max/(1+r_0*exp(r_1-r_2*dsr[i]+r_3*(CAR[i]-CAR_min)))*cr_rationing_dummy  
          CAR[i]<-CAP[i]/(w_G*LG[i]+w_C_1*LC_1[i]+w_C_2*LC_2[i]+w_C_3*LC_3[i] +w_C_4*LC_4[i]+w_S*SEC_B[i]) 
          
          #2.2.5 Government
          GB[i]<- -CO_GOV[i]+TAX[i]-int_S*SEC[i]/(1+g_baseline)+CBP[i]-BAILOUT[i]-SUB[i] #trillion US$
          SEC[i]<-0.831*Y[i] #trillion US$, 83.09 general government debt to GDP
          IG_GOV[i]<-IG_GOV_initial#trillion US$
          IC_GOV[i]<-(1-prop)*(I_PRI[i]/prop)-IG_GOV[i] #trillion US$ #I_GOV[i]-IG_GOV[i]
          I_GOV[i]<- (1-prop)*0.23*Y[i] #I_GOV[i]<- (1-prop)*(I_PRI[i]/prop) #I_GOV[i]<- (1-prop)*0.23*Y[i] #trillion US$
          K_GOV[i]<-(1-prop)*K_Y_ratio*Y[i]#K_GOV[i]<-KC_GOV[i]+KG_GOV[i] #trillion US$ K_GOV[i]<-K[i]-K_PRI[i]
          K[i]<-K_Y_ratio*Y[i]#K[i]<-K_PRI[i]+K_GOV[i] #trillion US$ 
          KG[i]<-KG_PRI[i]+KG_GOV[i] #trillion US$
          KC[i]<-KC_PRI[i]+KC_GOV[i] #trillion US$
          CO_GOV[i]<-gov_C*(Y[i]/(1+g_baseline)) #trillion US$
          SUB[i]<- SUB_initial# trillion US$ 
          TAX_H[i]<-tau_H*(Y_HG[i]/(1+g_baseline))   #trillion US$
          TAX_F[i]<-tau_F*(TP_G[i]/(1+g_baseline)) #trillion US$
          TAX_C[i]<-TAX_C_initial#trillion US$ 
          tau_C[i]<-tau_C_initial  
          TAX[i]<-TAX_H[i]+TAX_F[i] +TAX_C[i]  #trillion US$
          
          #2.2.6 Central bank
          CBP[i]<-coupon_C[i]*(b_CCB[i]/(1+g_bC[i])) +coupon_G[i]*(b_GCB[i]/(1+g_bG[i]))+int_A*(A[i]/(1+g_baseline))+ int_S*(SEC_CB[i]/(1+g_baseline))    #trillion US$
          B_GCB[i]<-B_GCB_initial #trillion US$
          B_CCB[i]<-B_CCB_initial #trillion US$
          b_CCB[i]<-B_CCB[i]/p_C[i] #trillion US$
          b_GCB[i]<-B_GCB[i]/p_G[i] #trillion US$
          SEC_CB[i]<-HPM[i]+V_CB[i]-p_C[i]*b_CCB[i]-p_G[i]*b_GCB[i]-A[i] #trillion US$
          
          #Auxiliary variables
          g_Y[i]<- 0.0314
          g_K[i]<-g_baseline
          ur_per[i]<-ur[i]*100
          g_Y_per[i]<-g_Y[i]*100
          theta_per[i]<-theta[i]*100
          greenI[i]<-IG_PRI[i]/I_PRI[i]
          r_total[i]<-(TP[i]/K_PRI[i]) *100
          I_Y_ratio[i]<-I_PRI[i]/Y[i]
          C_Y_ratio[i]<-CO_PRI[i]/Y[i] 
          C_K_ratio[i]<-CO_PRI[i]/K_PRI[i]
          Y_K_ratio[i]<-Y[i]/K_PRI[i]
          Y_H_Y_ratio[i]<-Y_H[i]/Y[i]
          Y_H_K_ratio[i]<-Y_H[i]/K_PRI[i]
          A_K_ratio[i]<-A[i]/K_PRI[i]
          h[i]<-hours
          h_optimal[i]<-h[i]
          Wbill[i]<-wage[i]*N[i]
          Interest[i]<- int_C_1[i]*LC_1[i]/(1+g_baseline)+int_C_2[i]*LC_2[i]/(1+g_baseline)+int_C_3[i]*LC_3[i]/(1+g_baseline)+int_C_4[i]*LC_4[i]/(1+g_baseline)+int_G[i]*LG[i]/(1+g_baseline)
          Depreciation[i]<-delta[i]*K_PRI[i]
          SEC_Y[i]<-SEC[i]/Y[i]
          SEC_Y_per[i]<-SEC[i]/Y[i]*100
          fiscal_balance_per[i]<-fiscal_balance[i]*100
          CO2_ATppm[i]<-CO2_AT[i]/7.81071
          L_K[i]<-L[i]/K_PRI[i]
          sh_L[i]<-L[i]/(L[i]+B[i])
          B_C_issue[i]<-x_1[i]*IC_PRI_D[i] #2 is the actual bond issuance
          B_G_issue[i]<-x_2[i]*IG_PRI_D[i] #0.2 is the actual bond issuance
          IG_cum[i]<-IG_PRI[i]+IG_GOV[i]
          IC_cum[i]<-IC_PRI[i]+IC_GOV[i]
          D_K_ratio[i]<-D[i]/K_PRI[i]
          HPM_K_ratio[i]<-HPM[i]/K_PRI[i]
          fiscal_balance[i]<-(TAX[i]-CO_GOV[i]-IC_GOV[i]-IG_GOV[i]-SUB[i]-BAILOUT[i]-int_S*SEC[i]/(1+g_baseline))/Y[i]
          I_K_ratio[i]<-I_PRI[i]/(K_PRI[i]/(1+g_baseline))
          ID_K_ratio[i]<-I_PRI_D[i]/(K_PRI[i]/(1+g_baseline))
          Y_POP_ratio[i]<-(Y[i]/POP[i])
          W_POP_ratio[i]<-W[i]/POP[i]
          E_N_ratio[i]<-E[i]/N[i]
          Y_E_ratio[i]<-Y[i]/E[i]
          lambda_perworker[i]<-lambda[i]*h[i]
          lf[i]<-LF[i]/POP[i]
          haz_flow[i]<-haz*W[i]
          Y_HD[i]<-wage[i]*N[i]+TAX_H[i]+DP[i]+BP_D[i]+int_D*(D[i]/(1+g_baseline))+int_S*(SEC_H[i]/(1+g_baseline))+coupon_C[i]*(b_CH[i]/(1+g_bC[i]))+coupon_G[i]*(b_GH[i]/(1+g_bG[i]))- xi*DC[i]/(1+g_baseline)   #trillion US$
          V_H[i]<-DC[i]+D[i]+p_C_bar*b_CH[i]+p_G_bar*b_GH[i]+SEC_H[i]   #trillion US$
          KG_GOV_Y_ratio[i]<- KG_GOV[i]/Y[i]
          KC_GOV_Y_ratio[i]<-KC_GOV[i]/Y[i] 
          IG_GOV_Y_ratio[i]<- IG_GOV[i]/Y[i]
          IC_GOV_Y_ratio[i]<-IC_GOV[i]/Y[i] 
          KG_Y_ratio[i]<- KG_PRI[i]/Y[i]
          KC_Y_ratio[i]<-KC_PRI[i]/Y[i] 
          KG_KB[i]<-(KG_PRI[i]+KG_GOV[i])/KB[i] 
          KG_K_ratio[i]<- KG_PRI[i]/K_PRI[i]
          LG_L_ratio_pseudo[i]<- (beta[i]*(g_baseline*K_PRI[i]/(1+g_baseline)-RP[i]-x_2[i]*I_PRI_D[i])/L[i])/(def[i]/(1+g_baseline)+g_baseline/(1+g_baseline))
          LG_L_ratio[i]<- LG[i]/L[i]
          RC_pseudo[i]<-RC[i]*(1-gov_SUB)/(1+tau_C[i]*EMIS_IN[i]/IC_PRI[i])
          g_Y_cum[i]<-g_Y[i]
          def_per[i]<-def[i]*100
          CAR_per[i]<-CAR[i]*100
          IG_PRI_D[i]<-IG_PRI_D_1[i]+ IG_PRI_D_2[i]+ IG_PRI_D_3[i]+ IG_PRI_D_4[i] #trillion US$
          IC_PRI_D[i]<-I_PRI_D[i]-IG_PRI_D[i]  #trillion US$
          beta[i]<-beta_initial
          I_PRI_1[i]<-sh_GVA_1*I_PRI[i] 
          I_PRI_2[i]<-sh_GVA_2*I_PRI[i] 
          I_PRI_3[i]<-sh_GVA_3*I_PRI[i] 
          I_PRI_4[i]<-sh_GVA_4*I_PRI[i] 
          TAX_C_change[i]<- TAX_C[i]
          SUB_change[i]<- SUB[i]
          IG_GOV_change[i]<- IG_GOV[i]
          
          r_2_dCR_ddsr_max_pseudo<- -(-1.7411024*0.17)*(L[i]/(NLC_D_1[i]+ NLC_D_2[i]+ NLC_D_3[i]+ NLC_D_4[i]+ NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+ NLG_D_4[i]))# -1.7411024 is taken from the econometric estimates; 0.17 is the sum of the interest rate and repayment ratio
          
          r_3_dCR_dCAR_max_pseudo<- -(0.4371445*(0.1122/0.1537))*(L[i]/(NLC_D_1[i]+ NLC_D_2[i]+ NLC_D_3[i]+ NLC_D_4[i]+ NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+ NLG_D_4[i]))# 0.4371445 is taken from the econometric estimates; 0.1537 is taken from IMF and is the average value of CAR for the period 2005-2017; 0.1122 is taken from OECD and is the average value of Capital/assets for the same period
          
          spr_1_pseudo<- (-0.06566481*(0.1122/0.1537))# -0.06566481is taken from the econometric estimates; 0.1537 is taken from IMF and is the average value of CAR for the period 2005-2017; 0.1122 is taken from OECD and is the average value of Capital/assets for the same period
          
          r_2_dCR_ddsr_max_pseudo_case_I<- -((-1.7411024+0.5172396)*0.17)*(L[i]/(NLC_D_1[i]+ NLC_D_2[i]+ NLC_D_3[i]+ NLC_D_4[i]+ NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+ NLG_D_4[i]))# -1.7411024 is taken from the econometric estimates; 0.17 is the sum of the interest rate and repayment ratio
          
          r_3_dCR_dCAR_max_pseudo_case_I<- -((0.4371445-0.1423701)*(0.1122/0.1537))*(L[i]/(NLC_D_1[i]+ NLC_D_2[i]+ NLC_D_3[i]+ NLC_D_4[i]+ NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+ NLG_D_4[i]))# 0.4371445 is taken from the econometric estimates; 0.1537 is taken from IMF and is the average value of CAR for the period 2005-2017; 0.1122 is taken from OECD and is the average value of Capital/assets for the same period
          
          spr_1_pseudo_case_I<- ((-0.06566481+0.01280057)*(0.1122/0.1537))# -0.06566481is taken from the econometric estimates; 0.1537 is taken from IMF and is the average value of CAR for the period 2005-2017; 0.1122 is taken from OECD and is the average value of Capital/assets for the same period
          
          r_2_dCR_ddsr_max_pseudo_case_II<- -((-1.7411024-0.5172396)*0.17)*(L[i]/(NLC_D_1[i]+ NLC_D_2[i]+ NLC_D_3[i]+ NLC_D_4[i]+ NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+ NLG_D_4[i]))# -1.7411024 is taken from the econometric estimates; 0.17 is the sum of the interest rate and repayment ratio
          
          r_3_dCR_dCAR_max_pseudo_case_II<- -((0.4371445+0.1423701)*(0.1122/0.1537))*(L[i]/(NLC_D_1[i]+ NLC_D_2[i]+ NLC_D_3[i]+ NLC_D_4[i]+ NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+ NLG_D_4[i]))# 0.4371445 is taken from the econometric estimates; 0.1537 is taken from IMF and is the average value of CAR for the period 2005-2017; 0.1122 is taken from OECD and is the average value of Capital/assets for the same period
          
          spr_1_pseudo_case_II<- ((-0.06566481-0.01280057)*(0.1122/0.1537))# -0.06566481is taken from the econometric estimates; 0.1537 is taken from IMF and is the average value of CAR for the period 2005-2017; 0.1122 is taken from OECD and is the average value of Capital/assets for the same period
          
        }
      }
      
      #------------------------------------------------------------------------------------------------------------
      #EQUATIONS
      #------------------------------------------------------------------------------------------------------------        
      
      else {
        
        random1[i]<-0.9*random1[i-1]+rnorm(1,0,0.0005)
        random2[i]<-0.9*random2[i-1]+rnorm(1,0,0.005)
        
        for (iterations in 1:15){
          
          #2.1.1 Matter, recycling and waste 
          MY[i]<- mu[i]*(Y[i]-CO_GOV[i]) #Eq. (1)
          M[i]<-MY[i]-REC[i] #Eq. (2)
          REC[i]<-rho[i]*DEM[i] #Eq. (3)
          DEM[i]<-mu[i]*(delta[i]*(K_PRI[i-1]+ K_GOV[i-1])+xi*DC[i-1]) #Eq. (4)
          SES[i]<-SES[i-1]+MY[i]-DEM[i] #Eq. (5)
          W[i]<-M[i]+CEN[i]+O2[i]-EMIS_IN[i]-(SES[i]- SES[i-1])  #Eq. (6)
          CEN[i]<-(1/car)*EMIS_IN[i] #Eq. (7)
          O2[i]<-EMIS_IN[i]-CEN[i] #Eq. (8)
          HWS[i]<-HWS[i-1]+haz*W[i] #Eq. (9)
          hazratio[i]<-HWS[i]/POP[i] #Eq. (10)
          REV_M[i]<-REV_M[i-1]+CON_M[i]-M[i] #Eq. (11)
          CON_M[i]<-con_M*RES_M[i-1] #Eq. (12)
          RES_M[i]<-RES_M[i-1]-CON_M[i] #Eq. (13)
          dep_M[i]<-M[i]/REV_M[i-1] #Eq. (14)
          
          #2.1.2 Energy
          E[i]<-epsilon[i]*Y[i] #Eq. (15)
          ER[i]<-theta[i]*E[i] #Eq. (16)
          EN[i]<-E[i]-ER[i] #Eq. (17)
          ED[i]<-EN[i]+ER[i] #Eq. (18)
          REV_E[i]<-REV_E[i-1]+CON_E[i]-EN[i] #Eq. (19)
          CON_E[i]<-con_E*RES_E[i-1] #Eq. (20)
          RES_E[i]<-RES_E[i-1]-CON_E[i] #Eq. (21)
          dep_E[i]<-EN[i]/REV_E[i-1] #Eq. (22)
          
          #2.1.3 Emissions and climate change
          EMIS_IN[i]<-omega[i]*EN[i] #Eq. (23)
          EMIS_L[i]<-EMIS_L[i-1]*(1-lr) #Eq. (24)
          EMIS[i]<-EMIS_IN[i]+EMIS_L[i] #Eq. (25)
          CO2_AT[i]<-EMIS[i]+phi_11*CO2_AT[i-1]+phi_21*CO2_UP[i-1] #Eq. (26)
          CO2_UP[i]<-phi_12*CO2_AT[i-1]+phi_22*CO2_UP[i-1]+phi_32*CO2_LO[i-1] #Eq. (27)
          CO2_LO[i]<-phi_23*CO2_UP[i-1]+phi_33*CO2_LO[i-1] #Eq. (28)
          Forc[i]<-F_2CO2*log2(CO2_AT[i]/CO2_AT_PRE)+F_EX[i] #Eq. (29)
          F_EX[i]<-F_EX[i-1]+fex #Eq. (30)
          T_AT[i]<-T_AT[i-1]+t_1*(Forc[i]-(F_2CO2/S)*T_AT[i-1]-t_2*(T_AT[i-1]-T_LO[i-1])) #Eq. (31)
          T_LO[i]<-T_LO[i-1]+t_3*(T_AT[i-1]-T_LO[i-1]) #Eq. (32)
          
          #2.1.4 Ecological efficiency and technology
          omega[i]<-omega[i-1]*(1+g_omega[i]) #Eq. (33)
          g_omega[i]<-g_omega[i-1]*(1-zeta_1) #Eq. (34)
          mu[i]<-mu_max-((mu_max-mu_min)/(1+pi_1*exp(-pi_2*((KG[i-1])/(KB[i-1]))))) #Eq. (35)
          rho[i]<-rho_max/(1+pi_3*exp(-pi_4*((KG[i-1])/(KB[i-1])))) #Eq. (36)
          epsilon[i]<-epsilon_max-((epsilon_max-epsilon_min)/(1+pi_5*exp(-pi_6*((KG[i-1])/(KB[i-1]))))) #Eq. (37)
          theta[i]<-1/(1+pi_7*exp(-pi_8*((KG[i-1])/(KB[i-1])))) #Eq. (38)
          
          #2.2.1 Output determination
          Y_star_M[i]<-(REV_M[i-1]+REC[i])/mu[i] #Eq. (39)
          Y_star_E[i]<-REV_E[i-1]/((1-theta[i])*epsilon[i]) #Eq. (40)
          Y_star_K[i]<-v[i]*K_PRI[i] #Eq. (41)
          Y_star_N[i]<-lambda[i]*LF[i]*h[i] #Eq. (42)
          Y_star[i]<-min(min(Y_star_M[i], Y_star_E[i]),min(Y_star_N[i], Y_star_K[i])) #Eq. (43)
          Y[i]<-CO_PRI[i]+I_PRI[i]+CO_GOV[i]+I_GOV[i] #Eq. (44)
          Y_N[i]<-CO_PRI_N[i]+I_PRI[i]+CO_GOV[i]+I_GOV[i]
          um[i]<- (Y[i]-CO_GOV[i])/Y_star_M[i] #Eq. (45)
          ue[i]<-Y[i]/Y_star_E[i] #Eq. (46)
          u[i]<-Y[i]/Y_star_K[i] #Eq. (47)
          re[i]<-Y[i]/Y_star_N[i] #Eq. (48)
          D_T[i]<-(1-(1/(1+eta_1*T_AT[i]+eta_2*T_AT[i]^2+eta_3*T_AT[i]^6.754)))*damage_dummy #Eq. (49)
          D_TP[i]<-p*D_T[i] #Eq. (50)
          D_TF[i]<-1-(1-D_T[i])/(1-D_TP[i]) #Eq. (51)
          
          #2.2.2 Firms
          TP_G[i]<-Y[i]-wage[i]*N[i]-int_C_1[i]*LC_1[i-1]-int_C_2[i]*LC_2[i-1]-int_C_3[i]*LC_3[i-1]-int_C_4[i]*LC_4[i-1]-int_G[i]*(LG_1[i-1]+LG_2[i-1]+LG_3[i-1]+LG_4[i-1])-delta[i]*K_PRI[i-1]-coupon_C[i]*b_C[i-1]-coupon_G[i]*b_G[i-1]+SUB[i]  #Eq. (52)
          TP[i]<-TP_G[i]-TAX_F[i] -TAX_C[i]  #Eq. (53)
          RP[i]<-s_F*TP[i-1]#Eq. (54)
          DP[i]<-TP[i]-RP[i] #Eq. (55)
          r[i]<-TP[i]/K_PRI[i] #Eq. (56)
          I_PRI_D_1[i]<-sh_GVA_1*I_PRI_D[i] #Eq. (57)
          I_PRI_D_2[i]<-sh_GVA_2*I_PRI_D[i] #Eq. (57)
          I_PRI_D_3[i]<-sh_GVA_3*I_PRI_D[i] #Eq. (57)
          I_PRI_D_4[i]<-sh_GVA_4*I_PRI_D[i] #Eq. (57)
          I_PRI_D[i]<-(((alpha_00)/(1+exp(alpha_01*(1-stag_adjust*(g_POP[i-1]-g_POP[1]))-alpha_1*u[i-1]-alpha_2*r[i-1]+(alpha_31*ur[i-1]^(-alpha_32))+(alpha_41*(1-ue[i-1])^(-alpha_42))+(alpha_51*(1-um[i-1])^(-alpha_52))))-delta[1]+g_change+random1[i]*random_dummy)*K_PRI[i-1]+delta[i]*K_PRI[i-1])*(1-D_T[i-1]) #Eq. (58)
          IG_PRI_D_1[i]<-beta_S1[i]*I_PRI_D_1[i] #Eq. (59)
          IG_PRI_D_2[i]<-beta_S2[i]*I_PRI_D_2[i] #Eq. (59)
          IG_PRI_D_3[i]<-beta_S3[i]*I_PRI_D_3[i] #Eq. (59)
          IG_PRI_D_4[i]<-beta_S4[i]*I_PRI_D_4[i] #Eq. (59)
          IC_PRI_D_1[i]<-I_PRI_D_1[i]-IG_PRI_D_1[i] #Eq. (60)
          IC_PRI_D_2[i]<-I_PRI_D_2[i]-IG_PRI_D_2[i] #Eq. (60)
          IC_PRI_D_3[i]<-I_PRI_D_3[i]-IG_PRI_D_3[i] #Eq. (60)
          IC_PRI_D_4[i]<-I_PRI_D_4[i]-IG_PRI_D_4[i] #Eq. (60)
          beta_S1[i]<- beta[i-1]*(1-beta_is_endogenous_different)+(beta_0_S1[i-1]-beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_1*tau_C[i]*EMIS_IN[i-1]/IC_PRI_1[i-1])-beta_2*(sh_L[i-1]*(int_G[i-1]-int_C_1[i-1])+(1-sh_L[i-1])*(yield_G[i-1]-yield_C[i-1])))* beta_is_endogenous_different ##Eq. (61)
          beta_S2[i]<-beta[i-1]* (1-beta_is_endogenous_different)+(beta_0_S2[i-1]-beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_2*tau_C[i]*EMIS_IN[i-1]/IC_PRI_2[i-1])-beta_2*(sh_L[i-1]*(int_G[i-1]-int_C_2[i-1])+(1-sh_L[i-1])*(yield_G[i-1]-yield_C[i-1])))*beta_is_endogenous_different # #Eq. (61)
          beta_S3[i]<- beta[i-1]*(1-beta_is_endogenous_different)+(beta_0_S3[i-1]-beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_3*tau_C[i]*EMIS_IN[i-1]/IC_PRI_3[i-1])-beta_2*(sh_L[i-1]*(int_G[i-1]-int_C_3[i-1])+(1-sh_L[i-1])*(yield_G[i-1]-yield_C[i-1])))*beta_is_endogenous_different# #Eq. (61)
          beta_S4[i]<- beta[i-1]*(1-beta_is_endogenous_different)+(beta_0_S4[i-1]-beta_1*(RC[i]*(1-gov_SUB))/(1+sh_EMIS_IN_4*tau_C[i]*EMIS_IN[i-1]/IC_PRI_4[i-1])-beta_2*(sh_L[i-1]*(int_G[i-1]-int_C_4[i-1])+(1-sh_L[i-1])*(yield_G[i-1]-yield_C[i-1])))*beta_is_endogenous_different # #Eq. (61)
          beta_0_S1[i]<-beta_0_S1[i-1]*(1+g_beta_0[i]) #Eq. (62)
          beta_0_S2[i]<-beta_0_S2[i-1]*(1+g_beta_0[i]) #Eq. (62)
          beta_0_S3[i]<-beta_0_S3[i-1]*(1+g_beta_0[i]) #Eq. (62)
          beta_0_S4[i]<-beta_0_S4[i-1]*(1+g_beta_0[i]) #Eq. (62)
          g_beta_0[i]<-g_beta_0[i-1]*(1-zeta_2) #Eq. (63)
          RC[i]<-RC[i-1]*(1-g_RC[i])# #Eq. (64)
          g_RC[i]<-g_RC[i-1]*(1-zeta_3)# #Eq. (65)
          NLG_DN_1[i]<-IG_PRI_D_1[i]-sh_GVA_1*beta_S1[i]*RP[i]+rep*LG_1[i-1]-delta[i]*KG_PRI_1[i-1]-sh_GVA_1*p_G_bar*(b_G[i]-b_G[i-1]) #Eq. (66)
          NLG_DN_2[i]<- IG_PRI_D_2[i]-sh_GVA_2*beta_S2[i]*RP[i]+rep*LG_2[i-1]-delta[i]*KG_PRI_2[i-1]-sh_GVA_2*p_G_bar*(b_G[i]-b_G[i-1]) #Eq. (66)
          NLG_DN_3[i]<- IG_PRI_D_3[i]-sh_GVA_3*beta_S3[i]*RP[i]+rep*LG_3[i-1]-delta[i]*KG_PRI_3[i-1]-sh_GVA_3*p_G_bar*(b_G[i]-b_G[i-1]) #Eq. (66)
          NLG_DN_4[i]<- IG_PRI_D_4[i]-sh_GVA_4*beta_S4[i]*RP[i]+rep*LG_4[i-1]-delta[i]*KG_PRI_4[i-1]-sh_GVA_4*p_G_bar*(b_G[i]-b_G[i-1]) #Eq. (66)
          if (NLG_DN_1[i]>=0) {NLG_D_1[i]<-NLG_DN_1[i]}  else { NLG_D_1[i]<-0} 
          if (NLG_DN_2[i]>=0) {NLG_D_2[i]<-NLG_DN_2[i]}  else { NLG_D_2[i]<-0} 
          if (NLG_DN_3[i]>=0) {NLG_D_3[i]<-NLG_DN_3[i]}  else { NLG_D_3[i]<-0} 
          if (NLG_DN_4[i]>=0) {NLG_D_4[i]<-NLG_DN_4[i]}  else { NLG_D_4[i]<-0} 
          NLC_DN_1[i]<-IC_PRI_D_1[i]-sh_GVA_1*(1-beta_S1[i])*RP[i]+rep*LC_1[i-1]-delta[i]*KC_PRI_1[i-1]-sh_GVA_1*p_C_bar*(b_C[i]-b_C[i-1])   #Eq. (67)
          NLC_DN_2[i]<-IC_PRI_D_2[i]-sh_GVA_2*(1-beta_S2[i])*RP[i]+rep*LC_2[i-1]-delta[i]*KC_PRI_2[i-1]-sh_GVA_2*p_C_bar*(b_C[i]-b_C[i-1])   #Eq. (67)
          NLC_DN_3[i]<-IC_PRI_D_3[i]-sh_GVA_3*(1-beta_S3[i])*RP[i]+rep*LC_3[i-1]-delta[i]*KC_PRI_3[i-1]-sh_GVA_3*p_C_bar*(b_C[i]-b_C[i-1])   #Eq. (67)
          NLC_DN_4[i]<-IC_PRI_D_4[i]-sh_GVA_4*(1-beta_S4[i])*RP[i]+rep*LC_4[i-1]-delta[i]*KC_PRI_4[i-1]-sh_GVA_4*p_C_bar*(b_C[i]-b_C[i-1])   #Eq. (67)
          if (NLC_DN_1[i]>=0) {NLC_D_1[i]<-NLC_DN_1[i]}  else { NLC_D_1[i]<-0} 
          if (NLC_DN_2[i]>=0) {NLC_D_2[i]<-NLC_DN_2[i]}  else { NLC_D_2[i]<-0} 
          if (NLC_DN_3[i]>=0) {NLC_D_3[i]<-NLC_DN_3[i]}  else { NLC_D_3[i]<-0} 
          if (NLC_DN_4[i]>=0) {NLC_D_4[i]<-NLC_DN_4[i]}  else { NLC_D_4[i]<-0} 
          IG_PRI_1[i]<-sh_GVA_1*beta_S1[i]*RP[i]+(LG_1[i]-LG_1[i-1])+delta[i]*KG_PRI_1[i-1]+sh_GVA_1*p_G_bar*(b_G[i]-b_G[i-1])+def[i]*LG_1[i-1]#Eq. (68)
          IG_PRI_2[i]<-sh_GVA_2*beta_S2[i]*RP[i]+(LG_2[i]-LG_2[i-1])+delta[i]*KG_PRI_2[i-1]+sh_GVA_2*p_G_bar*(b_G[i]-b_G[i-1])+def[i]*LG_2[i-1]#Eq. (68)
          IG_PRI_3[i]<-sh_GVA_3*beta_S3[i]*RP[i]+(LG_3[i]-LG_3[i-1])+delta[i]*KG_PRI_3[i-1]+sh_GVA_3*p_G_bar*(b_G[i]-b_G[i-1])+def[i]*LG_3[i-1]#Eq. (68)
          IG_PRI_4[i]<-sh_GVA_4*beta_S4[i]*RP[i]+(LG_4[i]-LG_4[i-1])+delta[i]*KG_PRI_4[i-1]+sh_GVA_4*p_G_bar*(b_G[i]-b_G[i-1])+def[i]*LG_4[i-1]#Eq. (68)
          IC_PRI_1[i]<-sh_GVA_1*(1-beta_S1[i])*RP[i]+(LC_1[i]-LC_1[i-1])+delta[i]*KC_PRI_1[i-1]+sh_GVA_1*p_C_bar*(b_C[i]-b_C[i-1])+def[i]*LC_1[i-1]#Eq. (69)
          IC_PRI_2[i]<-sh_GVA_2*(1-beta_S2[i])*RP[i]+(LC_2[i]-LC_2[i-1])+delta[i]*KC_PRI_2[i-1]+sh_GVA_2*p_C_bar*(b_C[i]-b_C[i-1])+def[i]*LC_2[i-1]#Eq. (69)
          IC_PRI_3[i]<-sh_GVA_3*(1-beta_S3[i])*RP[i]+(LC_3[i]-LC_3[i-1])+delta[i]*KC_PRI_3[i-1]+sh_GVA_3*p_C_bar*(b_C[i]-b_C[i-1])+def[i]*LC_3[i-1]#Eq. (69)
          IC_PRI_4[i]<- RP[i]+(LC[i]-LC[i-1])+(LG[i]-LG[i-1])+delta[i]*K_PRI[i-1]-IG_PRI_1[i]-IG_PRI_2[i]-IG_PRI_3[i] -IG_PRI_4[i]-IC_PRI_1[i]-IC_PRI_2[i]-IC_PRI_3[i]+p_G_bar*(b_G[i]-b_G[i-1])+p_C_bar*(b_C[i]-b_C[i-1])+DL[i]    #Eq. (70)
          IG_PRI[i]<-IG_PRI_1[i]+IG_PRI_2[i]+IG_PRI_3[i]+IG_PRI_4[i]# Eq. (71)
          IC_PRI[i]<- IC_PRI_1[i]+IC_PRI_2[i]+IC_PRI_3[i]+IC_PRI_4[i]#Eq. (72) 
          I_PRI[i]<-IC_PRI[i]+IG_PRI[i] #Eq. (73)
          L[i]<-LC[i]+LG[i] #Eq. (74)
          KG_PRI_1[i]<-KG_PRI_1[i-1]+IG_PRI_1[i]-delta[i]*KG_PRI_1[i-1] #Eq. (75)
          KG_PRI_2[i]<-KG_PRI_2[i-1]+IG_PRI_2[i]-delta[i]*KG_PRI_2[i-1] #Eq. (75)
          KG_PRI_3[i]<-KG_PRI_3[i-1]+IG_PRI_3[i]-delta[i]*KG_PRI_3[i-1] #Eq. (75)
          KG_PRI_4[i]<-KG_PRI_4[i-1]+IG_PRI_4[i]-delta[i]*KG_PRI_4[i-1] #Eq. (75)
          KC_PRI_1[i]<-KC_PRI_1[i-1]+IC_PRI_1[i]-delta[i]*KC_PRI_1[i-1] #Eq. (76)
          KC_PRI_2[i]<-KC_PRI_2[i-1]+IC_PRI_2[i]-delta[i]*KC_PRI_2[i-1] #Eq. (76)
          KC_PRI_3[i]<-KC_PRI_3[i-1]+IC_PRI_3[i]-delta[i]*KC_PRI_3[i-1] #Eq. (76)
          KC_PRI_4[i]<-KC_PRI_4[i-1]+IC_PRI_4[i]-delta[i]*KC_PRI_4[i-1] #Eq. (76)
          KG_PRI[i]<- KG_PRI_1[i]+KG_PRI_2[i]+KG_PRI_3[i]+KG_PRI_4[i] #Eq. (77)
          KC_PRI[i]<-KC_PRI_1[i]+KC_PRI_2[i]+KC_PRI_3[i]+KC_PRI_4[i] #Eq. (78)
          K_PRI[i]<-KC_PRI[i]+KG_PRI[i] #Eq. (79)
          kappa[i]<- IG_PRI[i]/I_PRI[i] # Eq. (80)
          KB[i]<-db_PRI_1*KC_PRI_1[i]+db_PRI_2*KC_PRI_2[i]+ db_PRI_3*KC_PRI_3[i]+db_PRI_4*KC_PRI_4[i]+db_GOV*KC_GOV[i] #Eq. (81)
          delta[i]<-delta_0+(1-delta_0)*(1-ad_K)*D_TF[i-1]  #Eq. (82)
          v[i]<-v[i-1]*(1-(1-ad_P)*D_TP[i-1]) #Eq. (83)
          g_lambda[i]<-sigma_0[i]+sigma_1+sigma_2*g_Y[i-1]#Eq. (84)
          if (lambda_is_optimal==0) { sigma_0[i]<-sigma_0[i-1]*(1-zeta_4)} else { sigma_0[i]<-sigma_0_optimal[i]} #Eq. (85)
          lambda[i]<-lambda[i-1]*(1+g_lambda[i])*(1-(1-ad_P)*D_TP[i-1]) #Eq. (86)
          wage[i]<-s_W*lambda[i]*h[i] #Eq. (87)
          N[i]<-Y[i]/(lambda[i]*h[i])  #Eq. (88)	
          ur[i]<-1-re[i] #Eq. (89)
          b_C[i]<-b_C[i-1]+(x_1[i]*IC_PRI_D[i])/p_C_bar #Eq. (90)
          b_G[i]<-b_G[i-1]+(x_2[i]*IG_PRI_D[i])/p_G_bar #Eq. (91) 
          x_1[i]<-x_10-x_11*yield_C[i-1] #Eq. (92)  
          x_2[i]<-x_20[i]-x_21*yield_G[i-1]    #Eq. (93)
          x_20[i]<-x_20[i-1]*(1+g_x_20[i]) #Eq. (94)
          g_x_20[i]<-g_x_20[i-1]*(1-zeta_5) #Eq. (95)
          yield_C[i]<-coupon_C[i]/p_C[i] #Eq. (96)
          yield_G[i]<-coupon_G[i]/p_G[i] #Eq. (97)
          coupon_C[i]<-yield_C[i-1]*p_C_bar #Eq. (98)
          coupon_G[i]<-yield_G[i-1]*p_G_bar #Eq. (99)
          B_C[i]<-B_CH[i]+B_CCB[i]  #Eq. (100)
          B_G[i]<-B_GH[i]+B_GCB[i]  #Eq. (101)
          p_C[i]<-B_C[i]/b_C[i] #Eq. (102)
          p_G[i]<-B_G[i]/b_G[i]  #Eq. (103)
          B[i]<-B_C[i]+B_G[i] #Eq. (104)
          DL[i]<-def[i]*L[i-1] #Eq. (105)
          def[i]<-def_max/(1+def_0*exp(def_1-def_2*illiq[i-1])) #Eq. (106)
          
          illiq[i]<-((int_C_1[i]+rep)*LC_1[i-1]+(int_C_2[i]+rep)*LC_2[i-1]+(int_C_3[i]+rep)*LC_3[i-1]+(int_C_4[i]+rep)*LC_4[i-1]+(int_G[i]+rep)*LG[i-1]+coupon_C[i]*b_C[i-1]+coupon_G[i]*b_G[i-1]+wage[i]*N[i]+TAX_F[i]+TAX_C[i]+delta[i]*K_PRI[i-1])/(Y[i]+(1-CR_C_1[i])*NLC_D_1[i]+(1-CR_C_2[i])*NLC_D_2[i]+(1-CR_C_3[i])*NLC_D_3[i]+(1-CR_C_4[i])*NLC_D_4[i]+ (1-CR_G[i])*(NLG_D_1[i]+ NLG_D_2[i]+ NLG_D_3[i]+NLG_D_4[i])+(b_C[i]-b_C[i-1])*p_C_bar+ (b_G[i]-b_G[i-1])*p_G_bar)  #Eq. (107)
          
          dsr[i]<-((int_C_1[i]+rep)*LC_1[i-1]+(int_C_2[i]+rep)*LC_2[i-1]+(int_C_3[i]+rep)*LC_3[i-1]+(int_C_4[i]+rep)*LC_4[i-1]+(int_G[i]+rep)*LG[i-1]+coupon_C[i]*b_C[i-1]+coupon_G[i]*b_G[i-1])/(TP[i]+int_C_1[i]*LC_1[i-1]+int_C_2[i]*LC_2[i-1]+int_C_3[i]*LC_3[i-1]+int_C_4[i]*LC_4[i-1]+(int_G[i])*LG[i-1]+coupon_C[i]*b_C[i-1]+coupon_G[i]*b_G[i-1]) #Eq. (108)
          
          
          #2.2.3 Households
          Y_HG[i]<-wage[i]*N[i]+DP[i]+BP_D[i]+int_D*D[i-1]+int_S*SEC_H[i-1]+coupon_C[i]*b_CH[i-1]+coupon_G[i]*b_GH[i-1]  #Eq. (109)
          Y_H[i]<-Y_HG[i]-TAX_H[i] #Eq. (110)
          CO_PRI_N[i]<-((c_1-con_change*c_1)*Y_H[i-1]+(c_2-con_change*c_2)*V_HF[i-1])*(1-D_T[i-1]) #Eq. (111)
          if (Y_N[i]<Y_star[i]) {CO_PRI[i]<-CO_PRI_N[i]} else {CO_PRI[i]<- pr*(Y_star[i]-CO_GOV[i]-I_PRI[i])} #Eq. (112)
          V_HF[i]<-V_HF[i-1]+Y_H[i]-CO_PRI[i]+b_CH[i-1]*(p_C[i]-p_C[i-1])+b_GH[i-1]*(p_G[i]-p_G[i-1])#Eq. (113)
          SEC_H[i]<-(lambda_10+lambda_10prime*D_T[i-1]+lambda_11*int_S+lambda_12*yield_C[i-1]+lambda_13*yield_G[i-1]+lambda_14*int_D+lambda_15*(Y_H[i-1]/V_HF[i-1]))*V_HF[i-1] #Eq. (114)
          B_CH[i]<-(lambda_20+lambda_20prime*D_T[i-1]+lambda_21*int_S+lambda_22*yield_C[i-1]+lambda_23*yield_G[i-1]+lambda_24*int_D+lambda_25*(Y_H[i-1]/V_HF[i-1]))*V_HF[i-1] #Eq. (115)
          B_GH[i]<-(lambda_30[i]+lambda_30prime*D_T[i-1]+lambda_31*int_S+lambda_32*yield_C[i-1]+lambda_33*yield_G[i-1]+lambda_34*int_D+lambda_35*(Y_H[i-1]/V_HF[i-1]))*V_HF[i-1] #Eq. (116)
          D_N[i]<-(lambda_40[i]+lambda_40prime*D_T[i-1]+lambda_41*int_S+lambda_42*yield_C[i-1]+lambda_43*yield_G[i-1]+lambda_44*int_D+lambda_45*(Y_H[i-1]/V_HF[i-1]))*V_HF[i-1] #Eq. (117n)
          D[i]<-D[i-1]+Y_H[i]-CO_PRI[i]-(SEC_H[i]-SEC_H[i-1])-(b_CH[i]-b_CH[i-1])*p_C_bar-(b_GH[i]-b_GH[i-1])*p_G_bar  #Eq. (117)
          lambda_30[i]<-lambda_30[i-1]*(1+g_lambda_30[i]) #Eq. (118)
          g_lambda_30[i]<-g_lambda_30[i-1]*(1-zeta_5) #Eq. (119)
          lambda_40[i]<-1- lambda_10- lambda_20- lambda_30[i] #(Ci) 
          b_CH[i]<-B_CH[i]/p_C[i] #Eq. (120)
          b_GH[i]<-B_GH[i]/p_G[i] #Eq. (121)
          DC[i]<-DC[i-1]+CO_PRI[i]-xi*DC[i-1] #Eq. (122)
          g_POP[i]<-g_POP[i-1]*(1-zeta_6) #Eq. (123)
          POP[i]<-POP[i-1]*(1+g_POP[i]) #Eq. (124)
          LF[i]<-(lf_1[i]-lf_2*hazratio[i-1])*(1-(1-ad_LF)*D_TF[i-1])*POP[i] #Eq. (125)
          lf_1[i]<-lf_1[i-1]*(1-zeta_7) #Eq. (126)
          
          
          #2.2.4 Banks
          BP[i]<-int_C_1[i]*LC_1[i-1]+int_C_2[i]*LC_2[i-1] +int_C_3[i]*LC_3[i-1] +int_C_4[i]*LC_4[i-1]+int_G[i]*(LG_1[i-1]+LG_2[i-1]+LG_3[i-1]+LG_4[i-1])+int_S*SEC_B[i-1]-int_D*D[i-1]-int_A*A[i-1] #Eq. (127)
          CAP[i]<-CAP[i-1]+BP_U[i]-DL[i]+BAILOUT[i] #Eq. (128)
          CAP_before[i]<-CAP[i-1]+BP_U[i]-DL[i] 
          BP_U[i]<-s_B*BP[i-1] #Eq. (129)
          BP_D[i]<-BP[i]-BP_U[i] #Eq. (130)
          HPM[i]<-h_1*D[i] #Eq. (131)
          SEC_BN[i]<-SEC_B[i-1]+(A[i]-A[i-1])+(D[i]-D[i-1])+BP_U[i]+BAILOUT[i] -(LG[i]-LG[i-1])-(LC[i]-LC[i-1])-(HPM[i]-HPM[i-1])-DL[i] 
          if (iterations>10 & A_N[i]>0) {SEC_B[i]<-h_2*D[i]}  else {SEC_B[i]<-SEC_BN[i]} #Eq. (132)
          A_N[i]<-A[i-1]+(h_2*D[i]-SEC_B[i-1])+(LG[i]-LG[i-1])+(LC[i]-LC[i-1])+(HPM[i]-HPM[i-1])+DL[i]-(D[i]-D[i-1])-BP_U[i]-BAILOUT[i]   
          if (iterations>10 & A_N[i]>0) {A[i]<-A_N[i]}  else {A[i]<-0} #Eq. (133)
          CR[i]<-CR_max/(1+r_0*exp(r_1-r_2*dsr[i-1]+r_3*(CAR[i-1]-CAR_min)))*cr_rationing_dummy+random2[i]* random_dummy  #Eq. (134)
          CR_G[i]<- (1+l_1*(w_G-w_LT[i]))*CR[i] #Eq. (135)
          CR_C_1[i]<-(1+l_1*(w_C_1-w_LT[i]))*CR[i] #Eq. (136)
          CR_C_2[i]<-(1+l_1*(w_C_2-w_LT[i]))*CR[i] #Eq. (136)
          CR_C_3[i]<-(1+l_1*(w_C_3-w_LT[i]))*CR[i] #Eq. (136)
          CR_C_4[i]<-(CR[i]-sh_NLG[i-1]*CR_G[i]-sh_NLC_1[i-1]*CR_C_1[i]-sh_NLC_2[i-1]*CR_C_2[i]-sh_NLC_3[i-1]*CR_C_3[i])/sh_NLC_4[i-1] #Eq. (137)
          LC_1[i]<-LC_1[i-1]+(1-CR_C_1[i])*NLC_D_1[i]-rep*LC_1[i-1]-def[i]*LC_1[i-1] #Eq. (138)
          LC_2[i]<-LC_2[i-1]+(1-CR_C_2[i])*NLC_D_2[i]-rep*LC_2[i-1]-def[i]*LC_2[i-1] #Eq. (138)
          LC_3[i]<-LC_3[i-1]+(1-CR_C_3[i])*NLC_D_3[i]-rep*LC_3[i-1]-def[i]*LC_3[i-1] #Eq. (138)
          LC_4[i]<-LC_4[i-1]+(1-CR_C_4[i])*NLC_D_4[i]-rep*LC_4[i-1]-def[i]*LC_4[i-1] #Eq. (138)
          LG_1[i]<-LG_1[i-1]+(1-CR_G[i])*NLG_D_1[i]-rep*LG_1[i-1]-def[i]*LG_1[i-1]  #Eq. (139)
          LG_2[i]<-LG_2[i-1]+(1-CR_G[i])*NLG_D_2[i]-rep*LG_2[i-1]-def[i]*LG_2[i-1]  #Eq. (139)
          LG_3[i]<-LG_3[i-1]+(1-CR_G[i])*NLG_D_3[i]-rep*LG_3[i-1]-def[i]*LG_3[i-1]  #Eq. (139)
          LG_4[i]<-LG_4[i-1]+(1-CR_G[i])*NLG_D_4[i]-rep*LG_4[i-1]-def[i]*LG_4[i-1]  #Eq. (139)
          LC[i]<-LC_1[i]+LC_2[i]+LC_3[i]+LC_4[i] #Eq. (140)
          LG[i]<-LG_1[i]+LG_2[i]+LG_3[i]+LG_4[i] #Eq. (141)
          lev_B[i]<-(HPM[i]+LG[i]+LC[i]+SEC_B[i])/CAP[i] #Eq. (142)
          CAR[i]<-CAP[i]/(w_G*LG[i]+w_C_1*LC_1[i]+w_C_2*LC_2[i]+w_C_3*LC_3[i]+w_C_4*LC_4[i]+w_S*SEC_B[i]) #Eq. (143)
          w_LT[i]<-sh_LG[i-1]*w_G+sh_LC_1[i-1]*w_C_1+sh_LC_2[i-1]*w_C_2+sh_LC_3[i-1]*w_C_3+sh_LC_4[i-1]*w_C_4#Eq. (144)
          int_G[i]<-spr_G[i]+int_A #Eq. (145)
          int_C_1[i]<-spr_C_1[i]+int_A #Eq. (146)
          int_C_2[i]<-spr_C_2[i]+int_A #Eq. (146)
          int_C_3[i]<-spr_C_3[i]+int_A #Eq. (146)
          int_C_4[i]<-spr_C_4[i]+int_A #Eq. (146)
          spr[i]<-spr_0-spr_1*(CAR[i-1]-CAR_min) #Eq. (147)
          spr_G[i]<-(1+spr_2*(w_G-w_LT[i]))*spr[i] #Eq. (148)
          spr_C_1[i]<-(1+spr_2*(w_C_1-w_LT[i]))*spr[i] #Eq. (149)
          spr_C_2[i]<- (1+spr_2*(w_C_2-w_LT[i]))*spr[i] #Eq. (149)
          spr_C_3[i]<- (1+spr_2*(w_C_3-w_LT[i]))*spr[i] #Eq. (149)
          spr_C_4[i]<-(spr[i]-sh_LG[i-1]*spr_G[i]-sh_LC_1[i-1]*spr_C_1[i]-sh_LC_2[i-1]*spr_C_2[i]-sh_LC_3[i-1]*spr_C_3[i])/sh_LC_4[i-1] #Eq. (150)
          
          sh_NLG[i]<-(NLG_D_1[i]+NLG_D_2[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i])/(NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i]+NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_1[i]<-NLC_D_1[i]/(NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i]+NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_2[i]<-NLC_D_2[i]/(NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i]+NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_3[i]<-NLC_D_3[i]/ (NLG_D_1[i]+NLG_D_2[i]+NLG_D_3[i]+NLG_D_4[i]+NLC_D_1[i]+NLC_D_2[i]+NLC_D_3[i]+NLC_D_4[i])
          sh_NLC_4[i]<-1-sh_NLG[i]-sh_NLC_1[i]-sh_NLC_2[i]-sh_NLC_3[i]
          
          sh_LG[i]<-LG[i]/L[i]
          sh_LC_1[i]<-LC_1[i]/L[i]
          sh_LC_2[i]<- LC_2[i]/L[i]
          sh_LC_3[i]<- LC_3[i]/L[i]
          sh_LC_4[i]<- 1-sh_LG[i]-sh_LC_1[i] -sh_LC_2[i]-sh_LC_3[i]
          
          #2.2.5 Government
          GB[i]<- -CO_GOV[i]+TAX[i]-int_S*SEC[i-1]+CBP[i]-BAILOUT[i]-SUB[i]-delta[i]*K_GOV[i-1] #Eq. (151)
          SEC[i]<-SEC[i-1]+I_GOV[i]-GB[i]-delta[i]*K_GOV[i-1] #Eq. (152)
          IG_GOV[i]<-gov_IG*Y[i-1] #Eq. (153)
          IC_GOV[i]<-gov_IC*Y[i-1] #Eq. (154)
          I_GOV[i]<- IC_GOV[i]+IG_GOV[i] #Eq. (155)
          KG_GOV[i]<-KG_GOV[i-1]+IG_GOV[i]-delta[i]*KG_GOV[i-1] #Eq. (156)
          KC_GOV[i]<-KC_GOV[i-1]+IC_GOV[i]-delta[i]*KC_GOV[i-1] #Eq. (157)
          K_GOV[i]<-KC_GOV[i]+KG_GOV[i] #Eq. (158)
          K[i]<-K_PRI[i]+K_GOV[i] #Eq. (159)
          KG[i]<-KG_PRI[i]+KG_GOV[i] #Eq. (160)
          KC[i]<-KC_PRI[i]+KC_GOV[i] #Eq. (161)
          BAILOUT_CAR[i]<-if (CAR[i-1]>CAR_min) {BAILOUT_CAR[i]<-0}  else {BAILOUT_CAR[i]<-CAR_min*(w_G*LG[i-1]+w_C_1*LC_1[i-1]+w_C_2*LC_2[i-1]+w_C_3*LC_3[i-1]+w_C_4*LC_4[i-1]+w_S*SEC_B[i-1])*(1+g_Y[i-1])-CAP_before[i]}
          BAILOUT_levB[i]<-if (lev_B[i-1]<lev_B_max) {BAILOUT_levB[i]<-0}  else {BAILOUT_levB[i]<-(HPM[i-1]+LG[i-1]+LC[i-1]+SEC_B[i-1])*(1+g_Y[i-1])/lev_B_max -CAP_before[i]}
          BAILOUT[i]<-max(BAILOUT_CAR[i],BAILOUT_levB[i])
          CO_GOV[i]<-gov_C*Y[i-1] #Eq. (162)
          SUB[i]<-gov_SUB*IG_PRI[i-1] #Eq. (163)
          TAX_H[i]<-tau_H*Y_HG[i-1] #Eq. (164)
          TAX_F[i]<-tau_F*TP_G[i-1] #Eq. (165)
          TAX_C[i]<-tau_C[i]*EMIS_IN[i-1] #Eq. (166)
          if (i==6) { tau_C[i]<-tau_C_2022} else { tau_C[i]<-tau_C[i-1]*(1+g_tau_C)} #Eq. (167)
          TAX[i]<-TAX_H[i]+TAX_F[i]+TAX_C[i]    #Eq. (168)
          
          #2.2.6 Central bank
          CBP[i]<-coupon_C[i]*b_CCB[i-1]+coupon_G[i]*b_GCB[i-1]+int_A*A[i-1]+int_S*SEC_CB[i-1]  #Eq. (169)
          B_GCB[i]<-s_G*B_G[i-1] #Eq. (170)
          B_CCB[i]<-s_C*B_C[i-1] #Eq. (171)
          b_CCB[i]<-B_CCB[i]/p_C[i] #Eq. (172)
          b_GCB[i]<-B_GCB[i]/p_G[i] #Eq. (173)
          SEC_CB[i]<-SEC[i]-SEC_H[i]-SEC_B[i]  #Eq. (174)
          SEC_CBred[i]<-SEC_CB[i-1]+(HPM[i]-HPM[i-1])-(A[i]-A[i-1])-p_C_bar*(b_CCB[i]-b_CCB[i-1])-p_G_bar*(b_GCB[i]-b_GCB[i-1]) #Eq. (175-red)
          
          #Auxiliary equations
          g_Y[i]<-(Y[i]-Y[i-1])/Y[i-1] 
          gI[i]<-(I_PRI[i]-I_PRI[i-1])/I_PRI[i-1]  
          gC[i]<-(CO_PRI[i]-CO_PRI[i-1])/CO_PRI[i-1]  
          g_K[i]<-(K_PRI[i]-K_PRI[i-1])/K_PRI[i-1]
          CO2_absorbed[i]<-(1-phi_11)*CO2_AT[i-1]-phi_21*CO2_UP[i-1]
          ur_per[i]<-ur[i]*100
          g_Y_per[i]<-g_Y[i]*100
          theta_per[i]<-theta[i]*100
          greenI[i]<-IG_PRI[i]/I_PRI[i]
          r_total[i]<-(TP[i]/K_PRI[i]) *100
          Y_POP_ratio[i]<-(Y[i]/POP[i])
          I_Y_ratio[i]<-I_PRI[i]/Y[i]
          C_Y_ratio[i]<-CO_PRI[i]/Y[i] 
          C_K_ratio[i]<-CO_PRI[i]/K_PRI[i]
          Y_K_ratio[i]<-Y[i]/K_PRI[i]
          Y_H_Y_ratio[i]<-Y_H[i]/Y[i]
          Y_H_K_ratio[i]<-Y_H[i]/K_PRI[i]
          A_K_ratio[i]<-A[i]/K_PRI[i]
          sigma_0_optimal[i]<-(((g_Y[i-1]-g_lf[i])/(1+ g_lf[i])*(1-(1-ad_P)*D_TP[i-1]))+(1-ad_P)*D_TP[i-1])/(1-(1-ad_P)*D_TP[i-1]) -sigma_1-sigma_2*g_Y[i-1]
          h_optimal[i]<-h_optimal[i-1]*(1+g_h[i])
          g_h[i]<-((((g_Y[i]-g_lf[i])/(1+ g_lf[i]))+(1-ad_P)*D_TP[i-1])/(1-(1-ad_P)*D_TP[i-1]) -g_lambda[i])/(1+g_lambda[i])
          if (h_is_optimal==0) {h[i]<-hours} else {h[i]<-h_optimal[i]}
          omega_ratio[i]<-omega[i]/omega[1]
          mu_ratio[i]<-mu[i]/mu[1]
          rho_ratio[i]<-rho[i]/rho[1]
          epsilon_ratio[i]<-epsilon[i]/epsilon[1]
          Wbill[i]<-wage[i]*N[i]
          Interest[i]<- int_C_1[i]*LC_1[i-1]+int_C_2[i]*LC_2[i-1]+int_C_3[i]*LC_3[i-1]+int_C_4[i]*LC_4[i-1]+int_G[i]*LG[i-1]
          Depreciation[i]<-delta[i]*K_PRI[i-1]
          CO2_ATppm[i]<-CO2_AT[i]/7.81071
          SEC_Y[i]<-SEC[i]/Y[i]
          SEC_Y_per[i]<-SEC[i]/Y[i]*100
          fiscal_balance_per[i]<-fiscal_balance[i]*100
          PORT_BCH[i]<-B_CH[i]/V_HF[i-1]
          PORT_BGH[i]<-B_GH[i]/V_HF[i-1]
          PORT_SECH[i]<-SEC_H[i]/V_HF[i-1]
          PORT_D[i]<-D_N[i]/V_HF[i-1]
          L_K[i]<-L[i]/K_PRI[i]
          sh_L[i]<-L[i]/(L[i]+B[i])
          g_bC[i]<-(b_C[i]-b_C[i-1])/b_C[i-1]
          g_bG[i]<-(b_G[i]-b_G[i-1])/b_G[i-1]
          g_pG[i]<-(p_G[i]-p_G[i-1])/p_G[i-1]
          g_pC[i]<-(p_C[i]-p_C[i-1])/p_C[i-1]
          B_C_issue[i]<-x_1[i]*IC_PRI_D[i]  
          B_G_issue[i]<-x_2[i]*IG_PRI_D[i] 
          IG_cum[i]<-IG_cum[i-1]+IG_PRI[i]+IG_GOV[i]
          IC_cum[i]<-IC_cum[i-1]+IC_PRI[i]+IC_GOV[i]
          V_CB[i]<- p_C_bar*b_CCB[i]+ p_G_bar*b_GCB[i]+A[i]+SEC_CB[i]-HPM[i] 
          gGOVCO[i]<-(CO_GOV[i]-CO_GOV[i-1])/CO_GOV[i-1]
          D_K_ratio[i]<-D[i]/K_PRI[i]
          HPM_K_ratio[i]<-HPM[i]/K_PRI[i]
          I_K_ratio[i]<-I_PRI[i]/K_PRI[i-1]
          ID_K_ratio[i]<-I_PRI_D[i]/K_PRI[i-1]
          fiscal_balance[i]<-(TAX[i]-CO_GOV[i]-IC_GOV[i]-IG_GOV[i]-SUB[i]-BAILOUT[i]-int_S*SEC[i-1])/Y[i]
          g_lf[i]<-(LF[i]-LF[i-1])/LF[i-1]
          W_POP_ratio[i]<-W[i]/POP[i]
          E_N_ratio[i]<-E[i]/N[i]
          g_EN_ratio[i]<-(E_N_ratio[i]-E_N_ratio[i-1])/E_N_ratio[i-1]
          Y_E_ratio[i]<-Y[i]/E[i]
          g_YE_ratio[i]<-(Y_E_ratio[i]-Y_E_ratio[i-1])/Y_E_ratio[i-1]
          lambda_perworker[i]<-lambda[i]*h[i]
          E_ratio[i]<-E[i]/E[1]
          CO2_ratio[i]<-EMIS_IN[i]/EMIS_IN[1]
          lf[i]<-LF[i]/POP[i]
          haz_flow[i]<-haz*W[i]
          Y_HD[i]<-wage[i]*N[i]+ TAX_H[i]+DP[i]+BP_D[i]+int_D*D[i-1]+int_S*SEC_H[i-1]+coupon_C[i]*b_CH[i-1]+coupon_G[i]*b_GH[i-1]- xi*DC[i-1]
          V_H[i]<- DC[i]+D[i]+p_C_bar*b_CH[i]+p_G_bar*b_GH[i]+SEC_H[i]   
          KG_GOV_Y_ratio[i]<- KG_GOV[i]/Y[i]
          KC_GOV_Y_ratio[i]<-KC_GOV[i]/Y[i] 
          IG_GOV_Y_ratio[i]<- IG_GOV[i]/Y[i]
          IC_GOV_Y_ratio[i]<-IC_GOV[i]/Y[i] 
          KG_Y_ratio[i]<- KG_PRI[i]/Y[i]
          KC_Y_ratio[i]<-KC_PRI[i]/Y[i] 
          KG_K_ratio[i]<- KG_PRI[i]/K_PRI[i]
          LG_L_ratio_pseudo[i]<- (beta[i]*(g_baseline*K_PRI[i]/(1+g_baseline)-RP[i]-x_2[i]*I_PRI_D[i])/L[i])/(def[i]/(1+g_baseline)+g_baseline/(1+g_baseline))
          LG_L_ratio[i]<- LG[i]/L[i]
          RC_pseudo[i]<-RC[i]*(1-gov_SUB)/(1+tau_C[i]*EMIS_IN[i]/IC_PRI[i])
          KG_KB[i]<-KG[i]/KB[i] 
          g_Y_cum[i]<-g_Y_cum[i-1]+g_Y[i]
          def_per[i]<-def[i]*100
          CAR_per[i]<-CAR[i]*100
          beta[i]<-beta[i-1] 
          I_PRI_1[i]<-IC_PRI_1[i]+IG_PRI_1[i] #Eq. (72)
          I_PRI_2[i]<- IC_PRI_2[i]+IG_PRI_2[i] #Eq. (72)
          I_PRI_3[i]<- IC_PRI_3[i]+IG_PRI_3[i] #Eq. (72)
          I_PRI_4[i]<- IC_PRI_4[i]+IG_PRI_4[i] #Eq. (72)
          IG_PRI_D[i]<- IG_PRI_D_1[i]+ IG_PRI_D_2[i]+ IG_PRI_D_3[i]+ IG_PRI_D_4[i]  
          IC_PRI_D[i]<-I_PRI_D[i]-IG_PRI_D[i] 
          TAX_C_change[i]<- TAX_C[i]-TAX_C[i-1]
          SUB_change[i]<- SUB[i]-SUB[i-1]
          IG_GOV_change[i]<- IG_GOV[i]-IG_GOV[i-1]
          
        }
      }
    }
    
    #--------------------------------------------------------------------------------------------------------------
    #Monte Carlo simulations 
    #--------------------------------------------------------------------------------------------------------------
    
    eval(parse(text=(paste("Monte_g_Y_per",sce,"[,",k,"]","<-", "g_Y_per", sep=""))))
    eval(parse(text=(paste("Monte_ur_per",sce,"[,",k,"]","<-", "ur_per", sep=""))))
    eval(parse(text=(paste("Monte_Y",sce,"[,",k,"]","<-", "Y", sep=""))))
    eval(parse(text=(paste("Monte_CO_PRI",sce,"[,",k,"]","<-", "CO_PRI", sep=""))))
    eval(parse(text=(paste("Monte_I_PRI",sce,"[,",k,"]","<-", "I_PRI", sep=""))))
    eval(parse(text=(paste("Monte_lambda",sce,"[,",k,"]","<-", "lambda", sep=""))))
    eval(parse(text=(paste("Monte_N",sce,"[,",k,"]","<-", "N", sep=""))))
    eval(parse(text=(paste("Monte_Y_POP_ratio",sce,"[,",k,"]","<-", " Y_POP_ratio", sep=""))))
    eval(parse(text=(paste("Monte_lambda_perworker",sce,"[,",k,"]","<-","lambda_perworker", sep=""))))
    eval(parse(text=(paste("Monte_E_N_ratio",sce,"[,",k,"]","<-","E_N_ratio", sep=""))))
    eval(parse(text=(paste("Monte_I_K_ratio",sce,"[,",k,"]","<-","I_K_ratio", sep=""))))
    eval(parse(text=(paste("Monte_ur_per",sce,"[,",k,"]","<-","ur_per", sep=""))))
    eval(parse(text=(paste("Monte_POP",sce,"[,",k,"]","<-","POP", sep=""))))
    eval(parse(text=(paste("Monte_beta_S1",sce,"[,",k,"]","<-","beta_S1", sep=""))))
    eval(parse(text=(paste("Monte_greenI",sce,"[,",k,"]","<-","greenI", sep=""))))
    eval(parse(text=(paste("Monte_kappa",sce,"[,",k,"]","<-","kappa", sep=""))))
    eval(parse(text=(paste("Monte_theta_per",sce,"[,",k,"]","<-","theta_per", sep=""))))
    eval(parse(text=(paste("Monte_r_total",sce,"[,",k,"]","<-","r_total", sep=""))))
    eval(parse(text=(paste("Monte_dsr",sce,"[,",k,"]","<-","dsr", sep=""))))
    eval(parse(text=(paste("Monte_L_K",sce,"[,",k,"]","<-","L_K", sep=""))))
    eval(parse(text=(paste("Monte_def_per",sce,"[,",k,"]","<-","def_per", sep=""))))
    eval(parse(text=(paste("Monte_lev_B",sce,"[,",k,"]","<-","lev_B", sep=""))))
    eval(parse(text=(paste("Monte_PORT_BCH",sce,"[,",k,"]","<-","PORT_BCH", sep=""))))
    eval(parse(text=(paste("Monte_PORT_BGH",sce,"[,",k,"]","<-","PORT_BGH", sep=""))))
    eval(parse(text=(paste("Monte_p_C",sce,"[,",k,"]","<-","p_C", sep=""))))
    eval(parse(text=(paste("Monte_p_G",sce,"[,",k,"]","<-","p_G", sep=""))))
    eval(parse(text=(paste("Monte_h",sce,"[,",k,"]","<-","h", sep=""))))
    eval(parse(text=(paste("Monte_EMIS",sce,"[,",k,"]","<-","EMIS", sep=""))))
    eval(parse(text=(paste("Monte_T_AT",sce,"[,",k,"]","<-","T_AT", sep=""))))
    eval(parse(text=(paste("Monte_dep_E",sce,"[,",k,"]","<-","dep_E", sep=""))))
    eval(parse(text=(paste("Monte_dep_M",sce,"[,",k,"]","<-","dep_M", sep=""))))
    eval(parse(text=(paste("Monte_Forc",sce,"[,",k,"]","<-","Forc", sep=""))))
    eval(parse(text=(paste("Monte_CO2_ATppm",sce,"[,",k,"]","<-","CO2_ATppm", sep=""))))
    eval(parse(text=(paste("Monte_rho",sce,"[,",k,"]","<-","rho", sep=""))))
    eval(parse(text=(paste("Monte_mu",sce,"[,",k,"]","<-","mu", sep=""))))
    eval(parse(text=(paste("Monte_epsilon",sce,"[,",k,"]","<-","epsilon", sep=""))))
    eval(parse(text=(paste("Monte_W",sce,"[,",k,"]","<-","W", sep=""))))
    eval(parse(text=(paste("Monte_W_POP_ratio",sce,"[,",k,"]","<-","W_POP_ratio", sep=""))))
    eval(parse(text=(paste("Monte_hazratio",sce,"[,",k,"]","<-","hazratio", sep=""))))
    eval(parse(text=(paste("Monte_CAR_per",sce,"[,",k,"]","<-","CAR_per", sep=""))))
    eval(parse(text=(paste("Monte_CR",sce,"[,",k,"]","<-","CR", sep=""))))
    eval(parse(text=(paste("Monte_CR_C_1",sce,"[,",k,"]","<-","CR_C_1", sep=""))))
    eval(parse(text=(paste("Monte_CR_G",sce,"[,",k,"]","<-","CR_G", sep=""))))
    eval(parse(text=(paste("Monte_spr",sce,"[,",k,"]","<-","spr", sep=""))))
    eval(parse(text=(paste("Monte_spr_C_1",sce,"[,",k,"]","<-","spr_C_1", sep=""))))
    eval(parse(text=(paste("Monte_spr_G",sce,"[,",k,"]","<-","spr_G", sep=""))))
    eval(parse(text=(paste("Monte_SEC_Y_per",sce,"[,",k,"]","<-","SEC_Y_per", sep=""))))
    eval(parse(text=(paste("Monte_fiscal_balance_per",sce,"[,",k,"]","<-","fiscal_balance_per", sep=""))))
    eval(parse(text=(paste("Monte_illiq",sce,"[,",k,"]","<-","illiq", sep=""))))
    eval(parse(text=(paste("Monte_LF",sce,"[,",k,"]","<-","LF", sep=""))))
    eval(parse(text=(paste("Monte_lf",sce,"[,",k,"]","<-","lf", sep=""))))
    eval(parse(text=(paste("Monte_yield_C",sce,"[,",k,"]","<-", "yield_C", sep=""))))
    eval(parse(text=(paste("Monte_yield_G",sce,"[,",k,"]","<-", "yield_G", sep=""))))
    
    for (i in 1:T){
      eval(parse(text=(paste("g_Y_per_mean", sce, "[",i,"]", "<-", "mean(Monte_g_Y_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("ur_per_mean", sce, "[",i,"]", "<-", "mean(Monte_ur_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("Y_mean", sce, "[",i,"]", "<-", "mean(Monte_Y", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("CO_PRI_mean", sce, "[",i,"]", "<-", "mean(Monte_CO_PRI", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("I_PRI_mean", sce, "[",i,"]", "<-", "mean(Monte_I_PRI", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("lambda_mean", sce, "[",i,"]", "<-", "mean(Monte_lambda", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("N_mean", sce, "[",i,"]", "<-", "mean(Monte_N", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("Y_POP_ratio_mean", sce, "[",i,"]", "<-", "mean(Monte_Y_POP_ratio", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("lambda_perworker_mean", sce, "[",i,"]", "<-", "mean(Monte_lambda_perworker", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("E_N_ratio_mean", sce, "[",i,"]", "<-", "mean(Monte_E_N_ratio", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("I_K_ratio_mean", sce, "[",i,"]", "<-", "mean(Monte_I_K_ratio", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("ur_per_mean", sce, "[",i,"]", "<-", "mean(Monte_ur_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("POP_mean", sce, "[",i,"]", "<-", "mean(Monte_POP", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("beta_S1_mean", sce, "[",i,"]", "<-", "mean(Monte_beta_S1", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("greenI_mean", sce, "[",i,"]", "<-", "mean(Monte_greenI", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("kappa_mean", sce, "[",i,"]", "<-", "mean(Monte_kappa", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("theta_per_mean", sce, "[",i,"]", "<-", "mean(Monte_theta_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("r_total_mean", sce, "[",i,"]", "<-", "mean(Monte_r_total", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("dsr_mean", sce, "[",i,"]", "<-", "mean(Monte_dsr", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("L_K_mean", sce, "[",i,"]", "<-", "mean(Monte_L_K", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("def_per_mean", sce, "[",i,"]", "<-", "mean(Monte_def_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("lev_B_mean", sce, "[",i,"]", "<-", "mean(Monte_lev_B", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("PORT_BCH_mean", sce, "[",i,"]", "<-", "mean(Monte_PORT_BCH", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("PORT_BGH_mean", sce, "[",i,"]", "<-", "mean(Monte_PORT_BGH", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("p_C_mean", sce, "[",i,"]", "<-", "mean(Monte_p_C", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("p_G_mean", sce, "[",i,"]", "<-", "mean(Monte_p_G", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("h_mean", sce, "[",i,"]", "<-", "mean(Monte_h", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("EMIS_mean", sce, "[",i,"]", "<-", "mean(Monte_EMIS", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("T_AT_mean", sce, "[",i,"]", "<-", "mean(Monte_T_AT", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("dep_E_mean", sce, "[",i,"]", "<-", "mean(Monte_dep_E", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("dep_M_mean", sce, "[",i,"]", "<-", "mean(Monte_dep_M", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("Forc_mean", sce, "[",i,"]", "<-", "mean(Monte_Forc", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("CO2_ATppm_mean", sce, "[",i,"]", "<-", "mean(Monte_CO2_ATppm", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("rho_mean", sce, "[",i,"]", "<-", "mean(Monte_rho", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("mu_mean", sce, "[",i,"]", "<-", "mean(Monte_mu", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("epsilon_mean", sce, "[",i,"]", "<-", "mean(Monte_epsilon", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("W_mean", sce, "[",i,"]", "<-", "mean(Monte_W", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("W_POP_ratio_mean", sce, "[",i,"]", "<-", "mean(Monte_W_POP_ratio", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("hazratio_mean", sce, "[",i,"]", "<-", "mean(Monte_hazratio", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("CAR_per_mean", sce, "[",i,"]", "<-", "mean(Monte_CAR_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("CR_mean", sce, "[",i,"]", "<-", "mean(Monte_CR", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("CR_C_1_mean", sce, "[",i,"]", "<-", "mean(Monte_CR_C_1", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("CR_G_mean", sce, "[",i,"]", "<-", "mean(Monte_CR_G", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("spr_mean", sce, "[",i,"]", "<-", "mean(Monte_spr", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("spr_C_1_mean", sce, "[",i,"]", "<-", "mean(Monte_spr_C_1", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("spr_G_mean", sce, "[",i,"]", "<-", "mean(Monte_spr_G", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("SEC_Y_per_mean", sce, "[",i,"]", "<-", "mean(Monte_SEC_Y_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("fiscal_balance_per_mean", sce, "[",i,"]", "<-", "mean(Monte_fiscal_balance_per", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("illiq_mean", sce, "[",i,"]", "<-", "mean(Monte_illiq", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("LF_mean", sce, "[",i,"]", "<-", "mean(Monte_LF", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("lf_mean", sce, "[",i,"]", "<-", "mean(Monte_lf", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("yield_C_mean", sce, "[",i,"]", "<-", "mean(Monte_yield_C", sce, "[",i,",])", sep=""))))
      eval(parse(text=(paste("yield_G_mean", sce, "[",i,"]", "<-", "mean(Monte_yield_G", sce, "[",i,",])", sep=""))))
      
    }
    
  }
  
  
  #-------------------------------------------------------------------------------------------------------------
  #PRINT RESULTS
  #-------------------------------------------------------------------------------------------------------------        
  
  var1<-sprintf ("%.3f", g_Y[2])
  var2<-sprintf ("%.3f", g_Y[3])
  var3<-sprintf ("%.3f", g_Y[34])
  var4<-sprintf ("%.3f", ur[34])
  var5<-sprintf ("%.2f", POP[34])
  var6<-sprintf ("%.2f", lf[34])
  var7<-sprintf ("%.2f", omega_ratio[34])
  var8<-sprintf ("%.2f", mu_ratio[34])
  var9<-sprintf ("%.2f", epsilon_ratio[34])
  var10<-sprintf ("%.2f", rho_ratio[34])
  var11<-sprintf ("%.2f", theta[34])
  var12<-sprintf ("%.2f", theta[84])
  var13<-sprintf ("%.4f", KG_KB[33])
  var14<-sprintf ("%.5f", sigma_0_optimal[2])
  var15<-sprintf ("%.2f", IG_cum[34]/34)
  var16<-sprintf ("%.2f", IC_cum[34]/34) 
  var17<-sprintf ("%.2f", B_GCB[6])
  var18<-sprintf ("%.2f", E_ratio[34])
  var19<-sprintf ("%.3f", CO2_ratio[34])
  var20<-sprintf ("%.1f", T_AT[84])
  var21<-sprintf ("%.3f", (g_Y_cum[34])/34)
  var22<-sprintf ("%.1f", (TAX_C_change[6]))
  var23<-sprintf ("%.1f", (SUB_change[7]))
  var24<-sprintf ("%.1f", (IG_GOV_change[6]))
  
  cat ("SCE:", sce, " ")
  cat ("g_Y[2]:", var1," ")
  cat ("g_Y[3]:", var2," ")
  cat ("g_Y[34]:", var3," ")
  cat ("ur[34]:", var4," ")
  cat ("POP[34]:", var5," ")
  cat ("lf[34]:", var6," ")
  cat ("omega_ratio[34]:", var7," ")
  cat ("mu_ratio[34]:", var8," ")
  cat ("epsilon_ratio[34]:", var9," ")
  cat ("rho_ratio[34]:", var10," ")
  cat ("theta[34]:", var11," ")
  cat ("theta[84]:", var12," ")
  cat ("KG_KB_2049:", var13," ")
  cat ("sigma_0_optimal:", var14," ")
  cat ("IG_annual[34]:", var15," ")
  cat ("IC_annual[34]:", var16," ")
  cat ("B_GCB[34]:", var17," ")
  cat ("E_ratio[34]:", var18," ")
  cat ("CO2_ratio[34]:", var19," ")
  cat ("T_AT[84]:", var20," ")
  cat ("g_Y_mean[34]:", var21," ")
  cat ("TAX_C_change[6]:", var22," ")
  cat ("SUB_change[7]:", var23," ")
  cat ("IG_GOV_change[6]:", var24," ")
  
  cat ("\n")
  cat ("\n")
  
  
  #-------------------------------------------------------------------------------------------------------------
  #MATRICES
  #-------------------------------------------------------------------------------------------------------------        
  
  matrixname<-paste("Macroeconomy",sce, sep="")
  assign (matrixname, (round(cbind(SEC_CB, SEC_CBred, A_K_ratio, HPM_K_ratio, D_K_ratio, A, A_N, HPM, D, V_HF, B_GCB, B_CCB, g_Y, gI, gC, g_K, ID_K_ratio, I_K_ratio, I_PRI_D, I_PRI_D_1, I_PRI_D_2, I_PRI_D_3, I_PRI_D_4, I_PRI, I_PRI_1, I_PRI_2, I_PRI_3, I_PRI_4, gGOVCO, SEC, SEC_H, SEC_B, SEC_Y, x_1, x_2, PORT_BCH, PORT_BGH, PORT_SECH, PORT_D, B, B_G, B_GH, B_C, B_CH, b_C, b_G, p_C, p_G, HPM, D, A, LC, LC_1, LC_2, LC_3, LC_4, LG, LG_1, LG_2, LG_3, LG_4, CAP, sh_NLG, sh_NLC_1, sh_NLC_2, sh_NLC_3, sh_NLC_4, CR, CR_C_1, CR_C_2, CR_C_3, CR_C_4, CR_G, dsr, def, illiq, L_K, lev_B, CAR, fiscal_balance, TAX, TAX_H, TAX_F, TAX_C, CO_GOV, D_T, D_TP, D_TF,  delta, LF, lf, POP, g_POP, um, ue, u, re, v, Y_POP_ratio, g_lambda, g_EN_ratio, g_YE_ratio, lambda, lambda_perworker, E_N_ratio, Y_E_ratio, CO_PRI, I_PRI, gI, theta, kappa, RC, RC_pseudo, beta, beta_S1, beta_S2, beta_S3, beta_S4, Y, Wbill, Interest, Depreciation,  Y_star, Y_star_M, Y_star_E, Y_star_N, Y_star_K, Y_H, TP, RP, DP, L, K_PRI, KC_PRI, KB, KC_PRI_1, KC_PRI_2, KC_PRI_3, KC_PRI_4, KG_PRI, KG_PRI_1, KG_PRI_2, KG_PRI_3, KG_PRI_4, KG_KB, L_K, r, r_total, IC_PRI_D, IC_PRI_D_1, IC_PRI_D_2, IC_PRI_D_3, IC_PRI_D_4, IC_PRI, IC_PRI_1, IC_PRI_2, IC_PRI_3, IC_PRI_4, IG_PRI_D, IG_PRI_D_1, IG_PRI_D_2, IG_PRI_D_3, IG_PRI_D_4,IG_PRI, IG_PRI_1, IG_PRI_2, IG_PRI_3, IG_PRI_4, NLC_D_1, NLC_D_2, NLC_D_3, NLC_D_4, NLG_D_1, NLG_D_2, NLG_D_3, NLG_D_4,  BP, N, Y_K_ratio, C_K_ratio, I_Y_ratio, Y_H_Y_ratio, Y_H_K_ratio, C_Y_ratio, sigma_0, sigma_0_optimal, h_optimal, h, g_h, g_Y_per, ur_per, greenI, p_C, yield_C,V_CB,  g_pC, g_bC, B_C_issue, p_G, yield_G, g_pG, g_bG, B_G_issue, IG_cum, IC_cum, w_G, w_C_1, w_C_2, w_C_3, w_C_4,BAILOUT, BAILOUT_CAR, BAILOUT_levB, int_G, int_C_1, int_C_2, int_C_3, int_C_4, spr_G, spr_C_1, spr_C_2, spr_C_3, spr_C_4, w_LT, sh_LG, sh_LC_1, sh_LC_2, sh_LC_3, sh_LC_4, KG_GOV_Y_ratio, KC_GOV_Y_ratio, KG_GOV, KC_GOV , IG_GOV, IC_GOV, IG_GOV_Y_ratio, IC_GOV_Y_ratio, KC_Y_ratio, KG_Y_ratio, KG_K_ratio, GVA_1, GVA_2, GVA_3, GVA_4, sh_EMIS_IN_1, sh_EMIS_IN_2, sh_EMIS_IN_3, sh_EMIS_IN_4, db_PRI_1, db_PRI_2, db_PRI_3, db_PRI_4, db_GOV, LG_L_ratio, LG_L_ratio_pseudo, tau_C, spr_1_pseudo, spr_1_pseudo_case_I, spr_1_pseudo_case_II, r_2_dCR_ddsr_max_pseudo, r_2_dCR_ddsr_max_pseudo_case_I, r_2_dCR_ddsr_max_pseudo_case_II, r_3_dCR_dCAR_max_pseudo, r_3_dCR_dCAR_max_pseudo_case_I, r_3_dCR_dCAR_max_pseudo_case_II, sh_GREEN_1, sh_GREEN_2, sh_GREEN_3, sh_GREEN_4), digits=8)))
  
  matrixname<-paste("Ecosystem",sce, sep="")
  assign (matrixname, (round(cbind(T_AT, dep_E, dep_M, REV_E, REV_M, D_T, hazratio, HWS, CO2_AT, CO2_ATppm, EMIS, Forc, F_EX,  theta, M, REC, CEN, O2, MY, W, W_POP_ratio, DEM, EMIS_IN, E, ER, EN, ED, mu, rho, omega, epsilon, omega_ratio, mu_ratio, rho_ratio, epsilon_ratio, theta_per, haz_flow), digits=4)))
  
  matrixname<-paste("Variables",sce, sep="")
  assign (matrixname, (round(cbind(A, B, BAILOUT, B_C, b_C, B_CCB, b_CCB, B_CH, b_CH, B_G, b_G, B_GCB, b_GCB, B_GH, b_GH, BP, BP_D, BP_U, CO_GOV, CO_PRI, CO_PRI_N, CAP, CAR, CBP, CEN, CO2_AT, CO2_LO, CO2_UP, CON_E, CON_M, coupon_C, coupon_G, CR, CR_C_1, CR_C_2, CR_C_3, CR_C_4, CR_G, D, DC, def, DEM, dep_E, dep_M, DL, DP, dsr, D_T, D_TF, D_TP, E, ED, EMIS, EMIS_IN, EMIS_L, EN, ER, zero, Forc, F_EX, GB, g_POP, g_RC, g_x_20, g_Y, g_beta_0, g_lambda, g_lambda_30, g_omega, hazratio, HPM, HWS, I_GOV, I_PRI, IC_GOV,IC_PRI, IC_PRI_1, IC_PRI_2, IC_PRI_3, IC_PRI_4, IG_GOV,IG_PRI, IG_PRI_1, IG_PRI_2, IG_PRI_3, IG_PRI_4, I_PRI_D, I_PRI_D_1, I_PRI_D_2, I_PRI_D_3, I_PRI_D_4, IC_PRI_D_1, IC_PRI_D_2, IC_PRI_D_3, IC_PRI_D_4, IG_PRI_D_1, IG_PRI_D_2, IG_PRI_D_3, IG_PRI_D_4,  illiq, int_C_1, int_C_2, int_C_3, int_C_4, int_G, K, zero, KB, K_GOV, K_PRI, KC, KC_GOV, KC_PRI, KC_PRI_1, KC_PRI_2, KC_PRI_3, KC_PRI_4, KG, KG_GOV, KG_PRI, KG_PRI_1, KG_PRI_2, KG_PRI_3, KG_PRI_4, L, LC, LC_1, LC_2, LC_3, LC_4, LG, LG_1, LG_2, LG_3, LG_4, lev_B, LF, lf_1, M, MY, N, NLC_D_1, NLC_D_2, NLC_D_3, NLC_D_4, NLG_D_1, NLG_D_2, NLG_D_3, NLG_D_4, O2, p_C, p_G, POP, r, RC, re, REC, RES_E, RES_M, REV_E, REV_M, RP, SEC, SEC_B, SEC_CB, SEC_H, zero,  SES, sh_NLG, sh_NLC_1, sh_NLC_2, sh_NLC_3, sh_NLC_4, sh_L, sh_LC_1, sh_LC_2, sh_LC_3, sh_LC_4, sh_LG, spr, spr_G, spr_C_1, spr_C_2, spr_C_3, spr_C_4, SUB, TAX, T_AT, TAX_C, TAX_F, TAX_H, T_LO, TP, TP_G, u, ue, um, ur, v, V_CB, V_H, V_HF, wage, W, w_LT, x_1, x_2, x_20, Y, Y_star, Y_star_E, Y_H, Y_HD, Y_HG,  yield_C, yield_G, Y_star_K, Y_star_M, Y_star_N, beta_S1, beta_S2, zero,beta_S3, beta_S4, beta_0_S1, beta_0_S2, beta_0_S3, beta_0_S4, delta, epsilon, theta, kappa, lambda, lambda_30, mu, rho, sigma_0, tau_C, omega), digits=6)))
  
  matrixname<-paste("Parameters",sce, sep="")
  assign (matrixname, (round(cbind(ad_K, ad_LF, ad_P, c_1, c_2, C_eff, car, CAR_min, CO2_AT_PRE, CO2_LO_PRE, CO2_UP_PRE, con_E, con_M, CR_max, db_PRI_1, db_PRI_2, db_PRI_3, db_PRI_4, db_GOV,def_max, def_0, def_1, def_2, F_2CO2, fex, g_tau_C, gov_C, gov_IG, gov_IC, gov_SUB, h, h_1, h_2, haz, int_A, int_D, int_S, l_1, lev_B_max, lf_2, lr, p, p_C_bar, p_G_bar, pr, r_0, r_1, r_2, r_3, rep, S, s_B, s_C, s_F, zero, s_G, s_W, sh_GVA_1, sh_GVA_2, sh_GVA_3, sh_GVA_4, sh_EMIS_IN_1, sh_EMIS_IN_2, sh_EMIS_IN_3, sh_EMIS_IN_4, spr_0, spr_1, spr_2, t_1, t_2, t_3, w_C_1, w_C_2, w_C_3, w_C_4, w_G, w_S, x_10, x_11, x_21, alpha_00, alpha_01, alpha_1, alpha_2, alpha_31, alpha_32, alpha_41, alpha_42, alpha_51, alpha_52, beta_1, beta_2, delta_0, epsilon_max, epsilon_min, zeta_1, zeta_2, zeta_3,zeta_4, zeta_5, zeta_6, zeta_7, eta_1, eta_2, eta_3, lambda_10, lambda_10prime, lambda_11, lambda_12, lambda_13, zero, lambda_14, lambda_15, lambda_20, lambda_20prime, lambda_21, lambda_22, lambda_23, lambda_24, lambda_25, lambda_30prime, lambda_31, lambda_32, lambda_33, lambda_34, lambda_35, lambda_40, lambda_40prime, lambda_41, lambda_42, lambda_43, lambda_44, lambda_45, mu_max, mu_min, xi, pi_1, pi_2, pi_3, pi_4, pi_5, pi_6, pi_7, pi_8, rho_max, sigma_1, sigma_2, tau_F, tau_H, phi_11, phi_12, phi_21, phi_22, phi_23, phi_32, phi_33), digits=8)))
  
  write.csv(get(paste0("Macroeconomy",sce)), paste0("_Macroeconomy",sce,".csv"))
  write.csv(get(paste0("Ecosystem",sce)), paste0("_Ecosystem",sce,".csv"))
  write.csv(get(paste0("Variables",sce)), paste0("_Variables",sce,".csv"))
  write.csv(get(paste0("Parameters",sce)), paste0("_Parameters",sce,".csv"))
  
  sce=sce+1
  
}


#for (i in 1:T){

#g_Y_per_mean_max_policy[i]<-max(g_Y_per_mean2[i], g_Y_per_mean5[i], g_Y_per_mean6[i])

#EMIS_mean_max_policy[i]<-max(EMIS_mean2[i], EMIS_mean5[i], EMIS_mean6[i])

#T_AT_mean_max_policy[i]<-max(T_AT_mean2[i], T_AT_mean5[i], T_AT_mean6[i])

#g_Y_per_mean_min_policy[i]<-min(g_Y_per_mean2[i], g_Y_per_mean5[i], g_Y_per_mean6[i])

#EMIS_mean_min_policy[i]<-min(EMIS_mean2[i], EMIS_mean5[i], EMIS_mean6[i])

#T_AT_mean_min_policy[i]<-min(T_AT_mean2[i], T_AT_mean5[i], T_AT_mean6[i])
#}


#-------------------------------------------------------------------------------------------------------------
#FIGURES
#-------------------------------------------------------------------------------------------------------------

#Font
windowsFonts(Selectedfont=windowsFont("Garamond"))
savefont<-par(family="Selectedfont")

#Positions and labels of tick marks
xlabel1<-c(1, 14, 24, 34, 44, 54, 64, 74, 84)  
xlabel2<-c("2017", "2030","2040","2050","2060", "2070", "2080", "2090", "2100") 

#Names/colours/lines for scenarios
Colour1="darkred"
  Colour2="darkgreen "
  Colour3= "navyblue"#"transparent"
    Colour4="seashell4"#"transparent"
      Colour_range_1="mistyrose2"
        Colour_range_2="darkseagreen3"#"darkseagreen3"##"transparent"
          Line1=1
          Line2=2
          Line3=3
          Line4=1
          Line_range=1
          Width1=1.7
          Width2=1
          Width3=0.5
          Width4=1
          Width_range=6
          Scenario1="Cenário base"
          Scenario2="Imposto sobre o carbono"
          Scenario3="Subsídio verde"
          Scenario4="Investimento público verde" 
          Range_policy= ""#"Green fiscal policy mix (sensitivity range)"# ""#
          
          #---------------------------
          # Figures
          #---------------------------
          
          library(Cairo)
          dev.off()
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-1.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(Y_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Produção (R$)", ylim=c(0, 1250), yaxp=c(0,1250,5),  cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(Y_mean2, lty=Line2, col=Colour2, lwd=Width2) 
          lines(Y_mean3, lty=Line3, col=Colour3, lwd=Width3) 
          lines(Y_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-2.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(Y_POP_ratio_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Produção per capita (R$)", ylim=c(0, 125), yaxp=c(0,125, 5),  cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(Y_POP_ratio_mean2, lty=Line2, col=Colour2, lwd=Width2) 
          lines(Y_POP_ratio_mean3, lty=Line3, col=Colour3, lwd=Width3) 
          lines(Y_POP_ratio_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-3.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(g_Y_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de crescimento da produção (%)",  ylim=c(0,5), yaxp=c(0,5,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(g_Y_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(g_Y_per_mean3, lty=Line3, col=Colour3, lwd=Width3) #valid when scenarios=3
          lines(g_Y_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topright", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-4.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(ur_per_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Taxa de desemprego (%)", ylim=c(0,16), yaxp=c(0,16,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(ur_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(ur_per_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(ur_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-5.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(r_total_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de lucro das empresas (%)",  ylim=c(4, 14), yaxp=c(4,14,5),  cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(r_total_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(r_total_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(r_total_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure 
          Cairo(file="_Policy_lines-macroeconomy-6.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(dsr_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Dívida das empresas", ylim=c(0.3,0.6), yaxp=c(0.3,0.6,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(dsr_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(dsr_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(dsr_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-7.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(L_K_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Alavancagem das empresas", ylim=c(0,0.5), yaxp=c(0,0.5,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(L_K_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(L_K_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(L_K_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-8.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(illiq_mean1, type="l", col=Colour1, lwd=Width1, ylab="Índice de iliquidez",  ylim=c(0.65,0.95), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(illiq_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(illiq_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(illiq_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-9.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(def_per_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Taxa padrão (%)", ylim=c(2,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(def_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(def_per_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(def_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-10.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(CR_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Racionamento total de crédito", ylim=c(0,0.4), yaxp=c(0,0.4,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(CR_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(CR_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(CR_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off()
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-11.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(CR_G_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Racionamento de crédito em empréstimos verdes", ylim=c(0,0.4), yaxp=c(0,0.4,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(CR_G_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(CR_G_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(CR_G_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-12.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(CR_C_1_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Racionamamento de crédito convencionais: empréstimos, mineração e serviços públicos", ylim=c(0,0.4), yaxp=c(0,0.4,8), cex.lab=1, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(CR_C_1_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(CR_C_1_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(CR_C_1_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-14.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(spr_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Spread sobre o total de empréstimos", ylim=c(0,0.08), yaxp=c(0,0.08,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(spr_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(spr_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(spr_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off()
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-15.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(spr_G_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Spread em empréstimos verdes", ylim=c(0,0.08), yaxp=c(0,0.08,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(spr_G_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(spr_G_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(spr_G_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-16.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(spr_C_1_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Spread concencionais: empréstimos, mineração e serviços públicos", ylim=c(0,0.08), yaxp=c(0,0.1,5), cex.lab=1, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(spr_C_1_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(spr_C_1_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(spr_C_1_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-18.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(lev_B_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Rácionamento de alavancagem dos bancos", ylim=c(0,40), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(lev_B_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(lev_B_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(lev_B_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-19.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(CAR_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de adequação de capital (%)",  ylim=c(5,35), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(CAR_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(CAR_per_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(CAR_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-20.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(SEC_Y_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Dívida pública/produto (%)",  ylim=c(0,400), yaxp=c(0,400,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(SEC_Y_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(SEC_Y_per_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(SEC_Y_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-17.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(fiscal_balance_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Deficit fiscal (%)",  ylim=c(-20,0), yaxp=c(-20,0,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(fiscal_balance_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(fiscal_balance_per_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(fiscal_balance_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          
          #Figure 
          Cairo(file="_Policy_lines-macroeconomy-21.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(PORT_BCH_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação de títulos convencionais", ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(PORT_BCH_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(PORT_BCH_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(PORT_BCH_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-22.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(PORT_BGH_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação de títulos verdes", ylim=c(0,0.08), yaxp=c(0,0.08,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(PORT_BGH_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(PORT_BGH_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(PORT_BGH_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-23.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(yield_C_mean1, type="l", col=Colour1, lwd=Width1, ylab="Rendimento de títulos convencionais",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(yield_C_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(yield_C_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(yield_C_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-24.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(yield_G_mean1, type="l", col=Colour1, lwd=Width1, ylab="",  ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(yield_G_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(yield_G_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(yield_G_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure 
          Cairo(file="_Policy_lines-macroeconomy-25.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(I_K_ratio_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de Investimento",  ylim=c(0,0.15), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(I_K_ratio_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(I_K_ratio_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(I_K_ratio_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-26.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(beta_S1_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Share of desired green inv., mining & utilities ", ylim=c(0.1,0.35), yaxp=c(0.1,0.35,5), cex.lab=1, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(beta_S1_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(beta_S1_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(beta_S1_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomright", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-27.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(greenI_mean1, type="l", col=Colour1, lwd=Width1, ylab="Share of actual green investment",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(greenI_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(greenI_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(greenI_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-28.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(kappa_mean1, type="l", col=Colour1, lwd=Width1, ylab="Share of green capital",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(kappa_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(kappa_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(kappa_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-29.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(POP_mean1, type="l", col=Colour1, lwd=Width1, ylab= "População", ylim=c(6,14), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(POP_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(POP_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(POP_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-30.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(LF_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Força de trabalho", ylim=c(2,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(LF_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(LF_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(LF_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-31.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(lf_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Força de trabalho/população", ylim=c(0.38,0.48), yaxp=c(0.38,0.48,5), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(lf_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(lf_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(lf_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-32.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(h_mean1, type="l", col=Colour1, lwd=Width1, ylab="Horas de trabalho anual",  ylim=c(1000,2000), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(h_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(h_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(h_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-1.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(EMIS_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Emissões de CO2/ano"), ylim=c(0,80), yaxp=c(0,80,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(EMIS_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(EMIS_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(EMIS_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure 
          Cairo(file="_Policy_lines-ecosystem-2.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(T_AT_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Temperatura"), ylim=c(0,5), yaxp=c(0,5,10),  cex.lab=1.2, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(T_AT_mean_max_policy, rev(T_AT_mean_min_policy)), col= c(Colour_range_2), border=NA)
          lines(T_AT_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(T_AT_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(T_AT_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          lines(T_AT_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2, Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-3.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(dep_E_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de depleção da  energia",  ylim=c(0,0.05), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(dep_E_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(dep_E_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(dep_E_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-4.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(dep_M_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de depleção da matéria",  ylim=c(0,0.2), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(dep_M_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(dep_M_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(dep_M_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-5.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(Forc_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression ("Forçamento radiativo") (W/m"^{2}*")"),  ylim=c(0,10), yaxp=c(0,10,5), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(Forc_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(Forc_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(Forc_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-6.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(CO2_ATppm_mean1, type="l", col=Colour1, lwd=Width1, ylab="Participação de energia renovável (%)", ylim=c(0, 100), yaxp=c(0,100,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(theta_per_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(theta_per_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(theta_per_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("bottomright", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-8.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(rho_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Recycling rate"),  ylim=c(0,1), yaxp=c(0,1, 5), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(rho_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(rho_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(rho_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-9.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(mu_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Material intensity (kg/US$)"),  ylim=c(0.4,1.2), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(mu_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(mu_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(mu_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-10.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(epsilon_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Energy intensity (EJ/trillion US$)"),  ylim=c(0,12), yaxp=c(0,12,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(epsilon_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(epsilon_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(epsilon_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-11.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(W_mean1, type="l", col=Colour1, lwd=Width1, ylab="desperdício (Gt/ano)",  ylim=c(0,100), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(W_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(W_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(W_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-12.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(W_POP_ratio_mean1, type="l", col=Colour1, lwd=Width1, ylab="Waste per capita (tonnes/year)",  ylim=c(0,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(W_POP_ratio_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(W_POP_ratio_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(W_POP_ratio_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-13.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(hazratio_mean1, type="l", col=Colour1, lwd=Width1, ylab="Haz. Waste stock per capita (tonnes)",  ylim=c(0, 20), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Year", side=1, line=1.5, cex=1.3)
          lines(hazratio_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(hazratio_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(hazratio_mean4, lty=Line4, col=Colour4, lwd=Width4)
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off()
          
          
          #matrixname<-paste("Table_3")
          #assign (matrixname, (round(rbind(c(g_Y_per_mean5[9], g_Y_per_mean1[9], g_Y_per_mean6[9], 0, g_Y_per_mean5[34], g_Y_per_mean1[34], g_Y_per_mean6[34], 0, g_Y_per_mean5[59], g_Y_per_mean1[59], g_Y_per_mean6[59], 0, g_Y_per_mean5[84], g_Y_per_mean1[84], g_Y_per_mean6[84], 0, g_Y_per_mean5[104], g_Y_per_mean1[104], g_Y_per_mean6[104]), c(g_Y_per_mean7[9], g_Y_per_mean2[9], g_Y_per_mean8[9], 0, g_Y_per_mean7[34], g_Y_per_mean2[34], g_Y_per_mean8[34], 0, g_Y_per_mean7[59], g_Y_per_mean2[59], g_Y_per_mean8[59], 0, g_Y_per_mean7[84], g_Y_per_mean2[84], g_Y_per_mean8[84], 0, g_Y_per_mean7[104], g_Y_per_mean2[104], g_Y_per_mean8[104]), c(g_Y_per_mean9[9], g_Y_per_mean3[9], g_Y_per_mean10[9], 0, g_Y_per_mean9[34], g_Y_per_mean3[34], g_Y_per_mean10[34], 0, g_Y_per_mean9[59], g_Y_per_mean3[59], g_Y_per_mean10[59], 0, g_Y_per_mean9[84], g_Y_per_mean3[84], g_Y_per_mean10[84], 0, g_Y_per_mean9[104], g_Y_per_mean3[104], g_Y_per_mean10[104]), c(g_Y_per_mean11[9], g_Y_per_mean4[9], g_Y_per_mean12[9], 0, g_Y_per_mean11[34], g_Y_per_mean4[34], g_Y_per_mean12[34], 0, g_Y_per_mean11[59], g_Y_per_mean4[59], g_Y_per_mean12[59], 0, g_Y_per_mean11[84], g_Y_per_mean4[84], g_Y_per_mean12[84], 0, g_Y_per_mean11[104], g_Y_per_mean4[104], g_Y_per_mean12[104]), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(lev_B_mean5[9], lev_B_mean1[9], lev_B_mean6[9], 0, lev_B_mean5[34], lev_B_mean1[34], lev_B_mean6[34], 0, lev_B_mean5[59], lev_B_mean1[59], lev_B_mean6[59], 0, lev_B_mean5[84], lev_B_mean1[84], lev_B_mean6[84], 0, lev_B_mean5[104], lev_B_mean1[104], lev_B_mean6[104]), c(lev_B_mean7[9], lev_B_mean2[9], lev_B_mean8[9], 0, lev_B_mean7[34], lev_B_mean2[34], lev_B_mean8[34], 0, lev_B_mean7[59], lev_B_mean2[59], lev_B_mean8[59], 0, lev_B_mean7[84], lev_B_mean2[84], lev_B_mean8[84], 0, lev_B_mean7[104], lev_B_mean2[104], lev_B_mean8[104]), c(lev_B_mean9[9], lev_B_mean3[9], lev_B_mean10[9], 0, lev_B_mean9[34], lev_B_mean3[34], lev_B_mean10[34], 0, lev_B_mean9[59], lev_B_mean3[59], lev_B_mean10[59], 0, lev_B_mean9[84], lev_B_mean3[84], lev_B_mean10[84], 0, lev_B_mean9[104], lev_B_mean3[104], lev_B_mean10[104]), c(lev_B_mean11[9], lev_B_mean4[9], lev_B_mean12[9], 0, lev_B_mean11[34], lev_B_mean4[34], lev_B_mean12[34], 0, lev_B_mean11[59], lev_B_mean4[59], lev_B_mean12[59], 0, lev_B_mean11[84], lev_B_mean4[84], lev_B_mean12[84], 0, lev_B_mean11[104], lev_B_mean4[104], lev_B_mean12[104]), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(def_per_mean5[9], def_per_mean1[9], def_per_mean6[9], 0, def_per_mean5[34], def_per_mean1[34], def_per_mean6[34], 0, def_per_mean5[59], def_per_mean1[59], def_per_mean6[59], 0, def_per_mean5[84], def_per_mean1[84], def_per_mean6[84], 0, def_per_mean5[104], def_per_mean1[104], def_per_mean6[104]), c(def_per_mean7[9], def_per_mean2[9], def_per_mean8[9], 0, def_per_mean7[34], def_per_mean2[34], def_per_mean8[34], 0, def_per_mean7[59], def_per_mean2[59], def_per_mean8[59], 0, def_per_mean7[84], def_per_mean2[84], def_per_mean8[84], 0, def_per_mean7[104], def_per_mean2[104], def_per_mean8[104]), c(def_per_mean9[9], def_per_mean3[9], def_per_mean10[9], 0, def_per_mean9[34], def_per_mean3[34], def_per_mean10[34], 0, def_per_mean9[59], def_per_mean3[59], def_per_mean10[59], 0, def_per_mean9[84], def_per_mean3[84], def_per_mean10[84], 0, def_per_mean9[104], def_per_mean3[104], def_per_mean10[104]), c(def_per_mean11[9], def_per_mean4[9], def_per_mean12[9], 0, def_per_mean11[34], def_per_mean4[34], def_per_mean12[34], 0, def_per_mean11[59], def_per_mean4[59], def_per_mean12[59], 0, def_per_mean11[84], def_per_mean4[84], def_per_mean12[84], 0, def_per_mean11[104], def_per_mean4[104], def_per_mean12[104]), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(T_AT_mean5[9], T_AT_mean1[9], T_AT_mean6[9], 0, T_AT_mean5[34], T_AT_mean1[34], T_AT_mean6[34], 0, T_AT_mean5[59], T_AT_mean1[59], T_AT_mean6[59], 0, T_AT_mean5[84], T_AT_mean1[84], T_AT_mean6[84], 0, T_AT_mean5[104], T_AT_mean1[104], T_AT_mean6[104]), c(T_AT_mean7[9], T_AT_mean2[9], T_AT_mean8[9], 0, T_AT_mean7[34], T_AT_mean2[34], T_AT_mean8[34], 0, T_AT_mean7[59], T_AT_mean2[59], T_AT_mean8[59], 0, T_AT_mean7[84], T_AT_mean2[84], T_AT_mean8[84], 0, T_AT_mean7[104], T_AT_mean2[104], T_AT_mean8[104]) , c(T_AT_mean9[9], T_AT_mean3[9], T_AT_mean10[9], 0, T_AT_mean9[34], T_AT_mean3[34], T_AT_mean10[34], 0, T_AT_mean9[59], T_AT_mean3[59], T_AT_mean10[59], 0, T_AT_mean9[84], T_AT_mean3[84], T_AT_mean10[84], 0, T_AT_mean9[104], T_AT_mean3[104], T_AT_mean10[104]) , c(T_AT_mean11[9], T_AT_mean4[9], T_AT_mean12[9], 0, T_AT_mean11[34], T_AT_mean4[34], T_AT_mean12[34], 0, T_AT_mean11[59], T_AT_mean4[59], T_AT_mean12[59], 0, T_AT_mean11[84], T_AT_mean4[84], T_AT_mean12[84], 0, T_AT_mean11[104], T_AT_mean4[104], T_AT_mean12[104])), digits=8)))
          
          #write.csv(Table_3,"_Table_3.csv")
          
          
          