planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1    #extraindo um vetor de dados (temperatura) a partir da coluna T_z1 

minT      = min(temperatura)  #valor mínimo no vetor temperatura
maxT      = max(temperatura)  #valor máximo no vetor temperatura
meanT     = mean(temperatura) #média de valores no vetor temperatura
sdT       = sd(temperatura)   #desvio padrão dos valores no vetor temperatura
medianaT  = median(temperatura) #mediana dos valores no vetor temperatura

quantidade = length(temperatura[temperatura>meanT]) #temperaturas maiores que a mÃ©dia

#plot é uma função em R para plotagem de gráficos
plot(temperatura,        #passamos como parâmetro somente o eixo Y ou o eixo X e Y. 
                         #Como não passamos eixo X, ele considera como X o número de elementos no vetor temperatura
     type='l',           #tipo do gráfico plotado, ex: em pontos, linhas, etc
     xlab='Dia',         #label (rótulo) do eixo x
     ylab='T (°C)',      #label (rótulo) do eixo y
     main='Temperatura', #título do gráfico
     lwd=2,              #largura da linha
     col='blue',         #cor da linha
     ylim = c(0,100)      #intervalo do exio y
       )

#adicionando uma nova linha ao nosso gráfico
lines(planilha$UR_z1,col='red',lwd=2) 

#adicionando legenda ao gráfico
legend(
    'bottomleft',         #direção
    c('T','UR'),          #legenda
    col=c('blue','red'),  #cores
    lty=c(1,1)            #tamanho
    )