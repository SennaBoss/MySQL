use projeto_1;

ALTER TABLE tbAluno
ADD email_aluo varchar(100);

ALTER TABLE tbProfessor
ADD email_professor varchar(100);

ALTER TABLE tbProfessor
DROP COLUMN telefone_professor;

CREATE TABLE tbTurma  (
codigo_turma int auto_increment primary key,
codigo_disciplina_PK int,
periodo_letivo varchar(10),
foreign key (codigo_disciplina_PK) references tbDisciṕlina(codigo_disciṕlina);

CREATE TABLE tbAvaliacao (
codigo_avaliacao int auto_increment primary key,
matricula_aluno_PK int,
codigo_turma_PK int,
nota decimal(5, 2),
foreign key