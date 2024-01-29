using app from '../db/auth';

service EmployeeService 
@(path: '/employee')
@(requires: 'authenticated-user'){

  entity Employees @(restrict: [
    {
      grant: ['Read'],
      to: 'Viewer',
      where: 'Division = $user.Division'
    }
  ])
  as projection on app.Employee;

}
