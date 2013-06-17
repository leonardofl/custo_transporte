Montagem da base de dados;
===================

-- Criando consulta com as datas 
-- (foi executado somente uma vez e não precisa ser executado de novo)

create table mesano as 
select distinct ano, mes from (
select ano, mes from valor_transportes
union 
select year(Data) as ano, month(Data) as mes from salario_minimo
) as x
order by ano, mes;


-- Consulta: gera dados calculados para o tsv

select  
@val_onibus := IFNULL(vt.onibus, @val_onibus) as valor_onibus,
@val_metro  := IFNULL(vt.metro, @val_metro) as valor_metro,
@sal_cur    := IFNULL(sm.Salario_Minimo_valor_corrente, @sal_cur) as smin_corren,
@mes_ano := concat(d.ano, d.mes),
round( ((@val_onibus * 2.0 * 24.0 ) / @sal_cur) * 100 ) as perfil_1,
round( (((@val_onibus + (@val_metro / 2)) * 2.0 * 24.0 ) / @sal_cur) * 100 )  as perfil_2,
round( (((@val_onibus + (@val_metro / 2)) * 3.0 * 24.0 / 2.0 ) / @sal_cur) * 100 )  as perfil_3

from mesano d
left join valor_transportes vt on d.mes = vt.mes and d.ano = vt.ano 
left join salario_minimo sm on d.mes = month(sm.Data) and d.ano = year(sm.Data)
inner join ( select @val_onibus := 0, @val_metro :=0, @sal_cur :=0 ) rr on 1 =1 
;

-- regex: converte a saída da consulta acima no formato do tsv
-- (regex utilizada no Eclipse)

replace
^.*?(\d{4,5})[ \t]*(\d{2})[ \t]*(\d{2})[ \t]*(\d{2})$
by
\1\t\2\t\3\t\4




