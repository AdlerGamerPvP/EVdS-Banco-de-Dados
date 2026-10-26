SELECT 
    salas.id_sala,
    GROUP_CONCAT(materias.id_materia ORDER BY materias.id_materia SEPARATOR ', ') AS id_materia,
    GROUP_CONCAT(materias.tipo_materia ORDER BY materias.id_materia SEPARATOR ', ') AS tipo_materia
FROM salas 
INNER JOIN salas_materias ON salas.id_sala = salas_materias.id_sala
INNER JOIN materias ON salas_materias.id_materia = materias.id_materia
GROUP BY salas.id_sala; 
-- Mostra quais materias uma sala pode ser utilizada para ensino, com os id's da materia e da sala junto.

SELECT 
    turmas.turma,
    GROUP_CONCAT(alunos.id_aluno ORDER BY alunos.id_aluno SEPARATOR ', ') AS id_aluno,
	GROUP_CONCAT(alunos.nome ORDER BY alunos.nome SEPARATOR ', ') AS nomes_aluno
FROM turmas
INNER JOIN alunos ON alunos.id_aluno = turmas.id_aluno
GROUP BY turmas.turma;   
-- Mostra quais alunos estão em cada turma.


select * from professores;
-- Mostra todos os professores.

select * from aulas;
-- Mostra todas as aulas registradas.

select * from alunos;
-- Mostra todos os alunos registrados.

select * from alunos
ORDER BY idade DESC;
-- Mostra todos os alunos registrados na ordem decrescente

select * from materias;
-- Mostra todas as materias registradas.

select * from salas_materias;
-- Mostra a conexão entre uma sala e suas materias sem organização

select nome, idade from alunos 
where idade > 15;
-- Mostra quais alunos tem a idade maior que 15

select nome, salario from professores 
where salario > (select avg(salario) from professores);
-- Mostra os professores com o salario maior que a media

SELECT 
    aulas.id_aulas,
    professores.nome AS professor,
    aulas.id_sala,
    aulas.turma AS turma,
    aulas.periodo
FROM aulas
INNER JOIN professores ON aulas.id_prof = professores.id_prof;
-- Mostra tudo relacionado a aulas, organizado e seguindo a ordem de id das aulas

 SELECT 
    turma, 
    COUNT(id_aluno) AS total_alunos 
FROM turmas 
GROUP BY turma;
-- Mostra quantos alunos tem em cada turma

SELECT nome, idade 
FROM alunos 
WHERE idade BETWEEN 9 AND 15
ORDER BY idade DESC;
-- Mostra os alunos que tem a idade entre 9 a 15 em ordem decrescente

SELECT * 
FROM alunos 
WHERE nome LIKE 'A%';
-- Mostra todos os nomes que com a letra alter

SELECT * FROM turmas WHERE turma <> '3AEM';
-- Mostra todas as turmas que não são a 3AEM