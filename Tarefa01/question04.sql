## Resposta Questão 04

select f.nome, f.salario, d.descricao
from funcionario f
  join departamento d on f.cod_depto = d.codigo
where f.codigo not in (
  select d.cod_gerente
  from departamento d
  where d.cod_gerente is not null)
  order by cod_depto;
  
