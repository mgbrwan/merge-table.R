#----
library(dplyr)
#L786_ramA過表達
df0 <- read.csv("/Users/mei/Desktop/record/Salmonella_study/L786.csv")
#L133_ramA壞掉
df1 <- read.csv("/Users/mei/Desktop/record/Salmonella_study/L133.csv")
#L1007_ramR壞掉
df2 <- read.csv("/Users/mei/Desktop/record/Salmonella_study/L1007.csv")
#ours
df3 <- read.csv("/Users/mei/Desktop/record/Salmonella_study/ours.csv")
#特定關鍵字
dfx <- read.csv("/Users/mei/Desktop/record/booster/separator/out/secretion system.csv")

df6 <- full_join(df0, df3)
df4 <- full_join(df1, df3)
df5 <- full_join(df2, df3)

#測試，兩個表格的標題不可以一樣，不然會上下疊在一起，而沒有融合
#df7 <- full_join(df1, df0)

write.csv(df4, file="L133vsOURS.csv",row.names = F)
write.csv(df5, file="L1007vsOURS.csv",row.names = F)
write.csv(df6, file="L786vsOURS.csv",row.names = F)
#write.csv(df7, file="L786vsL113.csv",row.names = F)

#特定關鍵字----
library(dplyr)
#L786_ramA過表達
df0 <- read.csv("/Users/mei/Desktop/record/truncated_ramRAs/CSV/r-L786vsOURS.csv")
dfx <- read.csv("/Users/mei/Desktop/record/booster/separator/out/secretion system.csv")
dfy <- full_join(df0, dfx)

write.csv(dfy, file="secretion system vs L786.csv",row.names = F)
