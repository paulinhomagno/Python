/*
PROJETO - MÓDULO BANCO DE DADOS
BANCO DE DADOS - LETS CODE

Neste projeto, vamos desenvolver as tabelas
para um banco de dados da Lets Code onde teremos 
tabelas sobre as turmas, alunos e notas e frequências.
Resolva os exercícios abaixo conforme as instruções
*/

/*
EXERCICIO 1
Crie 3 tabelas para este banco de dados, sendo elas:

- alunos
Variáveis:
	- aluno_id
	- nome_aluno
	- idade
	- bolsista
	- mensalidade
	
- turmas
Variáveis:
	- turma_id
	- nome_turma
	- professor_id
	- nome_professor
	- carga_horaria
	- dias_semana
	
- notas_freq
Variáveis:
	- turma_id
	- professor_id
	- aluno_id
	- frequencia
	- nota_projeto1
	- nota_projeto2
	- nota_prova
	- nps_prof
*/


DROP TABLE IF EXISTS tb_alunos;

CREATE TABLE tb_alunos(
	aluno_id SERIAL NOT NULL,
	nome_aluno VARCHAR(255) NOT NULL,
	idade SMALLINT NULL DEFAULT 0,
	bolsista CHAR(3)  NOT NULL DEFAULT 'Não',
	mensalidade DECIMAL (9,2) NOT NULL,
	PRIMARY KEY (aluno_id)
);

DROP TABLE IF EXISTS tb_turmas;

CREATE TABLE tb_turmas(
	turma_id SERIAL NOT NULL,
	nome_turma VARCHAR(255) NOT NULL,
	professor_id INT NOT NULL,
	nome_professor VARCHAR(255) NOT NULL,
	carga_horaria INT NOT NULL DEFAULT 0,
	dias_semana VARCHAR(255)
);

DROP TABLE IF EXISTS tb_notas_freq;

CREATE TABLE tb_notas_freq(
	turma_id SERIAL NOT NULL,
	professor_id INT NOT NULL,
	aluno_id SERIAL NOT NULL,
	frequencia INT NOT NULL,
	nota_projeto1 DECIMAL (4,2) NOT NULL DEFAULT 0,
	nota_projeto2 DECIMAL (4,2) NOT NULL DEFAULT 0,
	nota_prova DECIMAL (4,2) NOT NULL DEFAULT 0,
	nps_prof INT,
	FOREIGN KEY (aluno_id) REFERENCES tb_alunos
);
/*
EXERCICIO 2
Preencha as tabelas com os seguintes dados:
*/
INSERT INTO tb_alunos (aluno_id, nome_aluno, idade, bolsista, mensalidade)
VALUES
	(0001, 'João Paulo', 20, 'Não', 600),
	(0002, 'Agatha Cristina', 28, 'Sim', 0),
	(0003, 'Sandro Silva', 35, 'Não', 300),
	(0004, 'Luiza Machado', 24, 'Não', 300),
	(0005, 'Amanda Oliveira', 27, 'Não', 600),
	(0006, 'Rafael Pereira', 44, 'Sim', 0),
	(0007, 'Lucas Pires', 18, 'Não', 600),
	(0008, 'Gustavo Carvalho', 21, 'Não', 300),
	(0009, 'Paulo Vitor', 33, 'Não', 300),
	(0010, 'Nathan Souza', 35, 'Não', 600),
	(0011, 'Julia Menezes', 19, 'Sim', 0),
	(0012, 'Cristiano Hencke', 27, 'Não', 600),
	(0013, 'Monique Santos', 24, 'Não', 300),
	(0014, 'Everton Alex', 24, 'Sim', 0),
	(0015, 'Alexandre Silva', 23, 'Não', 300),
	(0016, 'Pedro Luiz', 20, 'Não', 300),
	(0017, 'Cintia Rodrigues', 18, 'Não', 600),
	(0018, 'Amanda Machado', 29, 'Sim', 0),
	(0019, 'Gustavo Silva', 32, 'Sim', 0),
	(0020, 'Maria Antonia', 34, 'Não', 600),
	(0021, 'Gervasio Oliveira', 65, 'Não', 300),
	(0022, 'Lucas Silva', 30, 'Não', 300),
	(0023, 'Jessica Siqueira', 21, 'Sim', 0),
	(0024, 'Noah Reis', 18, 'Não', 600),
	(0025, 'Ingrid Silva', 18, 'Não', 600),
	(0026, 'Luiz Henrique', 22, 'Sim', 0),
	(0027, 'Antonio Pagano', 25, 'Não', 300),
	(0028, 'Wesley Sousa', 27, 'Não', 300),
	(0029, 'Marisa Santos', 27, 'Não', 300),
	(0030, 'Juliana Melo', 18, 'Não', 600),
	(0031, 'Bruno Kenji', 18, 'Sim', 0),
	(0032, 'Caroline Silva', 31, 'Não', 600),
	(0033, 'Gustavo Marques', 34, 'Não', 600),
	(0034, 'Vinicius Camargo', 25, 'Sim', 0),
	(0035, 'Gisele Marquez', 23, 'Não', 300),
	(0036, 'Jair Vieira', 21, 'Não', 600),
	(0037, 'Paulo Pinheiro', 22, 'Sim', 0),
	(0038, 'Rafael Costa', 30, 'Não', 600),
	(0039, 'Ricardo Novaes', 32, 'Não', 600),
	(0040, 'Sonia Cristina', 22, 'Não', 300),
	(0041, 'Luis antonio', 18, 'Sim', 0),
	(0042, 'Sofia Antonia', 24, 'Não', 600),
	(0043, 'Ana Maria', 26, 'Sim', 0),
	(0044, 'Julio Pieri', 20, 'Não', 600);

