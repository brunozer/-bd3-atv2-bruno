CREATE VIEW vw_alunos_turma AS
SELECT a.nome AS nome_aluno, a.telefone_aluno, a.telefone_responsavel, a.email,
       t.sigla AS sigla_turma, t.nome AS nome_turma
FROM tbl_alunos a
INNER JOIN tbl_turma t ON a.cod_turma = t.cod_turma;



CREATE VIEW vw_disciplinas_turma AS
SELECT d.sigla AS sigla_disciplina, t.sigla AS sigla_turma, t.nome AS nome_turma
FROM tbl_disciplina d
INNER JOIN tbl_turma t ON d.cod_turma = t.cod_turma;



CREATE VIEW vw_alunos_turma_disciplina AS
SELECT a.nome AS nome_aluno, a.telefone_aluno, a.telefone_responsavel, a.email,
       t.sigla AS sigla_turma, t.nome AS nome_turma,
       d.sigla AS sigla_disciplina
FROM tbl_alunos a
INNER JOIN tbl_turma t ON a.cod_turma = t.cod_turma
INNER JOIN tbl_disciplina d ON t.cod_turma = d.cod_turma;
