INSERT INTO materias(tipo_materia) values
('Português'),
('Matematica'),
('Ciências'),
('Artes'),
('Educação Fisica'),
('Quimica'),
('História')
;

INSERT INTO salas(id_sala) values
(1), (2), (3), (4), (5), (6)
;

INSERT INTO salas_materias(id_sala, id_materia) values
(1, 1), (1, 2),
(2, 6), (2, 3),
(3, 1), (3, 2), (3, 3), (3, 4)
;

insert into alunos(nome, idade) values
('José Silva', 16),
('Alan Mendes', 15),
('Alice Cordeiro', 10),
('André Rodrigues', 9),
('Rafael Coelho', 17),
('Alan de Oliveira', 16),
('Jean Monteiro', 15),
('Laura Garcia', 17)
;

insert into professores(nome, salario) values
('Pedro Maurício Neto', 2100),
('Carla Abreu Franco', 1850),
('Bruna Rocha', 2250),
('Dante Ronaldo de Camacho Sobrinho', 3450)
;

INSERT INTO turmas(turma, id_aluno) values
('5A', 3), 
('5A', 4),
('3AEM', 5),
('3AEM', 8),
('2AEM', 1),
('2AEM', 2),
('2AEM', 6),
('2AEM', 7)
;

insert into aulas(id_prof, id_sala, turma, periodo) values
(1, 2, '3AEM', 'Manhã'),
(2, 3, '3AEM', 'Tarde'),
(2, 1, '2AEM', 'Noite'),
(3, 3, '3AEM', 'Noite'),
(4, 1, '5A', 'Manhã')
;
