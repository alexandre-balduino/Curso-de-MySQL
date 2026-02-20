-- Chaves Extrangeiras: Muitos para Muitos

CREATE TABLE gafanhoto_assiste_curso (
id INT NOT NULL AUTO_INCREMENT,
data DATE,
idgafanhoto INT,
idcurso INT,
PRIMARY KEY (id),
FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos (id),
FOREIGN KEY (idcurso), REFERENCES cursos (idcurso)
) DEFAULT CHARSET= utf8;

-- Adiciona dados com INSERT INTO

INSERT INTO gafanhoto_assiste_curso VALUES
(default, '2025-03-01', 1, 2),
(default, '2025-12-22', 3, 6),
(default, '2026-01-01', 22, 12),
(default, '2025-05-12', 1, 19);

-- E visualisa com JOIN

SELECT g.id, g.nome, a.idgafanhoto, idcurso  FROM gafanhotos g
INNER JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto;

SELECT g.nome,  idcurso  FROM gafanhotos g
INNER JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto;

SELECT g.nome,  idcurso  FROM gafanhotos g
INNER JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
ORDER BY g.nome;

SELECT *  FROM gafanhotos g
INNER JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
INNER JOIN cursos c
ON a.idcurso = c.idcurso;

SELECT g.nome, c.nome   FROM gafanhotos g
INNER JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
INNER JOIN cursos c
ON a.idcurso = c.idcurso;

