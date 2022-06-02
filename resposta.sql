/*1 - Inclua suas próprias informações no departamento de tecnologia da empresa.*/
/*Resposta 1*/
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES (207,'Matheus','França','matheus.franca@momento.org','4002-8922','2022-05-28',9,5000.00,NULL,6);


/*2 - A administração está sem funcionários. Inclua os outros elementos do seu grupo do demoday no departamento de administração.*/
/*Resposta 2*/
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
(208,'Camily','Cruz','camily.cruz@momento.org','3187-2378','2022-05-28',3,3000.00,200,1),(209,'Iago','Paiva','iago.paiva@momento.org','3167-6678','2022-05-28',3,3000.00,200,1),
(210,'Lucas','Alencar','lucas.alencar@momento.org','3134-4478','2022-05-28',3,3000.00,200,1),
(211,'Matheus','Almeida','matheus.almeida@momento.org','3157-6648','2022-05-28',3,3000.00,200,1),
(212,'Noelia','Mariana','noelia.mariana@momento.org','3557-9558','2022-05-28',3,3000.00,200,1),
(213,'Ryan','Paiva','ryan.paiva@momento.org','3147-5578','2022-05-28',3,3000.00,200,1),
(214,'Sara','Morais','sara.morais@momento.org','3455-5448','2022-05-28',3,3000.00,200,1);


/*3 - Agora diga, quantos funcionários temos ao total na empresa?*/
/*Resposta 3*/
SELECT COUNT(`funcionario_id`) FROM funcionarios;

/*4 - Quantos funcionários temos no departamento de finanças?*/
/*Resposta 4*/
SELECT COUNT(`departamento_id`) AS `10` FROM funcionarios;

/*5 - Qual a média salarial do departamento de tecnologia?*/
/*Resposta 5*/
SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '6';

/*6 - Quanto o departamento de Transportes gasta em salários?*/
/*Resposta 6*/
SELECT SUM(salario) FROM funcionarios WHERE departamento_id = '5';

/*7 - Um novo departamento foi criado. O departamento de inovações. Ele será locado no Brasil. Por favor, adicione-o no banco de dados.*/
/*Resposta 7*/
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (12,'Inovações',5400);

/*8 - Três novos funcionários foram contratados para o departamento de inovações. Por favor, adicione-os: William Ferreira, casado com Inara Ferreira, possui um filho chamado Gabriel que tem 4 anos e adora brincar com cachorros. Ele será programador.Já a Fernanda Lima, que é casada com o Rodrigo, não possui filhos. Ela vai ocupar a posição de desenvolvedora.  Por último, a Gerente do departamento será Fabiana Raulino. Casada, duas filhas (Maya e Laura). */
/*Resposta 8*/
INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario) VALUES (20,'Programador',4500.00,9500.00)(20,'Gerente de Inovações',6500.00,12000.00);

SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '1' AND '10';

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
(215,'Fabiana','Raulino','fabiana.raulino@momento.org','3112-3344','2022-05-28',21,5633.00,NULL,12),
(216,'William','Ferreira','william.ferreira@momento.org','35667-4548','2022-05-28',20,5633.00,215,12),
(217,'Fernanda','Lima','fernanda.lima@momento.org','34567-4558','2022-05-28',9,5633.00,215,12);

INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES 
(34,'Maya','Raulino','Filho(a)',215),
(35,'Laura','Raulino','Filho(a)',215),
(36,'Inara','Ferreira','Cônjuge',216),
(37,'Gabriel','Ferreira','Filho(a)',216),
(38,'Rodrigo','Lima','Filho(a)',217);

/*9 - Informe todas as regiões em que a empresa atua acompanhadas de seus países.*/
/*Resposta 9*/
SELECT regiao.regiao_name, paises.pais_name
FROM regiao
INNER JOIN paises ON paises.regiao_id = regiao.regiao_id;

/*10 - Joe Sciarra é filho de quem?*/
/*Resposta 10*/
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome
From dependentes
INNER JOIN funcionarios 
ON dependentes.funcionario_id = funcionarios.funcionario_id
WHERE dependentes.primeiro_nome = 'Joe';

/*11 - Jose Manuel possui filhos?*/
/*Resposta 11*/
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco
From dependentes
INNER JOIN funcionarios 
ON dependentes.funcionario_id = funcionarios.funcionario_id
WHERE dependentes.funcionario_id = 112;

/*12 - Qual região possui mais países?*/
/*Resposta 12*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 1; /*8*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 2; /*5*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 3; /*6*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 4; /*6*/

/*13 - Exiba o nome cada funcionário acompanhado de seus dependentes.*/
/*Resposta 13*/
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome
From dependentes
INNER JOIN funcionarios 
ON dependentes.funcionario_id = funcionarios.funcionario_id

/*14 - Karen Partners possui um cônjuge?*/
/*Resposta 14*/
SELECT* FROM funcionarios WHERE primeiro_nome LIKE 'Karen';

SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco From dependentes INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.funcionario_id = 146;  Possui um filho

/*16 - Escolha um país para se mudar. Qual seria esse país? Por que escolheria esse país? E o departamento. O que seria? Como seriam seus funcionários?*/
/*Resposta 16*/
INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (13,'Juídico',1500);
UPDATE 'funcionarios' SET 'ocupacao_id' = '22', 'salario' = '12000.00' WHERE 'funcionarios'.'funcionario_id' = 207;

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
(218,'Bento','Augusto','bento.augusto.org','3442-3445','2022-06-01',23,5000.00,207,13),
(219,'Claudia','Regina','claudia.regina.org','3389-3995','2022-06-01',24,7500.00,207,13),
(220,'Fernanda','Lima','fernanda.lima@momento.org','34567-4558','2022-05-28',25,17000.00,207,13);

