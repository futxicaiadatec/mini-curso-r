planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1    #extraindo um vetor de dados (temperatura) a partir da coluna T_z1 da planilha (arquivo CSV)
umidade     = planilha$UR_z1   #extraindo um vetor de dados (umidade) a partir da coluna UR_z1  da planilha (arquivo CSV)

fit = lm(umidade~temperatura) #cria um modelo linear

print(fit) #exibe informações do modelo gerado, exemplo: coeficiente angular 

u2 = predict(fit,data.frame(x=temperatura)) #faz uma predição de umidade a partir da regressão

plot(umidade,type='l',lwd=2)  #plotando um gráfico com a umidade extraída da planilha
lines(u2,col='blue')          #e com a umidade predizida utilizando a função predict

summary(fit)                  #exibe alguns dados estatísticos do nosso modelo ex: r-squared (r quadrado)