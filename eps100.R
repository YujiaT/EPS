source("libraries.R")

eps = read.csv("eps100a.csv")
eps$Kaolinite. = round(eps$Al2O3/(eps$TOTAL)*100,2)
eps$Dolomite. = round(eps$CaO/(eps$TOTAL)*100,2)

#rest mg is talc

eps$MgForTalc = eps$MgO - eps$CaO
eps$Talc. = round(eps$MgForTalc / (eps$TOTAL) *100,2)

#rest quartz

eps$remainSi = eps$SiO2 - (eps$Al2O3) - (eps$MgForTalc)
eps$Quartz. = round(eps$remainSi /(eps$TOTAL) *100, 2)
eps$new  = eps$Talc. + eps$Quartz. + eps$Kaolinite. + eps$Dolomite.

write.csv(eps, "eps2.csv")

lam = 0.17902*10^-9
t = lam/(2*(0.503*10^-9))
theta = 2*(asin(t))*360/(2*pi)
theta
