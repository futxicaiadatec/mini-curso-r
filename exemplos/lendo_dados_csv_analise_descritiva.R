planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1

minT=min(temperatura)
maxT=max(temperatura)
meanT=mean(temperatura)
sdT=sd(temperatura)
medianaT=median(temperatura)