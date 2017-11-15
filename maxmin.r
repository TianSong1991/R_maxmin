#首先转换为matrix格式
lmdata1 <- data.matrix(lmdata)

#中心化
center <- sweep(lmdata1, 2, apply(lmdata1, 2, min),'-')

#apply最大－最小
R <- apply(lmdata1, 2, max) - apply(lmdata1,2,min)   

#最大最小归一化
lmdata2<- sweep(center, 2, R, "/")       

#转换为data.frame格式
lmdata2 <- data.frame(lmdata2)