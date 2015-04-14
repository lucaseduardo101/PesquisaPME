getResultSet <- function(consulta){
library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")

con <- dbConnect(PostgreSQL(),
user= "postgres",
password="leco1324",
dbname="PME-TESTE",
host="localhost",
port="5432")


df <- dbGetQuery(con, consulta)



dbDisconnect(con)

dbUnloadDriver(drv)

return(df)}

MediaHomens 	= getResultSet("select avg(v234) from pme_teste_r where v204 <> 99 and v214 <> 99 and v224 <> 9999 and v075 = 2013 and v203 = 1")
MediaMulheres 	= getResultSet("select avg(v234) from pme_teste_r where v204 <> 99 and v214 <> 99 and v224 <> 9999 and v075 = 2013 and v203 = 2")



