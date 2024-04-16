CREATE TABLE pizza (
    id_pizza INT PRIMARY KEY,
    tamanho VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    sabor VARCHAR(100) NOT NULL,
  
  
    embalagem_id INT NOT NULL,
    pizzaiolo_id INT NOT NULL,
    receita_id INT NOT NULL,
  
  
    FOREIGN KEY (embalagem_id) REFERENCES embalagem(id_embalagem),
    FOREIGN KEY (pizzaiolo_id) REFERENCES pizzaiolo(id_pizzaiolo),
    FOREIGN KEY (receita_id) REFERENCES receita(id_receita)
);


CREATE TABLE receita (
    id_receita INT PRIMARY KEY,
    instrucoes TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL
);

CREATE TABLE pizzaiolo (
    id_pizzaiolo INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE embalagem (
    id_embalagem INT PRIMARY KEY,
    material VARCHAR(100) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO pizzaiolo (id_pizzaiolo, nome, salario)
VALUES
    (1, 'Matheus', 1000),
    (2, 'Isabela', 1500),
    (3, 'Ohata', 2000),
    (4, 'Lucas', 2500),
    (5, 'Gabriel', 3000),
    (6, 'Amanda', 3500),
    (7, 'Thiago', 4000),
    (8, 'Larissa', 1500),
    (9, 'Rafaela', 2000),
    (10, 'Eduardo', 2500),
    (11, 'Luiz', 3000),
    (12, 'Pedro', 3500),
    (13, 'Fernanda', 4000),
    (14, 'João', 1500),
    (15, 'Maria', 2000),
    (16, 'Juliana', 2500),
    (17, 'Marcelo', 3000),
    (18, 'Sandra', 3500),
    (19, 'Ricardo', 4000),
    (20, 'Carla', 1500),
    (21, 'Mariana', 2000),
    (22, 'Gustavo', 2500),
    (23, 'Fernando', 3000),
    (24, 'Viviane', 3500),
    (25, 'Anderson', 4000),
    (26, 'Patrícia', 1500),
    (27, 'Jéssica', 2000),
    (28, 'Daniel', 2500),
    (29, 'Beatriz', 3000),
    (30, 'Alexandre', 3500);
    
 -- Criação de 30 receitas com IDs em sequência, autores existentes na tabela pizzaiolo
INSERT INTO receita (id_receita, instrucoes, autor)
VALUES
    (1, 'Cozinhe a massa por 10 minutos e adicione o molho de tomate.', 'Matheus'),
    (2, 'Misture os ingredientes secos, adicione os líquidos e asse por 30 minutos.', 'Isabela'),
    (3, 'Frite o alho e a cebola, adicione os legumes e cozinhe por 15 minutos.', 'Ohata'),
    (4, 'Misture a farinha, os ovos e o leite, frite em óleo quente até dourar.', 'Lucas'),
    (5, 'Cozinhe o arroz em água fervente por 15 minutos.', 'Gabriel'),
    (6, 'Corte os legumes em cubos, misture com a carne e leve ao forno por 45 minutos.', 'Amanda'),
    (7, 'Bata os ovos e o açúcar até obter uma mistura homogênea, asse em banho-maria por 1 hora.', 'Thiago'),
    (8, 'Refogue o frango com os temperos, adicione o molho de tomate e cozinhe por 20 minutos.', 'Larissa'),
    (9, 'Cozinhe as batatas até ficarem macias, amasse-as e tempere com sal e pimenta.', 'Rafaela'),
    (10, 'Misture o chocolate com a manteiga derretida, adicione os ovos e a farinha.', 'Eduardo'),
    (11, 'Corte a carne em tiras finas, frite com cebola e pimentão e sirva com arroz e feijão.', 'Luiz'),
    (12, 'Bata todos os ingredientes no liquidificador e asse por 40 minutos em forma untada.', 'Pedro'),
    (13, 'Cozinhe o macarrão al dente, misture com o molho de queijo e leve ao forno por 20 minutos.', 'Fernanda'),
    (14, 'Refogue a cebola e o alho, adicione o arroz e a água e cozinhe por 15 minutos.', 'João'),
    (15, 'Misture o leite condensado com o creme de leite e o suco de limão, leve à geladeira por 2 horas.', 'Mariana'),
    (16, 'Frite a carne com o alho e a cebola, adicione os temperos e deixe cozinhar por 30 minutos.', 'Gustavo'),
    (17, 'Cozinhe o feijão com a carne seca e a linguiça, sirva com arroz e couve refogada.', 'Mariana'),
    (18, 'Bata todos os ingredientes no liquidificador e asse em forma untada por 45 minutos.', 'Lucas'),
    (19, 'Corte os legumes em rodelas, tempere com sal e azeite e asse por 30 minutos.', 'Patrícia'),
    (20, 'Misture a farinha, o açúcar e o fermento, adicione os ovos e o leite e asse por 30 minutos.', 'Daniel'),
    (21, 'Cozinhe o peixe com os temperos e o leite de coco, sirva com arroz branco.', 'Beatriz'),
    (22, 'Refogue a cebola e o alho, adicione o arroz e a água e cozinhe por 20 minutos.', 'Ana'),
    (23, 'Misture o frango desfiado com o requeijão, coloque na massa de pastel e frite em óleo quente.', 'Thiago'),
    (24, 'Cozinhe o milho com a água e o açúcar, bata no liquidificador e leve à geladeira.', 'Larissa'),
    (25, 'Frite a carne com a cebola e o alho, adicione o molho de tomate e cozinhe por 25 minutos.', 'Rodrigo'),
    (26, 'Misture o leite com o açúcar, adicione o café e sirva gelado.', 'Carla'),
    (27, 'Corte os legumes em pedaços grandes, tempere com sal e pimenta e asse por 40 minutos.', 'Felipe'),
    (28, 'Refogue a cebola e o alho, adicione o frango e os temperos e cozinhe por 20 minutos.', 'Vanessa'),
    (29, 'Cozinhe o macarrão al dente, misture com o molho de tomate e sirva com queijo ralado.', 'Rafael'),
    (30, 'Misture todos os ingredientes e leve ao forno por 35 minutos em forma untada.', 'Renato');
   
   
  -- Criação de 30 embalagens com IDs em sequência, números em tamanho e preço
INSERT INTO embalagem (id_embalagem, material, tamanho, preco)
VALUES
    (1, 'Papelão', '20', 15.99),
    (2, 'Plástico', '30', 20.50),
    (3, 'Alumínio', '25', 18.75),
    (4, 'Papel', '15', 10.25),
    (5, 'Plástico', '40', 25.99),
    (6, 'Alumínio', '35', 22.50),
    (7, 'Papelão', '20', 15.99),
    (8, 'Plástico', '30', 20.50),
    (9, 'Alumínio', '25', 18.75),
    (10, 'Papel', '15', 10.25),
    (11, 'Plástico', '40', 25.99),
    (12, 'Alumínio', '35', 22.50),
    (13, 'Papelão', '20', 15.99),
    (14, 'Plástico', '30', 20.50),
    (15, 'Alumínio', '25', 18.75),
    (16, 'Papel', '15', 10.25),
    (17, 'Plástico', '40', 25.99),
    (18, 'Alumínio', '35', 22.50),
    (19, 'Papelão', '20', 15.99),
    (20, 'Plástico', '30', 20.50),
    (21, 'Alumínio', '25', 18.75),
    (22, 'Papel', '15', 10.25),
    (23, 'Plástico', '40', 25.99),
    (24, 'Alumínio', '35', 22.50),
    (25, 'Papelão', '20', 15.99),
    (26, 'Plástico', '30', 20.50),
    (27, 'Alumínio', '25', 18.75),
    (28, 'Papel', '15', 10.25),
    (29, 'Plástico', '40', 25.99),
    (30, 'Alumínio', '35', 22.50);
 
   -- Criação de 30 pizzas com IDs sequenciais e valores aleatórios para os campos
INSERT INTO pizza (id_pizza, tamanho, descricao, preco, sabor, embalagem_id, pizzaiolo_id, receita_id)
VALUES
    (1, 'Grande', 'Pizza de Calabresa', 30.99, 'Calabresa', 1, 1, 1),
    (2, 'Média', 'Pizza de Frango com Catupiry', 25.50, 'Frango com Catupiry', 2, 2, 2),
    (3, 'Pequena', 'Pizza de Margherita', 20.75, 'Margherita', 3, 3, 3),
    (4, 'Média', 'Pizza de Quatro Queijos', 22.25, 'Quatro Queijos', 4, 4, 4),
    (5, 'Grande', 'Pizza de Pepperoni', 28.99, 'Pepperoni', 5, 5, 5),
    (6, 'Pequena', 'Pizza de Frango com Catupiry', 20.50, 'Frango com Catupiry', 6, 6, 6),
    (7, 'Grande', 'Pizza de Calabresa', 30.99, 'Calabresa', 7, 7, 7),
    (8, 'Média', 'Pizza de Margherita', 25.50, 'Margherita', 8, 8, 8),
    (9, 'Pequena', 'Pizza de Quatro Queijos', 20.75, 'Quatro Queijos', 9, 9, 9),
    (10, 'Grande', 'Pizza de Pepperoni', 28.99, 'Pepperoni', 10, 10, 10),
    (11, 'Média', 'Pizza de Calabresa', 25.50, 'Calabresa', 11, 11, 11),
    (12, 'Pequena', 'Pizza de Frango com Catupiry', 20.75, 'Frango com Catupiry', 12, 12, 12),
    (13, 'Grande', 'Pizza de Margherita', 30.99, 'Margherita', 13, 13, 13),
    (14, 'Média', 'Pizza de Quatro Queijos', 25.50, 'Quatro Queijos', 14, 14, 14),
    (15, 'Pequena', 'Pizza de Pepperoni', 20.75, 'Pepperoni', 15, 15, 15),
    (16, 'Grande', 'Pizza de Calabresa', 30.99, 'Calabresa', 16, 16, 16),
    (17, 'Média', 'Pizza de Margherita', 25.50, 'Margherita', 17, 17, 17),
    (18, 'Pequena', 'Pizza de Quatro Queijos', 20.75, 'Quatro Queijos', 18, 18, 18),
    (19, 'Grande', 'Pizza de Pepperoni', 28.99, 'Pepperoni', 19, 19, 19),
    (20, 'Média', 'Pizza de Calabresa', 25.50, 'Calabresa', 20, 20, 20),
    (21, 'Pequena', 'Pizza de Frango com Catupiry', 20.75, 'Frango com Catupiry', 21, 21, 21),
    (22, 'Grande', 'Pizza de Margherita', 30.99, 'Margherita', 22, 22, 22),
    (23, 'Média', 'Pizza de Quatro Queijos', 25.50, 'Quatro Queijos', 23, 23, 23),
    (24, 'Pequena', 'Pizza de Pepperoni', 20.75, 'Pepperoni', 24, 24, 24),
    (25, 'Grande', 'Pizza de Calabresa', 30.99, 'Calabresa', 25, 25, 25),
    (26, 'Média', 'Pizza de Margherita', 25.50, 'Margherita', 26, 26, 26),
    (27, 'Pequena', 'Pizza de Quatro Queijos', 20.75, 'Quatro Queijos', 27, 27, 27),
    (28, 'Grande', 'Pizza de Pepperoni', 28.99, 'Pepperoni', 28, 28, 28),
    (29, 'Média', 'Pizza de Calabresa', 25.50, 'Calabresa', 29, 29, 29),
    (30, 'Pequena', 'Pizza de Frango com Catupiry', 20.75, 'Frango com Catupiry', 30, 30, 30);

-- todas as pizzas e os pizzaiolos
SELECT p.id_pizza, p.descricao AS Pizza, pizz.nome AS Pizzaiolo, p.tamanho
FROM pizza p
INNER JOIN pizzaiolo pizz ON p.pizzaiolo_id = pizz.id_pizzaiolo;

-- todas as pizzas e seus ingredientes
SELECT id_pizza, descricao AS Pizza, sabor AS Ingredientes
FROM pizza;

-- todos os ingredientes e as pizzas onde são utilizados
SELECT ing.sabor AS Ingrediente, p.descricao AS Pizza
FROM pizza p
INNER JOIN (SELECT DISTINCT id_pizza, sabor FROM pizza) AS ing ON p.id_pizza = ing.id_pizza;

-- sabores de todas as pizzas, o nome dos pizzaiolos que as fazem e as instruções para produzi-las
SELECT p.sabor AS Sabor, pi.nome AS Pizzaiolo, r.instrucoes AS Instrucoes
FROM pizza p
INNER JOIN pizzaiolo pi ON p.pizzaiolo_id = pi.id_pizzaiolo
INNER JOIN receita r ON p.receita_id = r.id_receita;