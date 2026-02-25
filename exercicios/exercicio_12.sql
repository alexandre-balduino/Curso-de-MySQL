-- 3 - Faça uma lista com os 
gafanhotos que nasceram fora do 
Brasil, mostrando o país de origem e 
o total de pessoas nascidos lá. 
Só nos interessam os países que 
tiverem mais de 3 gafanhotos com 
essa nascionalidade

SELECT nacionalidade, COUNT(*) 
FROM gafanhotos 
WHERE nacionalidade != 'Brasil' 
GROUP BY nacionalidade 
HAVING COUNT(*) > 3; 