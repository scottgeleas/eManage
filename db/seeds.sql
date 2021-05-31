USE company_db;

INSERT INTO departments (`name`)
VALUES ("Marketing");
INSERT INTO departments (`name`)
VALUES ("Leadership");
INSERT INTO departments (`name`)
VALUES ("Accounting");
INSERT INTO departments (`name`)
VALUES ("R&D");

INSERT INTO roles (`title`, `salary`)
VALUES ("Engineer", 100000);
INSERT INTO roles (`title`, `salary`)
VALUES ("Manager", 75000);
INSERT INTO roles (`title`, `salary`)
VALUES ("Accountant", 65000);

INSERT INTO employees (`first_name`, `last_name`, `role_id`, `manager_id`)
VALUES ('Tom', 'Fish', 1, 1);
INSERT INTO employees (`first_name`, `last_name`, `role_id`, `manager_id`)
VALUES ('Bruce', 'Koala', 2, 2);
INSERT INTO employees (`first_name`, `last_name`, `role_id`, `manager_id`)
VALUES ('Jim', 'Shark', 3, 3);
INSERT INTO employees (`first_name`, `last_name`, `role_id`, `manager_id`)
VALUES ('Paul', 'Crab', 4 ,4);
INSERT INTO employees (`first_name`, `last_name`, `role_id`, `manager_id`)
VALUES ('Penny', 'Butterfly', 5, 5);
