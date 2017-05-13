library(foreign)
x= read.dta("gas_price.dta")
View(x)
library (car)
library(ggplot2)
library(MASS)
library(car)
reg1<-lm(e5~brent+aral+esso+jet+shell+total,data = x)
summary(reg1)
coefs1<-coef(reg1)
*/plot.e5 <- ggplot(statadata, aes(x = brent, y = e5)) +labs(x = "brent", y = "e5") +
  geom_point(alpha = 0.4, colour = "darkred") +
  geom_abline(intercept = coefs2[1], slope = coefs2[2], colour="green",size =0.75,
 +
  geom_abline(intercept = coefs2[1] + coefs2[3], slope = coefs2[2], colour = "yellow", size =
                0,75, show.legend = TRUE)             show.legend = TRUE)  +
  geom_abline(intercept = coefs2[1] + coefs2[4], slope = coefs2[2], colour = "darkgreen", size
              = 0,75, show.legend = TRUE) +
  geom_abline(intercept = coefs2[1] + coefs2[5], slope = coefs2[2], colour = "darkblue", size =
                0,75, show.legend = TRUE) +
  geom_abline(intercept = coefs2[1] + coefs2[6], slope = coefs2[2], colour = "black", size =
                0,75, show.legend = TRUE) +
  geom_abline(intercept = coefs2[1] + coefs2[7], slope = coefs2[2], colour = "orange", size =
*/                0,75, show.legend = TR
graph<-ggplot(x, aes(brent,e5))
graph+geom_point()
graph+geom_point()+geom_abline(intercept = coefs1[1],slope =coefs1[2],colour="blue",size=0.5)+
  geom_abline(intercept = coefs1[1] + coefs1[3], slope = coefs1[2], colour = "green",size=0.5)+
  geom_abline(intercept = coefs1[1] + coefs1[4], slope = coefs1[2], colour = "red",size=0.5)+
  geom_abline(intercept = coefs1[1] + coefs1[5], slope = coefs1[2], colour = "yellow",size=0.5)+
  geom_abline(intercept = coefs1[1] + coefs1[6], slope = coefs1[2], colour = "purple",size=0.5)+
  geom_abline(intercept = coefs1[1] + coefs1[7], slope = coefs1[2], colour = "darkblue",size=0.5)
graph+geom_point()+geom_abline(intercept = coefs1[1],slope =coefs1[2]+coefs1[3]+coefs1[4]+coefs1[5])
x$le5 <- with(x, log(e5))
reg1.ln <- lm(le5~brent+aral+esso+jet+shell+total, data=x)
summary(reg1.ln)
x$lbrent <- with(x, log(brent))
reg2.ln <- lm(e5~lbrent+aral+esso+jet+shell+total, data=x)
summary(reg2.ln)
reg3.ln <- lm(le5~lbrent+aral+esso+jet+shell+total, data=x)
summary(reg3.ln)