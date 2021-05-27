USE company_db;

INSERT INTO departments (`name`)
VALUES ("Marketing");
INSERT INTO departments (`name`)
VALUES ("Leadership");
INSERT INTO departments (`name`)
VALUES ("Accounting");
INSERT INTO departments (`name`)
VALUES ("R&D");

INSERT INTO employees (`first_name`, `last_name`, 1)
VALUES ('Tom', 'Fish');
INSERT INTO employees (`first_name`, `last_name`,)
VALUES ('Bruce', 'Koala');
INSERT INTO employees (`first_name`, `last_name`)
VALUES ('Jim', 'Shark');
INSERT INTO employees (`first_name`, `last_name`)
VALUES ('Paul', 'Crab');
INSERT INTO employees (`first_name`, `last_name`)
VALUES ('Penny', 'Butterfly');

INSERT INTO roles (`title`, `salary`)
VALUES ("Engineer", 100000);
INSERT INTO roles (`title`, `salary`)
VALUES ("Manager", 75000);
INSERT INTO roles (`title`, `salary`)
VALUES ("Accountant", 65000);