-- Total Employees
SELECT COUNT(*) AS Total_Employees
FROM employee_attrition;

-- Total Employees Who Left
SELECT COUNT(*) AS Attrition_Count
FROM employee_attrition
WHERE Attrition = 'Yes';

-- Attrition by Department
SELECT Department,
       COUNT(*) AS Attrition_Count
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;

-- Attrition by Job Role
SELECT JobRole,
       COUNT(*) AS Attrition_Count
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

-- Attrition by Overtime
SELECT OverTime,
       COUNT(*) AS Attrition_Count
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY OverTime;