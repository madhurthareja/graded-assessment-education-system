-- Question 3: Write SQL Queries Based on the Following Prompts:

-- 1: Write a query to update student data
UPDATE `mydb`.`Students`
SET 
    `SFName` = 'David',
    `SLName` = 'Schwimmer'
WHERE `SId` = 1;

-- 2: Write a query to fetch the details of the instructor teaching a specific course
-- (Assuming we're looking for instructor of course with ID 101)
SELECT i.* 
FROM Instructors i
JOIN Courses c ON i.InstructorID = c.Instructor
WHERE c.CourseID = 101;

-- 3: Write a query to calculate the total number of students across all courses in each department including nil students
SELECT d.DepartmentID, d.DepartmentName, COUNT(e.StudentID) AS TotalStudents
FROM Departments d
LEFT JOIN Courses c ON d.DepartmentID = c.Department
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY TotalStudents DESC;

-- 4: Write a query to identify instructors who are teaching more than 2 courses
SELECT i.InstructorID, i.InstructorFName, i.InstructorLName,
    GROUP_CONCAT(c.CourseName SEPARATOR ', ') AS CoursesTaught,
    COUNT(c.Instructor) AS CourseCount
FROM Instructors i
JOIN Courses c ON i.InstructorID = c.Instructor
GROUP BY i.InstructorID, i.InstructorFName, i.InstructorLName
HAVING CourseCount > 2
ORDER BY CourseCount DESC;

-- 5: Write a query to calculate the average grade of students for each course
-- (Assuming a Grades table exists with a 'GradeValue' column)
SELECT c.CourseID, c.CourseName, AVG(g.GradeValue) AS AverageGrade
FROM Courses c
JOIN Enrollments e ON c.CourseID = e.CourseID
JOIN Grades g ON e.EnrollmentID = g.EnrollmentID
GROUP BY c.CourseID, c.CourseName;

-- 6: Write a procedure to find the enrollment count in all the courses
DELIMITER //
CREATE PROCEDURE GetEnrollmentCounts()
BEGIN
    SELECT
        c.CourseID,
        c.CourseName,
        COUNT(e.EnrollmentID) as EnrollmentCount
    FROM
        `mydb`.`Courses` c
    LEFT JOIN
        `mydb`.`Enrollments` e ON c.CourseID = e.CourseID
    GROUP BY
        c.CourseID,
        c.CourseName
    ORDER BY
        c.CourseID;
END //
DELIMITER ;