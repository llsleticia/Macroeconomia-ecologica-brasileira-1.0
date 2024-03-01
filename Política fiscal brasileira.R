#-------------------------------------------------------------------------------------------------------------
# POLÍTICA FISCAL BRASILEIRA
#-------------------------------------------------------------------------------------------------------------

rm(list=ls(all=T))
T<-84
monte<-1 #Deve aumentar para 100 para simulações de Monte Carlo
loops<-4

#-------------------------------------------------------------------------------------------------------------
#VARIÁVEIS ENDÓGENAS
#-------------------------------------------------------------------------------------------------------------

#Matéria, desperdício e reciclagem
ETco2 = ETCO2/E1 + E2 + E3  + E4 + E5

#Energia
ENP=FPt
IEt=ENFt - EFFt
Et = ENFt + EFFt
EDt = ENFt + EFFt

#Emissões e mudanças climáticas
02 = Eco2 - Rt
RPt = PRCcum + REperCapita
REper Capita = RPcum/Polt

#Eficiência ecológica e tecnologia
RMt = TCAnual + RMt - RMt
TCEAnual = RMt + REst - Mt
EMt = dept/RMRt
RESt = RESt-1 - TC1
dept = Mt/RESt-1

#Determinação de saída
ENPt = FPt
IEt = ENF - EFFt
ET = ENFt + EFFt
EDt = ENFt + EFFt
REFt = REFt-1 - TCt
dept = Mt/RESt-1
ENPt = FPt
IEt = ENF - EFFt
Et = ENFt + EFFt
EDt = ENF + EFFt

#Empresas
LBTEt = NTEt + TJEt + ES1 + ES2 + ES3 + ES4 + ES5 + TJEVt + PCFt 
PTVt + VECt + QEVt + TCt + TVt + ECPt + DECt
LLEt = LBt + SVt - ILEt - IECt
LREt = LDe + TLTt
TUCt = TDt/Invt
IDT = ES1 + ES2 + ES3 + ES4 + ES5
PECco2 = RTCt-1 + RTVt-1 + PEt
PTtrab = TEt + CPt
CPt = TCPTt + TCP-1
TDt = PDt/PAt*100+PSex-1

#Famílias
PIDt = PICDFT1 + PICDFT2 + VNTCt + VNTVt
RTt = PTt + VNt/PMt
RTt = TCt + TCBCB + Vt + VTVt + TVBCB
PMTCt = VTCt + VTVt
VTTt = VTCt + VTVt
VEIt = TIt + PTEt-1
ILLiliq = DEt/Saqi
Saqi = St + Jt + ILst + REt + DCMt
GRCSi = GRCEVi + GRCEVt + dívidat + Lt
NCDt = GRCEVt/dívidat

#Banco Central do Brasil

LTBCB = TCt + TVt + NTPt
VTCVt = PTCVt + VTCBCt
NTTt = TCt + TVBCB
TGt = TCt + TVt + NPt

sce=1