SELECT * FROM tb_alunos;

INSERT INTO tb_turmas (turma_id, nome_turma, professor_id, nome_professor, carga_horaria, dias_semana)
VALUES
	(0001, 'Python',         0001, 'Cleber Silva',   80,  'Segunda | Quarta'),
	(0002, 'Data Science',   0002, 'Pedro Henrique', 120, 'Segunda | Quarta | Sexta'),
	(0003, 'Python',         0001, 'Cleber Silva',   80,  'Terça | Quinta'),
	(0004, 'Banco de Dados', 0003, 'Anderson Sousa', 60,  'Segunda | Quarta'),
	(0005, 'Python',         0001, 'Cleber Silva',   80,  'Sábado'),
	(0006, 'Banco de Dados', 0003, 'Anderson Sousa', 60,  'Terça | Quinta'),
	(0007, 'Data Science',   0002, 'Pedro Henrique', 120, 'Sábado');

SELECT * FROM tb_turmas;

INSERT INTO tb_notas_freq(turma_id, professor_id, aluno_id, frequencia, nota_projeto1, nota_projeto2, nota_prova, nps_prof)
VALUES
	(0001, 0001, 0001, 90, 8, 10, 7, NULL),
	(0001, 0001, 0002, 95, 10, 9, 10, 90),
	(0001, 0001, 0003, 85, 10, 8.5, 8, 92),
	(0001, 0001, 0004, 100, 9, 9.5, 9.5, 88),
	(0001, 0001, 0005, 100, 9.5, 10, 10, 94),
	(0001, 0001, 0006, 95, 8, 10, 9, 100),
	(0001, 0001, 0007, 190, 10, 7.5, 9, NULL),
	(0002, 0002, 0008, 70, 7, 7.5, 6.5, 75),
	(0002, 0002, 0009, 75, 9, 9, 9, 80),
	(0002, 0002, 0010, 100, 10, 10, 10, 90),
	(0002, 0002, 0011, 80, 8.5, 8, 8.5, 100),
	(0002, 0002, 0012, 95, 9, 10, 7.5, 95),
	(0002, 0002, 0013, 80, 10, 10, 10, 88),
	(0003, 0001, 0014, 100, 8, 10, 10, NULL),
	(0003, 0001, 0015, 80, 9.5, 9, 9, 92),
	(0003, 0001, 0016, 90, 9, 9.5, 10, 90),
	(0003, 0001, 0017, 90, 10, 9, 9, 88),
	(0003, 0001, 0018, 85, 9.5, 8, 10, 95),
	(0003, 0001, 0019, 75, 10, 9.5, 8, 87),
	(0003, 0001, 0020, 90, 9, 8.5, 8, 75),
	(0003, 0001, 0021, 95, 8, 10, 10, 91),
	(0004, 0003, 0001, 100, 10, 10, 10, 100),
	(0004, 0003, 0002, 85, 9.5, 8, 8, NULL),
	(0004, 0003, 0003, 95, 9, 9, 10, 84),
	(0004, 0003, 0004, 85, 8.5, 9, 8.5, 86),
	(0004, 0003, 0005, 80, 9, 7, 7.5, 88),
	(0004, 0003, 0006, 95, 9.5, 10, 9, 90),
	(0004, 0003, 0007, 90, 9, 9, 9.5, 95),
	(0005, 0001, 0022, 100, 10, 9.5, 10, 90),
	(0005, 0001, 0023, 100, 9.5, 10, 10, 100),
	(0005, 0001, 0024, 90, 10, 10, 9, 98),
	(0005, 0001, 0025, 100, 10, 10, 10, NULL),
	(0005, 0001, 0026, 100, 9, 9, 9.5, 100),
	(0005, 0001, 0027, 95, 10, 10, 10, 95),
	(0006, 0003, 0028, 100, 8, 10, 9.5, NULL),
	(0006, 0003, 0029, 80, 8.5, 9.5, 10, 85),
	(0006, 0003, 0030, 85, 9, 8, 8, 82),
	(0006, 0003, 0031, 90, 9, 7.5, 9, 85),
	(0006, 0003, 0032, 75, 8.5, 10, 9, NULL),
	(0006, 0003, 0033, 80, 7.5, 8, 7, 95),
	(0006, 0003, 0034, 35, 9, 3.5, 0, NULL),
	(0006, 0003, 0035, 80, 8, 8, 9.5, 84),
	(0007, 0002, 0036, 70, 7, 7.5, 6.5, 75),
	(0007, 0002, 0037, 75, 9, 9, 9, 80),
	(0007, 0002, 0038, 100, 10, 10, 10, 90),
	(0007, 0002, 0039, 80, 8.5, 8, 8.5, 100),
	(0007, 0002, 0040, 95, 9, 10, 7.5, 95),
	(0007, 0002, 0041, 80, 7, 10, 10, NULL),
	(0007, 0002, 0042, 80, 9, 8.5, 9, 80),
	(0007, 0002, 0043, 80, 8.5, 9, 9, 86),
	(0007, 0002, 0044, 80, 9, 9.5, 10, 94);
	
