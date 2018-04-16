data <- read.csv("Data.csv", header=TRUE)
ethin<-subset(data,select= c(Year,Race.Ethnicity, Value))
glmmodel=glm(Value~Race.Ethnicity,data=ethin,family="binomial")
summary(glmmodel)


#Output:
  
Call:
  glm(formula = Value ~ Race.Ethnicity, family = "binomial", data = ethin)

Deviance Residuals: 
  Min       1Q   Median       3Q      Max  
-2.8930   0.1752   0.1752   0.3749   0.8271  

Coefficients:
  Estimate Std. Error z value Pr(>|z|)    
(Intercept)                                   4.16950    0.08456  49.306   <2e-16 ***
  Race.EthnicityAmerican Indian/Alaska Native  -1.81423    0.15843 -11.451   <2e-16 ***
  Race.EthnicityAsian/PI                       -2.31933    0.10725 -21.626   <2e-16 ***
  Race.EthnicityBlack                          -1.54940    0.11261 -13.759   <2e-16 ***
  Race.EthnicityHispanic                       -1.46992    0.11653 -12.614   <2e-16 ***
  Race.EthnicityMultiracial                    13.39657  171.84551   0.078    0.938    
Race.EthnicityOther                          -3.27247    0.11012 -29.718   <2e-16 ***
  Race.EthnicityWhite                          -1.14764    0.12191  -9.414   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

Null deviance: 9576.5  on 21917  degrees of freedom
Residual deviance: 8375.4  on 21910  degrees of freedom
AIC: 8391.4

Number of Fisher Scoring iterations: 16