for (j in 1:loops){
  
  #Variáveis de Monte Carlo
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte))
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte)) 
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte))
  assign(paste("Monte carlo",sce, sep=""), matrix(nrow=T,ncol=monte))
  
  #--------------------------------------------------------"------------------------------------------------------
  #VALORES PARA PARÂMETROS E VARIÁVEIS EXÓGENAS
  #--------------------------------------------------------------------------------------------------------------
  
  for (k in 1:monte) {
    
    for (i in 1:T) {
      #-------------------------------------------------
      # Cenários
      #-------------------------------------------------
      #Parâmetros necessários para os cenários
      E_S1<- #R$ 160.8 (Bi) 
        E_S2<- #R$ 364.22 (Bi) 
        E_S3<- #R$ 2.1 (Bi)
        E_S4<- #R$ 16.9 (Bi)
        E_S5<- #R$ 926 (Milhões)
        EMIS_S1<- 426.908.866# GtCO2 
        EMIS_S2<- 562.094.895# GtCO2
        EMIS_S3<- 825.463.183# GtCO2  
        EMIS_S4<- 76.136.079# GtCO2 
        EMIS_S5<- 85.273.595# GtCO2 
        EMIS_tot<-1.975.876.618#GtCO2
      
      #-------------
      # Cenário base
      #-------------
      if (j==1){
        Crescimento econômico 1.3 (%)
        Taxa de desemprego 12.7(%)
        População 206.8 (%)
        Participação de energia não fóssil na energia total 43.8(%)
        Taxa de intensidade energética 1.3 (%) 
        Taxa de intensidade dos resíduos sólidos  91.2 (%)
        Investimento anual em energia verde 0.8 (%)
        Taxa de juros 7 (%)
        Emissões de carbono 1.945 (GtCO2/Ano) (%)
        Taxa de inadimplência em empréstimos corporativos 3.2 (%)
        Rendimento de títulos convencionais 75.9 (%) 
        Rendimento de títulos verdes 0.2 (%)
      } 
      #----------------
      # Provável adoção de Imposto sobre o carbono
      #----------------
      if (j==2 & i<6) {
        E_S1<-1 #(Bi) 
        E_S2<-1 #(Bi)
        E_S3<-1 #(Bi)
        E_S4<-1 #(Bi)
        E_S5<-1 #(Bi)
        gov_IMP<- IMP_inicial/(1+g_baseline))
      }
      
      #-----------------------
      # Provável adoção de Subísidos verdes
      #-----------------------
      if (j==3 & i<6){
        E_S1<-1 #(Bi) 
        E_S2<-1 #(Bi)
        E_S3<-1 #(Bi)
        E_S4<-1 #(Bi)
        E_S5<-1 #(Bi)
        gov_SUB<-SUB_initial/(1+g_baseline))

      }
      #-----------------------
      # Provável Investimento público verde
      #-----------------------
      
      if (j==4 & i<6){
        E_S1<-1 #(Bi) 
        E_S2<-1 #(Bi)
        E_S3<-1 #(Bi)
        E_S4<-1 #(Bi)
        E_S5<-1 #(Bi)
        gov_INV<-INV_initial/(1+g_baseline))

      }
      if (j==4 & i>=6){
        E_S1<-1 #(Bi) 
        E_S2<-1 #(Bi)
        E_S3<-1 #(Bi)
        E_S4<-1 #(Bi)
        E_S5<-1 #(Bi)
        gov_IMP<- IMP_inicial/(1+g_baseline))
        gov_SUB<-SUB_initial/(1+g_baseline))
        gov_INV<-INV_initial/(1+g_baseline))


#--------------------------------
# Mix de políticas fiscais verdes
#--------------------------------
if (j==200 & i<6) {
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

}