SELECT * FROM tb_notas_freq;

/*
EXERCICIO 3

Calcule a média do NPS dos professores (arredondado para duas casas),
ignorando as notas nulas e ordenando da maior média para a menor;
*/

SELECT A.professor_id,
		A.nome_professor,
		ROUND(AVG(nps_prof),2) AS media_nps
FROM tb_turmas AS A
RIGHT JOIN tb_notas_freq AS B ON A.professor_id = B.professor_id
GROUP BY 1,2
ORDER BY 3 DESC;


/*
EXERCICIO 4
Calcule a média final de cada um dos alunos de cada turma, sendo a média
calculada da seguinte forma: 0.3 * projeto1 + 0.3 * projeto2 + 0.4 * prova
*/

SELECT * FROM tb_alunos;
SELECT * FROM tb_notas_freq;


CREATE OR REPLACE TEMP VIEW media_alunos AS
SELECT A.aluno_id,
		A.nome_aluno,
		B.nota_projeto1,
		B.nota_projeto2,
		B.nota_prova,
		ROUND((B.nota_projeto1 * 0.3) + (B.nota_projeto2 *0.3)+ (B.nota_prova * 0.4)) AS media_aluno
FROM tb_alunos AS A
RIGHT JOIN tb_notas_freq AS B ON A.aluno_id = B.aluno_id
GROUP BY 1,2,3,4,5;

