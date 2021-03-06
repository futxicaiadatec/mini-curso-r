planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1    #extraindo um vetor de dados (temperatura) a partir da coluna T_z1 da planilha (arquivo CSV)
umidade     = planilha$UR_z1   #extraindo um vetor de dados (umidade) a partir da coluna UR_z1  da planilha (arquivo CSV)

fit = lm(umidade~temperatura) #cria um modelo linear

print(fit) #exibe informa��es do modelo gerado, exemplo: coeficiente angular 

u2 = predict(fit,data.frame(x=temperatura)) #faz uma predi��o de umidade a partir da regress�o

plot(umidade,type='l',lwd=2)  #plotando um gr�fico com a umidade extra�da da planilha
lines(u2,col='blue')          #e com a umidade predizida utilizando a fun��o predict

summary(fit)                  #exibe alguns dados estat�sticos do nosso modelo ex: r-squared (r quadrado)