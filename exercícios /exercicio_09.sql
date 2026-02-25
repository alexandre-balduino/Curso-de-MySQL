-- Quantas gafanhotas mulheres tem 
mais de 1.90m de altura?

SELECT COUNT(*)
FROM gafanhotos
WHERE sexo = 'F' AND 
altura > 1.9;