SELECT * FROM media_alunos;

/*
EXERCICIO 5
Conte a quantidade de alunos que seriam reprovados por turma, sendo o criterio de reprovação
que a nota final (calculada no exercício anterior) seja menor 7 ou que a frequencia seja menor
que 70%. Ordene da turma com mais reprovados para a com menos
*/

SELECT * FROM media_alunos;
SELECT * FROM tb_notas_freq;
SELECT *FROM tb_turmas;

SELECT B.turma_id,
COUNT(A.aluno_id) AS alunos_reprovados
FROM media_alunos AS A
RIGHT JOIN tb_notas_freq AS B ON A.aluno_id = B.aluno_id
WHERE A.media_aluno <= 7  OR B.frequencia <= 70
GROUP BY 1
ORDER BY 2 DESC;

/*
EXERCICIO 6
Conte a quantidade de bolsista matriculados por turma
*/

SELECT * FROM tb_alunos;
SELECT * FROM tb_notas_freq;
SELECT * FROM tb_turmas;

SELECT A.turma_id,
		C.nome_turma,
		COUNT(CASE WHEN B.bolsista = 'Sim' THEN 1 END) AS quant_bolsistas
FROM tb_notas_freq AS A
RIGHT JOIN tb_alunos AS B ON A.aluno_id = B.aluno_id
RIGHT JOIN tb_turmas AS C ON A.turma_id = C.turma_id
GROUP BY 1,2;

/*
EXERCICIO 7
Calcule a média de idade por turma (arredonda para 1 casa) e também a maior idade por turma
*/

SELECT A.turma_id,
		C.nome_turma,
		ROUND(AVG(B.idade),1) AS media_idade,
		MAX(B.idade) AS idade_maior
FROM tb_notas_freq AS A
RIGHT JOIN tb_alunos AS B ON A.aluno_id = B.aluno_id
RIGHT JOIN tb_turmas AS C ON A.turma_id = C.turma_id
GROUP BY 1,2;


/*
EXERCICIO 8
Calcule o total faturado por turma, sendo o total faturado o valor
da mensalidade paga pelos alunos, Faça esse calculo agrupado por
turma_id e nome_turma
*/

SELECT * FROM tb_alunos;
SELECT * FROM tb_notas_freq;
SELECT * FROM tb_turmas;

SELECT A.turma_id,
		C.nome_turma,
		SUM(B.mensalidade)
FROM tb_notas_freq AS A
RIGHT JOIN tb_alunos AS B ON A.aluno_id = B.aluno_id
RIGHT JOIN tb_turmas AS C ON A.turma_id = C.turma_id
GROUP BY 1,2
ORDER BY 3 DESC;		


/*
EXERCICIO 9
Calcule quanto cada um dos professores receberam por turma.
O salário do professor é 5% do total das mensalidades * carga horário do curso

Dica: Você irá utilizar algo como AVG(carga_horaria) * SUM(0.05 * mensalidade)
*/

SELECT A.professor_id,
		A.nome_professor,
		ROUND(AVG(A.carga_horaria) * SUM(0.05 * C.mensalidade)) AS salario_professor	
FROM tb_turmas AS A
RIGHT JOIN tb_notas_freq AS B ON A.turma_id = B.turma_id
RIGHT JOIN tb_alunos AS C ON B.aluno_id = C.aluno_id
GROUP BY 1,2;


/*
EXERCICIO 10
Utilizando a variável dias_semana, que representa os dias que aconteciam as aulas,
calcule a quantidade de alunos por dias_semana ordenando da maior para a menor 
quantidade;
*/

tb_turmas dias_semana
SELECT * FROM tb_notas_freq;
SELECT * FROM tb_turmas;

SELECT A.dias_semana,
		COUNT(B.aluno_id) AS quant_alunos
FROM tb_turmas AS A
RIGHT JOIN tb_notas_freq AS B ON A.turma_id = B.turma_id
GROUP BY 1
ORDER BY 2 DESC;

