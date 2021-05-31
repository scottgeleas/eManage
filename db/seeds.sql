USE company_db;

INSERT INTO departments (`name`)
VALUES ("Marketing");
INSERT INTO departments (`name`)
VALUES ("Leadership");
INSERT INTO departments (`name`)
VALUES ("Accounting");
INSERT INTO departments (`name`)
VALUES ("R&D");

INSERT INTO roles (`title`, `salary`, `department_id`)
VALUES ("Engineer", 100000, 4);
INSERT INTO roles (`title`, `salary`, `department_id`)
VALUES ("Manager", 75000, 2);
INSERT INTO roles (`title`, `salary`, `department_id`)
VALUES ("Accountant", 65000, 3);

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
