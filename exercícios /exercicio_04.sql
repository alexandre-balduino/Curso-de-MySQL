-- Faça uma lista com todos os 
dados de todas as mulheres que 
nasceram no Brasil e que tem o seu 
nome iniciado com a letra J

SELECT * 
FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';
