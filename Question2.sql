-- Name of the Author: Madhur Thareja
-- Roll Number: 2023ebcs412

-- Question 2: Insert at least 10 records for each table

-- Departments Table
INSERT INTO `mydb`.`Departments`
(`DepartmentID`, `DepartmentName`, `DepartmentYear`)
VALUES
(1, 'Computer Science', '1990'),
(2, 'Artificial Intelligence', '2015'),
(3, 'Global Computing', '2018'),
(4, 'Cybersecurity', '2017'),
(5, 'Data Science', '2016'),
(6, 'Bioinformatics', '2019'),
(7, 'Information Security', '2020'),
(8, 'Information Technology', '2005'),
(9, 'Robotics', '2014'),
(10, 'Software Engineering', '2012');

-- Courses Table
INSERT INTO `mydb`.`Courses`
(`CourseID`, `CourseName`, `CourseCredits`, `Department`, `Instructor`)
VALUES
(101, 'Data Structures', '4', 1, 1),
(102, 'Algorithms', '4', 1, 2),
(103, 'Database Systems', '3', 1, 3),
(104, 'Operating Systems', '3', 1, 1),
(105, 'Computer Networks', '3', 1, 2),
(106, 'Machine Learning', '4', 2, 4),
(107, 'Deep Learning', '4', 2, 5),
(108, 'Cloud Computing', '3', 3, 6),
(109, 'Computer Vision', '4', 4, 7),
(110, 'Big Data Analytics', '4', 5, 8);

-- Students Table
INSERT INTO `mydb`.`Students` 
(`SId`, `SFName`, `SLName`, `SGender`, `StudentDOB`) 
VALUES 
(1, 'Ram', 'Prasad', 'Male', '2002-06-12 00:00:00'),
(2, 'Aruna', 'Maheshwari', 'Female', '2003-05-25 00:00:00'),
(3, 'Kartik', 'Gandhi', 'Male', '2001-04-18 00:00:00'),
(4, 'Sunayana', 'Prajapati', 'Female', '2002-03-30 00:00:00'),
(5, 'Vikram', 'Agnibotri', 'Male', '2000-02-15 00:00:00'),
(6, 'Amita', 'Singh', 'Female', '2001-01-10 00:00:00'),
(7, 'Rohit', 'Kumar', 'Male', '2003-07-22 00:00:00'),
(8, 'Dhruvi', 'Patel', 'Female', '2004-08-05 00:00:00'),
(9, 'Anuj', 'Kamboj', 'Male', '2002-09-18 00:00:00'),
(10, 'Jasmine', 'Kaar', 'Female', '2001-10-30 00:00:00');

-- Instructors Table
INSERT INTO `mydb`.`Instructors`
(`InstructorID`, `InstructorFName`, `InstructorLName`, `InstructorYear`, `InstructorSalary`, `Dept`)
VALUES
(1, 'Meena', 'Chauhan', '2005-09-01 00:00:00', '80000', 1),
(2, 'Mounika', 'Aggarwal', '2010-08-15 00:00:00', '85000', 1),
(3, 'Kartik', 'Subramaniam', '2012-07-20 00:00:00', '95000', 1),
(4, 'Anita', 'Tandon', '2014-06-10 00:00:00', '92000', 2),
(5, 'Rajendra', 'Mohan', '2015-05-05 00:00:00', '88000', 2),
(6, 'Jaspal', 'Singh', '2016-04-25 00:00:00', '87000', 3),
(7, 'Amitabh', 'Ghosh', '2017-03-30 00:00:00', '89000', 4),
(8, 'Shayla', 'Patti', '2018-02-18 00:00:00', '91000', 5),
(9, 'Praneet', 'Singh', '2019-01-22 00:00:00', '94000', 6),
(10, 'Jaskirat', 'Kaur', '2020-12-05 00:00:00', '86000', 7);

-- Enrollments Table
INSERT INTO `mydb`.`Enrollments`
(`EnrollmentID`, `EnrollmentYear`, `StudentID`, `CourseID`, `DepartmentID`, `EnrollmentStatus`, `PaymentStatus`)
VALUES
(1, '2023-11-13 10:00:00', 1, 101, 1, 'Active', 'Paid'),
(2, '2023-11-13 10:00:00', 2, 102, 1, 'Active', 'Pending'),
(3, '2023-11-13 10:00:00', 3, 103, 1, 'Inactive', 'Paid'),
(4, '2023-11-13 10:00:00', 4, 104, 1, 'Active', 'Pending'),
(5, '2023-11-13 10:00:00', 5, 105, 1, 'Active', 'Pending'),
(6, '2023-11-13 10:00:00', 6, 106, 2, 'Inactive', 'Paid'),
(7, '2023-11-13 10:00:00', 7, 108, 2, 'Inactive', 'Pending'),
(8, '2023-11-23 10:00:00', 8, 108, 5, 'Inactive', 'Pending'),
(9, '2023-11-23 10:00:00', 9, 109, 6, 'Active', 'Paid'),
(10, '2023-11-24 10:00:00', 10, 110, 9, 'Active', 'Pending');