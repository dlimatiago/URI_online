/*
CREATE TABLE customers(
	id NUMERIC PRIMARY KEY,
  	name VARCHAR(255),
  	street VARCHAR(255),
  	city VARCHAR(255),
  	state VARCHAR(255),
  	credit_limit NUMERIC
);
CREATE TABLE legal_person(
	id_customers NUMERIC,
  	cnpj char(18),
  	contact VARCHAR,
  	CONSTRAINT fk_id_customers FOREIGN KEY(id_customers) REFERENCES customers(id)
  	ON DELETE CASCADE
  	ON UPDATE CASCADE
);
INSERT INTO customers VALUES
    (1,	'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
    (2,	'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
    (3,	'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich',	'Palhoça', 'SC', 1067),
    (4,	'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
    (5,	'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
    (6,	'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);
INSERT INTO legal_person VALUES
    (4,	'85883842000191', '99767-0562'),
    (5,	'47773848000117', '99100-8965');
*/

select cus.name
from customers as cus
join legal_person as leg
on cus.id = leg.id_customers