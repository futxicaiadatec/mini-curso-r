planilha=read.csv('dados.csv',header=TRUE,sep=',',dec='.')

temperatura = planilha$T_z1    #extraindo um vetor de dados (temperatura) a partir da coluna T_z1 

minT      = min(temperatura)  #valor m�nimo no vetor temperatura
maxT      = max(temperatura)  #valor m�ximo no vetor temperatura
meanT     = mean(temperatura) #m�dia de valores no vetor temperatura
sdT       = sd(temperatura)   #desvio padr�o dos valores no vetor temperatura
medianaT  = median(temperatura) #mediana dos valores no vetor temperatura

quantidade = length(temperatura[temperatura>meanT]) #temperaturas maiores que a média

#plot � uma fun��o em R para plotagem de gr�ficos
plot(temperatura,        #passamos como par�metro somente o eixo Y ou o eixo X e Y. 
                         #Como n�o passamos eixo X, ele considera como X o n�mero de elementos no vetor temperatura
     type='l',           #tipo do gr�fico plotado, ex: em pontos, linhas, etc
     xlab='Dia',         #label (r�tulo) do eixo x
     ylab='T (�C)',      #label (r�tulo) do eixo y
     main='Temperatura', #t�tulo do gr�fico
     lwd=2,              #largura da linha
     col='blue',         #cor da linha
     ylim = c(0,100)      #intervalo do exio y
       )

#adicionando uma nova linha ao nosso gr�fico
lines(planilha$UR_z1,col='red',lwd=2) 

#adicionando legenda ao gr�fico
legend(
    'bottomleft',         #dire��o
    c('T','UR'),          #legenda
    col=c('blue','red'),  #cores
    lty=c(1,1)            #tamanho
    )