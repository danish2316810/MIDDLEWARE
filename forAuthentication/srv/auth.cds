using app from '../db/auth';

service EmployeeService @(path: '/employee') {

  entity Employees as projection on app.Employee;

}
