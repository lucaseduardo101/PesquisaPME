select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media


create view MediaEstudos1 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 1
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;


create view MediaEstudos2 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 2
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos3 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 3
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos4 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 4
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos5 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 5
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos6 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 6
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos7 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 7
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos8 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 8
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos9 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 9
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos10 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 10
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;

create view MediaEstudos11 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 11
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;


create view MediaEstudos12 As select d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional,   sum(p.qualcursograuelevado) / count(p.diadenascimento) media
from  domicilio d 
left join pessoa p on p.numerodeserie = d.numerodeserie and p.numerodecontrole = d.numerodecontrole and p.painel = d.painel and p.gruporotacional = d.gruporotacional
left join domicilio_entrevista de on d.numerodeserie = de.numerodeserie and d.numerodecontrole = de.numerodecontrole and d.painel = de.painel and d.gruporotacional = de.gruporotacional
where de.ano = 2012 and de.mes = 12
group by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional
order by d.numerodeserie, d.numerodecontrole, d.painel, d.gruporotacional, media;


select m1.numerodeserie, m1.numerodecontrole, m1.painel, m1.gruporotacional, m2.numerodeserie, m2.numerodecontrole, m2.painel, m2.gruporotacional, m1.media, m2.media from mediaEstudos1 m1, mediaEstudos2 m2
group by m1.numerodeserie, m1.numerodecontrole, m1.painel, m1.gruporotacional, m1.media,  m2.media, m2.numerodeserie, m2.numerodecontrole, m2.painel, m2.gruporotacional

