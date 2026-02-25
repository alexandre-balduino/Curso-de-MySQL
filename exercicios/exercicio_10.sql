-- 1 - Faça uma lista com as 
profissões dos gafanhotos e seus 
respectivos quantitativos

SELECT profissao, COUNT(*)
FROM gafanhotos
GROUP BY profissao;