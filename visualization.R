rainmonth1 = After_Bejaia_Region_Dataset[1:30,7]
rainmonth2 = After_Bejaia_Region_Dataset[31:61,7]
rainmonth3 = After_Bejaia_Region_Dataset[62:92,7]
rainmonth4 = After_Bejaia_Region_Dataset[93:122,7]

Ws=After_Bejaia_Region_Dataset$Ws
mo=After_Bejaia_Region_Dataset$month
tm=After_Bejaia_Region_Dataset$Temperature
RH=After_Bejaia_Region_Dataset$RH

meanrain=sapply(c(rainmonth1,rainmonth2,rainmonth3,rainmonth4), mean, na.rm = TRUE)

png(file = "line_chart_label_colored.jpg")

plot(meanrain,type = "o", col = "blue", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")

dev.off()

tempmonth1 = After_Bejaia_Region_Dataset[1:30,4]
tempmonth2 = After_Bejaia_Region_Dataset[31:61,4]
tempmonth3 = After_Bejaia_Region_Dataset[62:92,4]
tempmonth4 = After_Bejaia_Region_Dataset[93:122,4]

summary(tempmonth1)
summary(tempmonth2)
summary(tempmonth3)
summary(tempmonth4)
tm1=c(25,28.25,29.80,31,34)
tm2=c(27,30.50,31.84,33,36)
tm3=c(28,34,35,35.50,37)
tm4=c(22,26,29,31,33)


png(file = "boxplot.png")

boxplot(Ws ~ mo, data = mtcars, xlab = "Months", ylab = "KM / H", main = "Wind Speed")

dev.off()


month = c("june","july","Aug","sep")

png(file = "barchart_months_revenue.png")

barplot(meanrain,names.arg=month,xlab="Month",ylab="Rain fall"
        ,col="blue", main="Rain fall chart", border="red")

dev.off()
