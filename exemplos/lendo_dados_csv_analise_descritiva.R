planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1    #extraindo um vetor de dados (temperatura) a partir da coluna T_z1 

minT      = min(temperatura)  #valor mínimo no vetor temperatura
maxT      = max(temperatura)  #valor máximo no vetor temperatura
meanT     = mean(temperatura) #média de valores no vetor temperatura
sdT       = sd(temperatura)   #desvio padrão dos valores no vetor temperatura
medianaT  = median(temperatura) #mediana dos valores no vetor temperatura

quantidade = length(temperatura[temperatura>meanT]) #temperaturas maiores que a média