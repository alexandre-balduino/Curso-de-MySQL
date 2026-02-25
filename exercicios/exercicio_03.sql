-- Faça uma lista com o nome de 
todos os homens que trabalham como 
programadores

SELECT nome 
FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'Programador';
