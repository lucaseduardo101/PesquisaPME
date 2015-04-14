getResultSet <- function(){
library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")

con <- dbConnect(PostgreSQL(),
user= "postgres",
password="leco1324",
dbname="PME-TESTE",
host="localhost",
port="5432")


df <- dbGetQuery(con, "select * from teste where v035 = '26' and v075= '2010' and v040 = '26000011'")



dbDisconnect(con)

dbUnloadDriver(drv)

return(df)}

getResultSet

