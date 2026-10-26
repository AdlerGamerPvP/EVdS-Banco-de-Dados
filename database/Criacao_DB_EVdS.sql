create database if not exists escola_evds; 

use escola_evds; 
create table if not exists materias( 
	id_materia int auto_increment primary key, 
    tipo_materia varchar(100) not null 
    );
    
create table if not exists salas( 
	id_sala int auto_increment primary key
    );
    
create table if not exists salas_materias(
	id_sala int not null,
    id_materia int not null,
    primary key(id_sala, id_materia),
	foreign key(id_sala) references salas(id_sala),
	foreign key(id_materia) references materias(id_materia)
);
    
    
create table if not exists professores ( 
	id_prof int auto_increment primary key, 
    nome varchar(100) not null, 
    salario float not null
    ); 
    
    create table if not exists alunos ( 
    id_aluno int auto_increment primary key, 
    nome varchar(100) not null, 
    idade int not null
    );
    
create table if not exists turmas (
	turma varchar(40),
	id_aluno int not null,
	foreign key(id_aluno) references alunos(id_aluno)
);

    
create table if not exists aulas ( 
	id_aulas int auto_increment primary key,
	id_prof int not null,
    id_sala int not null,
    turma varchar(40) not null,
    periodo varchar(100) not null,
	foreign key(id_sala) references salas(id_sala),
    foreign key(id_prof) references professores(id_prof)
);