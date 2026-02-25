-- Faça uma lista com nome e 
nacionalidade de todos os homens que 
tem Silva no nome, não nasceram no 
Brasil e que tem menos de 100Kg

SELECT nome, nacionalidade 
FROM gafanhotos 
WHERE sexo = 'M' AND nome LIKE  '%Silva%' AND nacionalidade != 'Brasil' AND peso < 100;