if (j==200 & i>=6) {
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

#--------------------------------------------------------------------------------------------
# Combinação de políticas fiscais verdes
#--------------------------------------------------------------------------------------------
if (j==5 & i<6) {
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

}
if (j==5 & i>=6) {
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

}

#-------------------------------------------------------------------------------------------
# Combinação de políticas fiscais verdes (sensibilidade máxima)
#-------------------------------------------------------------------------------------------
if (j==6 & i<6) {
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
if (j==6 & i>=6) {
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}

#-----------------------------
#Sensibilidade mínima
#-----------------------------
if (j==16 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

}
if (j==16 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
#------------
if (j==17 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
if (j==17 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
#------------
if (j==18 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
if (j==18 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
#------------
if (j==19 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
if (j==19 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
#------------
if (j==20 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

#------------
if (j==21 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
if (j==21 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
#------------
if (j==22 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
if (j==22 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

#------------
if (j==23 & i<6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))
}
if (j==23 & i>=6){
  E_S1<-1 #(Bi) 
  E_S2<-1 #(Bi)
  E_S3<-1 #(Bi)
  E_S4<-1 #(Bi)
  E_S5<-1 #(Bi)
  gov_IMP<- IMP_inicial/(1+g_baseline))
  gov_SUB<-SUB_initial/(1+g_baseline))
  gov_INV<-INV_initial/(1+g_baseline))

---------------------------------------------------------------------------------------------------------------------------------------
  #MATRIZES
  -------------------------------------------------------------------------------------------------------------        
  
  matrixname<-paste("Macroecconomia",sce, sep="")
  
  matrixname<-paste("Ecossitema brasileiro",sce, sep="")
  
  matrixname<-paste("Variáveis",sce, sep="")
  
  write.csv(get(paste0("Macroeconomia",sce)), paste0("_Macroeconomia",sce,".csv"))
  write.csv(get(paste0("Ecossitema",sce)), paste0("_Ecossistema",sce,".csv"))
  write.csv(get(paste0("Variáveis",sce)), paste0("_Variáveis",sce,".csv"))
  write.csv(get(paste0("Parâmetros",sce)), paste0("_Parâmetros",sce,".csv"))
  
  sce=sce+1
  
}


#-------------------------------------------------------------------------------------------------------------
#FIGURAS
#-------------------------------------------------------------------------------------------------------------

#Font
windowsFonts(Selectedfont=windowsFont("Garamond"))
savefont<-par(family="Selectedfont")

#Posições e rótulos das marcas de escala
xlabel1<-c(1, 14, 24, 34, 44, 54, 64, 74, 84)  
xlabel2<-c("2017", "2030","2040","2050","2060", "2070", "2080", "2090", "2100") 

#Nomes/cores/linhas para cenários
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
          Range_policy= #"Combinação de políticas fiscais verdes (faixa de sensibilidade)"#
            
            #---------------------------
          # Figuras
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
          plot(dsr_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Inadimplência das empresas", ylim=c(0.3,0.6), yaxp=c(0.3,0.6,6), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(L_K_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Índice de alavancagem dos bancos", ylim=c(0,0.5), yaxp=c(0,0.5,10), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(def_per_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Taxa de empréstimos (%)", ylim=c(2,10), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(CR_G_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Racionamento de crédito - Empréstimos verdes", ylim=c(0,0.4), yaxp=c(0,0.4,8), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(CR_C_1_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Racionamento de crédito - Agricultura e pecuária", ylim=c(0,0.4), yaxp=c(0,0.4,8), cex.lab=1, xlab=" ", xaxt="n")
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
          plot(spr_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Total de empréstimos", ylim=c(0,0.08), yaxp=c(0,0.08,4), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(spr_G_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Empréstimos verdes", ylim=c(0,0.08), yaxp=c(0,0.08,4), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(spr_C_1_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Spread convencional de agricultura e pecuária", ylim=c(0,0.08), yaxp=c(0,0.1,5), cex.lab=1, xlab=" ", xaxt="n")
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
          plot(lev_B_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Alavancagem dos bancos", ylim=c(0,40), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(fiscal_balance_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Deficit fiscal/produto (%)",  ylim=c(-20,0), yaxp=c(-20,0,10), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(yield_G_mean1, type="l", col=Colour1, lwd=Width1, ylab="Rendimento dos títulos verdes",  ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(yield_G_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(yield_G_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(yield_G_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure 
          Cairo(file="_Policy_lines-macroeconomy-25.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(I_K_ratio_mean1, type="l", col=Colour1, lwd=Width1, ylab="Investimento verde desejado",  ylim=c(0,0.15), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(beta_S1_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação do investimento verde desejado - Agricultura e pecuária", ylim=c(0.1,0.35), yaxp=c(0.1,0.35,5), cex.lab=1, xlab=" ", xaxt="n")
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
          plot(greenI_mean1, type="l", col=Colour1, lwd=Width1, ylab="Participação do investimento verde real",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(greenI_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(greenI_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(greenI_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-28.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(kappa_mean1, type="l", col=Colour1, lwd=Width1, ylab="Participação do capital verde",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(kappa_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(kappa_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(kappa_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-29.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(POP_mean1, type="l", col=Colour1, lwd=Width1, ylab= "População (bilhões)", ylim=c(6,14), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(POP_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(POP_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(POP_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-macroeconomy-30.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(LF_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Força de trabalho (bilhões)", ylim=c(2,6), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(h_mean1, type="l", col=Colour1, lwd=Width1, ylab="Horas de trabalho anuais",  ylim=c(1000,2000), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(EMIS_mean1, type="l", col=Colour1, lwd=Width1, ylab=("Emissões de CO2/ano"), ylim=c(0,80), yaxp=c(0,80,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(EMIS_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(EMIS_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(EMIS_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-3.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(dep_E_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de esgotamento de energia",  ylim=c(0,0.05), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(dep_M_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de esgotamento de matéria",  ylim=c(0,0.2), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(dep_M_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(dep_M_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(dep_M_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-6.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(CO2_ATppm_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Concentração de CO2"),  ylim=c(0,1000), yaxp=c(0,1000,5), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(CO2_ATppm_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(CO2_ATppm_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(CO2_ATppm_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-7.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(theta_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Participação de energia renovável (%)", ylim=c(0, 100), yaxp=c(0,100,10), cex.lab=1.3, xlab=" ", xaxt="n")
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
          plot(rho_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Taxa de reciclagem"),  ylim=c(0,1), yaxp=c(0,1, 5), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(rho_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(rho_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(rho_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-9.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(mu_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Intensidade do material (kg/R$)"),  ylim=c(0.4,1.2), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(mu_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(mu_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(mu_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-10.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(epsilon_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Intensidade energética (EJ/trilhão de R$)"),  ylim=c(0,12), yaxp=c(0,12,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(epsilon_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(epsilon_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(epsilon_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-11.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(W_mean1, type="l", col=Colour1, lwd=Width1, ylab="Resíduos (Gt/ano)",  ylim=c(0,100), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(W_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(W_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(W_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-12.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(W_POP_ratio_mean1, type="l", col=Colour1, lwd=Width1, ylab="Resíduos per capita (toneladas/ano)",  ylim=c(0,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(W_POP_ratio_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(W_POP_ratio_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(W_POP_ratio_mean4, lty=Line4, col=Colour4, lwd=Width4) 
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="_Policy_lines-ecosystem-13.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(hazratio_mean1, type="l", col=Colour1, lwd=Width1, ylab="Estoques de resíduos per capita (tonnes)",  ylim=c(0, 20), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          lines(hazratio_mean2, lty=Line2, col=Colour2, lwd=Width2)
          lines(hazratio_mean3, lty=Line3, col=Colour3, lwd=Width3)
          lines(hazratio_mean4, lty=Line4, col=Colour4, lwd=Width4)
          legend("topleft", legend=c(Scenario1, Scenario2, Scenario3, Scenario4), lty=c(Line1, Line2, Line3, Line4), col=c(Colour1, Colour2, Colour3, Colour4), lwd=c(Width1,Width2,Width3, Width4), bty="n") 
          dev.off()
          
          
          #matrixname<-paste("Table_3")
          #assign (matrixname, (round(rbind(c(g_Y_per_mean5[9], g_Y_per_mean1[9], g_Y_per_mean6[9], 0, g_Y_per_mean5[34], g_Y_per_mean1[34], g_Y_per_mean6[34], 0, g_Y_per_mean5[59], g_Y_per_mean1[59], g_Y_per_mean6[59], 0, g_Y_per_mean5[84], g_Y_per_mean1[84], g_Y_per_mean6[84], 0, g_Y_per_mean5[104], g_Y_per_mean1[104], g_Y_per_mean6[104]), c(g_Y_per_mean7[9], g_Y_per_mean2[9], g_Y_per_mean8[9], 0, g_Y_per_mean7[34], g_Y_per_mean2[34], g_Y_per_mean8[34], 0, g_Y_per_mean7[59], g_Y_per_mean2[59], g_Y_per_mean8[59], 0, g_Y_per_mean7[84], g_Y_per_mean2[84], g_Y_per_mean8[84], 0, g_Y_per_mean7[104], g_Y_per_mean2[104], g_Y_per_mean8[104]), c(g_Y_per_mean9[9], g_Y_per_mean3[9], g_Y_per_mean10[9], 0, g_Y_per_mean9[34], g_Y_per_mean3[34], g_Y_per_mean10[34], 0, g_Y_per_mean9[59], g_Y_per_mean3[59], g_Y_per_mean10[59], 0, g_Y_per_mean9[84], g_Y_per_mean3[84], g_Y_per_mean10[84], 0, g_Y_per_mean9[104], g_Y_per_mean3[104], g_Y_per_mean10[104]), c(g_Y_per_mean11[9], g_Y_per_mean4[9], g_Y_per_mean12[9], 0, g_Y_per_mean11[34], g_Y_per_mean4[34], g_Y_per_mean12[34], 0, g_Y_per_mean11[59], g_Y_per_mean4[59], g_Y_per_mean12[59], 0, g_Y_per_mean11[84], g_Y_per_mean4[84], g_Y_per_mean12[84], 0, g_Y_per_mean11[104], g_Y_per_mean4[104], g_Y_per_mean12[104]), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(lev_B_mean5[9], lev_B_mean1[9], lev_B_mean6[9], 0, lev_B_mean5[34], lev_B_mean1[34], lev_B_mean6[34], 0, lev_B_mean5[59], lev_B_mean1[59], lev_B_mean6[59], 0, lev_B_mean5[84], lev_B_mean1[84], lev_B_mean6[84], 0, lev_B_mean5[104], lev_B_mean1[104], lev_B_mean6[104]), c(lev_B_mean7[9], lev_B_mean2[9], lev_B_mean8[9], 0, lev_B_mean7[34], lev_B_mean2[34], lev_B_mean8[34], 0, lev_B_mean7[59], lev_B_mean2[59], lev_B_mean8[59], 0, lev_B_mean7[84], lev_B_mean2[84], lev_B_mean8[84], 0, lev_B_mean7[104], lev_B_mean2[104], lev_B_mean8[104]), c(lev_B_mean9[9], lev_B_mean3[9], lev_B_mean10[9], 0, lev_B_mean9[34], lev_B_mean3[34], lev_B_mean10[34], 0, lev_B_mean9[59], lev_B_mean3[59], lev_B_mean10[59], 0, lev_B_mean9[84], lev_B_mean3[84], lev_B_mean10[84], 0, lev_B_mean9[104], lev_B_mean3[104], lev_B_mean10[104]), c(lev_B_mean11[9], lev_B_mean4[9], lev_B_mean12[9], 0, lev_B_mean11[34], lev_B_mean4[34], lev_B_mean12[34], 0, lev_B_mean11[59], lev_B_mean4[59], lev_B_mean12[59], 0, lev_B_mean11[84], lev_B_mean4[84], lev_B_mean12[84], 0, lev_B_mean11[104], lev_B_mean4[104], lev_B_mean12[104]), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(def_per_mean5[9], def_per_mean1[9], def_per_mean6[9], 0, def_per_mean5[34], def_per_mean1[34], def_per_mean6[34], 0, def_per_mean5[59], def_per_mean1[59], def_per_mean6[59], 0, def_per_mean5[84], def_per_mean1[84], def_per_mean6[84], 0, def_per_mean5[104], def_per_mean1[104], def_per_mean6[104]), c(def_per_mean7[9], def_per_mean2[9], def_per_mean8[9], 0, def_per_mean7[34], def_per_mean2[34], def_per_mean8[34], 0, def_per_mean7[59], def_per_mean2[59], def_per_mean8[59], 0, def_per_mean7[84], def_per_mean2[84], def_per_mean8[84], 0, def_per_mean7[104], def_per_mean2[104], def_per_mean8[104]), c(def_per_mean9[9], def_per_mean3[9], def_per_mean10[9], 0, def_per_mean9[34], def_per_mean3[34], def_per_mean10[34], 0, def_per_mean9[59], def_per_mean3[59], def_per_mean10[59], 0, def_per_mean9[84], def_per_mean3[84], def_per_mean10[84], 0, def_per_mean9[104], def_per_mean3[104], def_per_mean10[104]), c(def_per_mean11[9], def_per_mean4[9], def_per_mean12[9], 0, def_per_mean11[34], def_per_mean4[34], def_per_mean12[34], 0, def_per_mean11[59], def_per_mean4[59], def_per_mean12[59], 0, def_per_mean11[84], def_per_mean4[84], def_per_mean12[84], 0, def_per_mean11[104], def_per_mean4[104], def_per_mean12[104]), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), c(T_AT_mean5[9], T_AT_mean1[9], T_AT_mean6[9], 0, T_AT_mean5[34], T_AT_mean1[34], T_AT_mean6[34], 0, T_AT_mean5[59], T_AT_mean1[59], T_AT_mean6[59], 0, T_AT_mean5[84], T_AT_mean1[84], T_AT_mean6[84], 0, T_AT_mean5[104], T_AT_mean1[104], T_AT_mean6[104]), c(T_AT_mean7[9], T_AT_mean2[9], T_AT_mean8[9], 0, T_AT_mean7[34], T_AT_mean2[34], T_AT_mean8[34], 0, T_AT_mean7[59], T_AT_mean2[59], T_AT_mean8[59], 0, T_AT_mean7[84], T_AT_mean2[84], T_AT_mean8[84], 0, T_AT_mean7[104], T_AT_mean2[104], T_AT_mean8[104]) , c(T_AT_mean9[9], T_AT_mean3[9], T_AT_mean10[9], 0, T_AT_mean9[34], T_AT_mean3[34], T_AT_mean10[34], 0, T_AT_mean9[59], T_AT_mean3[59], T_AT_mean10[59], 0, T_AT_mean9[84], T_AT_mean3[84], T_AT_mean10[84], 0, T_AT_mean9[104], T_AT_mean3[104], T_AT_mean10[104]) , c(T_AT_mean11[9], T_AT_mean4[9], T_AT_mean12[9], 0, T_AT_mean11[34], T_AT_mean4[34], T_AT_mean12[34], 0, T_AT_mean11[59], T_AT_mean4[59], T_AT_mean12[59], 0, T_AT_mean11[84], T_AT_mean4[84], T_AT_mean12[84], 0, T_AT_mean11[104], T_AT_mean4[104], T_AT_mean12[104])), digits=8)))
          
          #write.csv(Table_3,"_Table_3.csv")
          
          
