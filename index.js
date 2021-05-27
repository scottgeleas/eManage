const inquirer = require("inquirer");
const mysql = require("mysql2");

require('console.table');

let connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password',
    database: 'company_db'
});

connection.connect(function (err) {
    if (err) {
        console.error('error connecting: ' + err.stack);
        return;
    }

    console.log('connected as id ' + connection.threadId);
});

ques()

function ques() {
    inquirer.prompt([
        {
            type: 'list',
            message: 'What would you like to do?',
            name: 'action',
            choices: ['Add Department', 'Add Employee', 'Add Role', 'Change Employee Role', 'Departments', 'Employees', 'Roles']
        }
    ]).then((answer) => {
        switch (answer.action) {
            case 'Add Department':
                addDept()
                break;
            case 'Add Employee':
                addEmp()
                break;
            case 'Add Role':
                addRole()
                break;
            case 'Change Employee Role':
                // 
                break;
            case 'Departments':
                viewDept()
                break;
            case 'Employees':
                viewEmp()
                break;
            case 'Roles':
                viewRole()
                break;
        }
    })
}

function addDept() {
    inquirer.prompt([
        {
            type: 'input',
            message: 'Department Name',
            name: 'deptName'
        }
    ]).then((answer) => {
        connection.query(`INSERT INTO departments (name) VALUES ('${answer.deptName}');`, (error, result) => {
            if (error) {
                console.error('An error occurred while executing the query')
                throw error
            }
            ques()
        })
    })
}

function addEmp() {
    inquirer.prompt([
        {
            type: 'input',
            message: 'Employee First Name:',
            name: 'firstName'
        },
        {
            type: 'input',
            message: 'Employee Last Name:',
            name: 'lastName'
        },
        {
            type: 'input',
            message: 'Role ID:',
            name: 'role'
        },
        {
            type: 'input',
            message: 'Manager ID:',
            name: 'manager'
        }
    ]).then((answer) => {
        connection.query(`INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('${answer.firstName}', '${answer.lastName}', '${answer.role}', '${answer.manager}');`, (error, result) => {
            if (error) {
                console.error('An error occurred while executing the query')
                throw error
            }
            console.log(result)
            ques()
        })
    })
}

function addRole() {
    inquirer.prompt([
        {
            type: 'input',
            message: 'Title:',
            name: 'roleTitle'
        },
        {
            type: 'input',
            message: 'Salary:',
            name: 'roleSal'
        },
        {
            type: 'input',
            message: 'Department ID:',
            name: 'roleDept'
        }
    ]).then((answer) => {
        connection.query(`INSERT INTO roles (title, salary, department_id) VALUES ('${answer.roleTitle}', '${answer.roleSal}', '${answer.roleDept}');`, (error, result) => {
            if (error) {
                console.error('An error occurred while executing the query')
                throw error
            }
            ques()
        })
    })
}

function viewDept() {
    connection.query(`SELECT * FROM departments;`, (error, result) => {
        if (error) {
            console.error('An error occurred while executing the query')
            throw error
        }
        console.table(result)
        ques()
    })
}

function viewEmp() {
    connection.query(`SELECT * FROM employees;`, (error, result) => {
        if (error) {
            console.error('An error occurred while executing the query')
            throw error
        }
        console.table(result)
        ques()
    })
}

function viewRole() {
    connection.query(`SELECT * FROM roles;`, (error, result) => {
        if (error) {
            console.error('An error occurred while executing the query')
            throw error
        }
        console.table(result)
        ques()
    })
}