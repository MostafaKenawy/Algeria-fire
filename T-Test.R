names(After_Bejaia.Region.Dataset)[1] <- 'day'

tempmonth1 = After_Bejaia.Region.Dataset[1:30,4]
tempmonth2 = After_Bejaia.Region.Dataset[31:61,4]
tempmonth3 = After_Bejaia.Region.Dataset[62:92,4]
tempmonth4 = After_Bejaia.Region.Dataset[93:122,4]
tempfuldata = After_Bejaia.Region.Dataset[1:122,4]

tmonth1 = t.test(tempmonth1)
tmonth1

tmonth2 = t.test(tempmonth2)
tmonth2

tmonth3 = t.test(tempmonth3)
tmonth3

tmonth4 = t.test(tempmonth4)
tmonth4

tmonthfuldata = t.test(tempfuldata)
tmonthfuldata

two.sided.t.test = t.test(tempmonth1,tempmonth2 , var.equal = FALSE)
two.sided.t.test

x=After_Bejaia.Region.Dataset$Temperature
y=After_Bejaia.Region.Dataset$Classes

unpaierdttest=t.test(x,y,mu=0,alt="two.sided",conf=0.95,var.equal = F,paired = F)
unpaierdttest