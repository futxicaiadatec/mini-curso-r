planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1    #extraindo um vetor de dados (temperatura) a partir da coluna T_z1 

minT      = min(temperatura)  #valor m�nimo no vetor temperatura
maxT      = max(temperatura)  #valor m�ximo no vetor temperatura
meanT     = mean(temperatura) #m�dia de valores no vetor temperatura
sdT       = sd(temperatura)   #desvio padr�o dos valores no vetor temperatura
medianaT  = median(temperatura) #mediana dos valores no vetor temperatura

quantidade = length(temperatura[temperatura>meanT]) #temperaturas maiores que a m�dia