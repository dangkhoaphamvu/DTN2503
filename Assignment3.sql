1. Select employeeName from companydb.employee;

2. Select employeeName, email from companydb.employee;

3. Select * from companydb.project where startDate = 2022;

4. Select * from companydb.employee where hireDate > '2022-01-01';

5. Select * from companydb.department;

6. Select employeeName,salary from companydb.employee;

7. Select Count(employeeId) from companydb.employee;

8. Select * from companydb.project where endDate > '2023-01-01';

9. Select * from companydb.employee where salary > '70000';

10. Select * from companydb.employee where managerId is null;

11. Select sum(salary) from companydb.employee group by departmentId;

12. Select companydb.employee.employeeId, companydb.project.projectName, companydb.employee.employeeName from companydb.employee join companydb.project join companydb.employeeproject on companydb.employeeproject.employeeId = companydb.employee.employeeId and companydb.project.projectId = companydb.employeeproject.projectId where companydb.employee.employeeId = 2; 

13. Select employee.employeeName, department.departmentName from companydb.employee left join companydb.department on companydb.employee.departmentId = companydb.department.departmentId

14. Select * from companydb.employee order by salary ASC limit 1;

15. Select employeeName, Count(projectId) from companydb.employee join companydb.employeeproject on companydb.employee.employeeId = companydb.employeeproject.employeeId group by employee.employeeId Having Count(projectId > 1);

16. Select j.projectName,Count(p.employeeId) from companydb.employeeproject as p join companydb.project as j on p.projectId = j.projectId group by j.projectName

17. Select e.employeeId,e.employeeName from companydb.employee as e join companydb.department as d on e.departmentId = d.departmentId where d.departmentName = "HR" and e.salary > "60000"

18. Select p.projectName from companydb.project as p join companydb.employeeproject as e on p.projectId = e.projectId group by p.projectName having count(e.employeeId) = 0

19. Select e.employeeId,e.employeeName,m.managerName from companydb.employee as e join companydb.manager as m on e.managerId = m.managerId group by m.managerName

20. Select e.employeeId, e.employeeName from companydb.employee as e join companydb.department as d on e.departmentId = d.departmentId where d.departmentName = "Sale" and e.employeeId Not In (select p.projectId from companydb.employeeproject as p)

21. Select e.EmployeeName, p.projectName, p.startDate from companydb.employee as e join companydb.employeeproject as ep join companydb.project as p on e.employeeId = ep.employeeId and ep.projectId = p.projectId

22. Select p.projectName, Count(ep.employeeId) from companydb.project as p join companydb.employeeproject as ep on p.projectId = ep.projectId group by p.projectName having Count(ep.employeeId) > 3

23. Select e.employeeId,e.EmployeeName, p.projectName from companydb.employee as e join companydb.employeeproject as ep join companydb.project as p on e.employeeId = ep.employeeId and ep.projectId = p.projectId where p.projectName in ("Website Redesign","Mobile App")

24. Select e.employeeId, e.employeeName from companydb.employee as e where e.managerId = (select e.managerId where e.employeeName = "Bob")

25. Select d.departmentName, avg(e.salary) from companydb.department as d join companydb.employee as e on d.departmentId = e.departmentId group by d.departmentName having Count(e.employeeId) > 1

26 Select * from companydb.employee where salary = (select MAX(salary) from companydb.employee) and employeeId not in ( Select distinct managerId from companydb.employee where managerId is not null)

27. select p.projectName from companydb.project as p join companydb.employeeproject as ep on p.projectId = ep.projectId join companydb.employee as e on ep.employeeId = e.employeeId join companydb.department as d on e.departmentId = d.departmentId where d.departmentName = 'Engineering';

28. select e.employeeName, m.managerName, gm.grandmanagerName from companydb.employee as e left join companydb.manager as m on e.managerId = m.employeeId left join companydb.grandmanager on m.managerId = gm.employeeId;

29. select e.employeeName, ep.assignedDate, e.hireDate from companydb.employee as e join companydb.employeeproject ep on e.employeeId = ep.employeeId where ep.assignedDate < e.hireDate;

30. select p.projectName from companydb.project as p left join companydb.employeeproject as ep on p.projectId = ep.projectId where p.endDate is null group by p.projectId having Count(ep.employeeId) < 3;
