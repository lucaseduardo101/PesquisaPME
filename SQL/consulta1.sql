select distinct idade, sexo, diadenascimento, mesdenascimento, anodenascimento, d.numerodeserie ,d.numerodecontrole, d.painel, d.gruporotacional, de.mes, de.ano 
from pessoa p, domicilio d, domicilio_entrevista de  
where d.numerodeserie = 1 and d.numerodecontrole = 26000011 and d.painel = 'R' and d.gruporotacional = 1 
and d.numerodeserie = p.numerodeserie and d.numerodecontrole = p.numerodecontrole and d.painel = p.painel and d.gruporotacional = p.gruporotacional
and d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
order by de.ano, de.mes, diadenascimento,mesdenascimento, sexo

select * from domicilio

select * from domicilio_entrevista

select d.numerodeserie ,d.numerodecontrole, d.painel, d.gruporotacional, count(p.diadenascimento) from domicilio d, pessoa p  
where rmcodigo = 29 and d.numerodeserie = p.numerodeserie and d.numerodecontrole = p.numerodecontrole and d.painel = p.painel and d.gruporotacional = p.gruporotacional 
group by d.numerodeserie ,d.numerodecontrole, d.painel, d.gruporotacional
