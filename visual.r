#Read CSV
marks = read.csv("marks2.csv")
#Plot marks from 2016 vs 2015
par(mfrow = c(2,1))
plot(formula = Y2016 ~ Y2015, data = marks, ylab = "2016",xlab = "2015",main = "Marks Distribution by Year and Regression Line(black)",col = "blue", cex = 1.5, pch = 16 )
#building the linear model 
fit=lm(formula = Y2016 ~ Y2015, data = marks)
#Details about the Regression Line
summary(fit)
coef(fit)
#Plot the regression line
abline(fit, cex = 3, col = "black")
text(coef(fit), labels = "Regression Line")
#predict the 2017 marks based on the regression model
pred = predict(fit, data.frame(Y2015 = marks$Y2016))
#Plot the predicted values in red
plot(pred, cex = 3, col = "red", pch = 22, type = "l", ylab = "2017", main = "green(original) vs red(predicted values) of Marks")
#Plot the original values in green
lines(marks$Y2017, cex = 3, pch = 22, col = "green")


