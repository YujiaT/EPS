y= read.csv("28.csv")

y$s155f = (1-(y$s155/y$b)^(-1))*100
y$s163f = (1-(y$s163/y$b)^(-1))*100
y$s999f = (1-(y$s999/y$b)^(-1))*100

write.csv(y, file = "28f.csv")

z = read.csv("28f.csv")
