-- 4 - Faça uma lista agrupada pela 
altura dos gafanhotos, mostrando 
quantas pessoas pesam mais de 100kg 
e que estão acima da média de altura 
de todos os cadastrados

SELECT altura, COUNT(*)
FROM gafanhotos
WHERE peso > 100
GROUP BY altura 
HAVING altura > ( 
SELECT AVG(altura) FROM gafanhotos 
);