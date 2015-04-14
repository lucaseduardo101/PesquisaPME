################## CRIANDO COLUNAS COM OS RESPECTIVOS ID's IDENTIFICADOS ############
library(descr)
library(plyr)
DataPME$IDdomicilio = paste(DataPME$V035, DataPME$V040, DataPME$V050, DataPME$V060, DataPME$V063, sep = "")
#DataPME$cod = paste(DataPME$V070, DataPME$V072, DataPME$V075, sep = "")
DataPME$IDpessoa = paste(DataPME$IDdomicilio, DataPME$residente, DataPME$V201, DataPME$V203, DataPME$V204, DataPME$V214, DataPME$V224, 
                         sep = "")

DataPME = subset(DataPME, V204 != 99 & V214 != 99 & V224 != 9999)

################## RECUPERANDO RESIDENCIAS QUE ENTRARAM NO MÊS DE JANEIRO DE 2012 ####
Data = rbind(DataPME[which(DataPME$cod == "112012"),], # Janeiro, Primeira Resposta, Ano 2012
             DataPME[which(DataPME$cod == "222012"),],
             DataPME[which(DataPME$cod == "332012"),],
             DataPME[which(DataPME$cod == "442012"),],
             DataPME[which(DataPME$cod == "152013"),],
             DataPME[which(DataPME$cod == "262013"),],
             DataPME[which(DataPME$cod == "372013"),],
             DataPME[which(DataPME$cod == "482013"),])

################ CRIANDO UMA MATRIZ DE RESPOSTAS AS PESSOAS ENCONTRADAS NAQUELE MES ####
ID = c(Data$IDpessoa)
ID = unique(ID)
length(ID)
y = matrix(0, ncol = 9, nrow = length(ID))
for(i in 1:length(ID)){
  x = Data[which(Data$IDpessoa == ID[i]),]
  aux = sort(x$V072)
  aux = c(aux, rep(99,(8-length(aux))))
  for(j in 1:8){
    #ifelse(aux[j] == j, y[i,j] = 1 && y[i,9] = ID[i], y[i,j] = 0 && y[i,9] = ID[i])
    if(aux[j] != 99){
      y[i,aux[j]] = 1
      y[i,9] = ID[i]
    }
  }
}

matriz.respostas = as.data.frame(y)
matriz.respostas$respostas = paste0("(", matriz.respostas$V1,",", matriz.respostas$V2,",", matriz.respostas$V3,",", matriz.respostas$V4,",", matriz.respostas$V5,",", matriz.respostas$V6,",", matriz.respostas$V7,",", matriz.respostas$V8,")")
matriz.respostas$decimal = strtoi(matriz.respostas$V8)*2^7 + strtoi(matriz.respostas$V7)*2^6 + strtoi(matriz.respostas$V6)*2^5 + strtoi(matriz.respostas$V5)*2^4 + strtoi(matriz.respostas$V4)*2^3 + strtoi(matriz.respostas$V3)*2^2 + strtoi(matriz.respostas$V2)*2^1 + strtoi(matriz.respostas$V1)*2^0

############# PADRONIZANDO A MATRIZ DE RESPOSTA DE FORMA ANALISÁVEL #############
frequencia = as.data.frame(freq(matriz.respostas$decimal))
frequencia = cbind(Row.Names = rownames(frequencia), frequencia)
frequencia = arrange(frequencia, desc(frequencia$Percentual))
frequencia = frequencia[2:length(frequencia$Percentual),]
frequencia$acumulada = cumsum(frequencia$Percentual)
x = subset(matriz.respostas, select = c(respostas, decimal))
x = unique(x)
frequencia$binaria = NA

for(i in 1:dim(x[1])){
  for(j in 1:dim(x[1])){
    if(frequencia$Row.Names[i] == x$decimal[j]){
      frequencia$binaria[i] = x$respostas[j]
    }
  }
}