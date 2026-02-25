-- Qual é o menor peso entre alunas 
mulheres que nasceram fora do Brasil 
entre 01 de Janeiro de 1990 e 
31 de Dezembro de 2000?

SELECT MIN(peso)
FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';
