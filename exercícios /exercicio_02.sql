-- Faça uma lista com os dados de 
todos os gafanhotos que nasceram 
entre 01 de Janeiro de 2000 e 
31 de Dezembro de 2015

SELECT * 
FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';
