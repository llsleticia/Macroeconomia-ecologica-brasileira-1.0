#-------------------------------------------------------------------------------------------------------------
# POLÍTICA MONETÁRIA BRASILEIRA
#-------------------------------------------------------------------------------------------------------------

rm(list=ls(all=T))
T<-84
monte<-1 #Deve aumentar para 100 para simulações de Monte Carlo
loops<-4

#-------------------------------------------------------------------------------------------------------------
#VARIÁVEIS ENDÓGENAS
#-------------------------------------------------------------------------------------------------------------

#Matéria, desperdício e reciclagem
ETco2 = ETCO2/E1 + E2 + E3  + E3 + E4

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
          Scenario3="Taxa de juros 1%"
          Scenario4="Taxa de juros 7%"

#-------------------------------------------------------------------------------------------------------------
#FIGURAS
#-------------------------------------------------------------------------------------------------------------        

#Font
windowsFonts(Selectedfont=windowsFont("Garamond"))
savefont<-par(family="Selectedfont")

#Posições e rótulos das marcas de escala
xlabel1<-c(1, 15, 25, 35, 45, 55, 65, 75, 85)  
xlabel2<-c("2017", "2030","2040","2050","2060", "2070", "2080", "2090", "2100") 

#Names/colours/lines for scenarios
Colour1="darkred"
  Colour2="navyblue"
    Colour3="black"
      Colour_range_1="mistyrose2"
        Colour_range_2="lightsteelblue2"
          Line1=1
          Line2=1
          Line3=2
          Line_range=1
          Width1=1.7
          Width2=0.7
          Width3=0.5
          Width_range=6
          Scenario1="Cenário base"
          Range_sensitivity="Faixa de sensibilidade"
          Range_policy= #"Comparação de política monetária verde (faixa de sensibilidade)#"
          Scenario2="Taxa de juros 1%"
          Scenario3="Taxa de juros 7%"
          #---------------------------
          # Figuras
          #---------------------------
          
          library(Cairo)
          dev.off()
          
          #Figure
          Cairo(file="Fig. 3a.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(g_Y_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de crescimento da produção (%)",  ylim=c(-2,6), yaxp=c(-2,6,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(g_Y_per_mean_max_sensitivity, rev(g_Y_per_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(g_Y_per_mean1, lty=Line1, col=Colour1, lidth1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") #valid when scenarios=11
          dev.off() 
          
          
          #Figure
          Cairo(file="Fig. 3b.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(theta_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Participação de energia renovável (%)", ylim=c(0, 100), yaxp=c(0,100,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(theta_per_mean_max_sensitivity, rev(theta_per_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(theta_per_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 3c.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(EMIS_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Emissões de CO2/Ano"), ylim=c(0,120), yaxp=c(0,120,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(EMIS_mean_max_sensitivity, rev(EMIS_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(EMIS_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          
          #Figure
          Cairo(file="Fig. 3e.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(r_total_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de lucro das empresas (%)",  ylim=c(0, 10), yaxp=c(0,10,5),  cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(r_total_mean_max_sensitivity, rev(r_total_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(r_total_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("bottomleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 3g.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(lev_B_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Índice de alavancagem dos bancos", ylim=c(0,50), yaxp=c(0,50,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(lev_B_mean_max_sensitivity, rev(lev_B_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(lev_B_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 3h.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(SEC_Y_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Dívida pública/produto (%)",  ylim=c(0,250), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(SEC_Y_per_mean_max_sensitivity, rev(SEC_Y_per_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(SEC_Y_per_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure 
          Cairo(file="Fig. 3i.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(PORT_BCH_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação de títulos convencionais", ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(PORT_BCH_mean_max_sensitivity, rev(PORT_BCH_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(PORT_BCH_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("bottomleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 3j.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(yield_C_mean1, type="l", col=Colour1, lwd=Width1, ylab="Rendimento de títulos convencionais",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(yield_C_mean_max_sensitivity, rev(yield_C_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(yield_C_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 3k.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(yield_G_mean1, type="l", col=Colour1, lwd=Width1, ylab="Rendimento dos títulos verdes",  ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(yield_G_mean_max_sensitivity, rev(yield_G_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(yield_G_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 3l.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(beta_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação do investimento verde desejado", ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(beta_mean_max_sensitivity, rev(beta_mean_min_sensitivity)), col='mistyrose2', border=NA)
          lines(beta_mean1, lty=Line1, col=Colour1, lwd=Width1)
          legend("topleft", legend=c(Scenario1, Range_sensitivity), lty=c(Line1, Line_range), col=c(Colour1, Colour_range_1), lwd=c(Width1,Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4a.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(g_Y_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de crescimento da produção (%)",  ylim=c(-2,6), yaxp=c(-2,6,8), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(g_Y_per_mean_max_policy, rev(g_Y_per_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(g_Y_per_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(g_Y_per_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4b.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(theta_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Participação de energia renovável (%)", ylim=c(0, 100), yaxp=c(0,100,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(theta_per_mean_max_policy, rev(theta_per_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(theta_per_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(theta_per_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4c.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(EMIS_mean1, type="l", col=Colour1, lwd=Width1, ylab=expression("Emissões/CO2"), ylim=c(0,120), yaxp=c(0,120,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(EMIS_mean_max_policy, rev(EMIS_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(EMIS_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(EMIS_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4e.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(r_total_mean1, type="l", col=Colour1, lwd=Width1, ylab="Taxa de lucro das empresas (%)",  ylim=c(0, 10), yaxp=c(0,10,5),  cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(r_total_mean_max_policy, rev(r_total_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(r_total_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(r_total_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("bottomleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4g.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(lev_B_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Índice de alavancagem dos bancos", ylim=c(0,50), yaxp=c(0,50,10), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(lev_B_mean_max_policy, rev(lev_B_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(lev_B_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(lev_B_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4h.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(SEC_Y_per_mean1, type="l", col=Colour1, lwd=Width1, ylab="Dívida pública/produto (%)",  ylim=c(0,250), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(SEC_Y_per_mean_max_policy, rev(SEC_Y_per_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(SEC_Y_per_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(SEC_Y_per_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure 
          Cairo(file="Fig. 4i.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(PORT_BCH_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação de títulos convencionais", ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(PORT_BCH_mean_max_policy, rev(PORT_BCH_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(PORT_BCH_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(PORT_BCH_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("bottomleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4j.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(yield_C_mean1, type="l", col=Colour1, lwd=Width1, ylab="Rendimento de títulos convencionais",  ylim=c(0,0.3), yaxp=c(0,0.3,6), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(yield_C_mean_max_policy, rev(yield_C_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(yield_C_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(yield_C_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4k.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(yield_G_mean1, type="l", col=Colour1, lwd=Width1, ylab="Rendimento dos títulos verdes",  ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(yield_G_mean_max_policy, rev(yield_G_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(yield_G_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(yield_G_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          #Figure
          Cairo(file="Fig. 4l.jpeg", width=1400, height=800, res=230)
          par(mar = c(3,3.3,1,1)+0.1,mgp=c(1.8,0.5,0), family="Garamond")
          plot(beta_mean1, type="l", col=Colour1, lwd=Width1, ylab= "Participação do investimento verde desejado", ylim=c(0,0.2), yaxp=c(0,0.2,4), cex.lab=1.3, xlab=" ", xaxt="n")
          axis(side=1, at=xlabel1, labels=xlabel2, cex.lab=1.3, cex.axis=0.95)
          mtext("Ano", side=1, line=1.5, cex=1.3)
          polygon(c(1:T, T:1), c(beta_mean_max_policy, rev(beta_mean_min_policy)), col='lightsteelblue2', border=NA)
          lines(beta_mean1, lty=Line1, col=Colour1, lwd=Width1)
          lines(beta_mean10, lty=Line2, col=Colour2, lwd=Width2)
          legend("topleft", legend=c(Scenario1, Scenario2, Range_policy), lty=c(Line1, Line2, Line_range), col=c(Colour1, Colour2, Colour_range_2), lwd=c(Width1,Width2, Width_range), bty="n") 
          dev.off() 
          
          
          
          
          
          
          