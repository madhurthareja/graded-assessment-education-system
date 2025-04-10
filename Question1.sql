-- Name of the Author: Madhur Thareja
-- Roll Number: 2023ebcs412

-- Question 1: Create Statements for the Schema named "myDB"

-- Table 1: Courses
CREATE TABLE `Courses` (
    `CourseID` int NOT NULL,
    `CourseName` varchar(45) DEFAULT NULL,
    `CourseCredits` varchar(45) DEFAULT NULL,
    `Department` int DEFAULT NULL,
    `Instructor` int DEFAULT NULL,
    PRIMARY KEY (`CourseID`),
    KEY `DepartmentID_idx` (`Department`),
    KEY `Instructor_idx` (`Instructor`),
    CONSTRAINT `Department` FOREIGN KEY (`Department`) REFERENCES `Departments` (`DepartmentID`),
    CONSTRAINT `Instructor` FOREIGN KEY (`Instructor`) REFERENCES `Instructors` (`InstructorID`)
);

-- Table 2: Departments
CREATE TABLE `Departments` (
    `DepartmentID` int NOT NULL,
    `DepartmentName` varchar(45) NOT NULL,
    `DepartmentYear` varchar(45) NOT NULL,
    PRIMARY KEY (`DepartmentID`),
    UNIQUE KEY `DepartmentID_UNIQUE` (`DepartmentID`),
    UNIQUE KEY `DepartmentName_UNIQUE` (`DepartmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Table 3: Enrollments
CREATE TABLE `Enrollments` (
    `EnrollmentID` int NOT NULL,
    `EnrollmentYear` datetime NOT NULL,
    `StudentID` int DEFAULT NULL,
    `CourseID` int DEFAULT NULL,
    `DepartmentID` int DEFAULT NULL,
    `EnrollmentStatus` varchar(45) NOT NULL,
    `PaymentStatus` varchar(45) NOT NULL,
    PRIMARY KEY (`EnrollmentID`),
    KEY `StudentID_idx` (`StudentID`),
    KEY `CourseID_idx` (`CourseID`),
    KEY `DepartmentID_idx` (`DepartmentID`),
    CONSTRAINT `CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Courses` (`CourseID`),
    CONSTRAINT `DepartmentID` FOREIGN KEY (`DepartmentID`) REFERENCES `Departments` (`DepartmentID`),
    CONSTRAINT `StudentID` FOREIGN KEY (`StudentID`) REFERENCES `Students` (`SId`)
);

-- Table 4: Instructors
CREATE TABLE `Instructors` (
    `InstructorID` int NOT NULL,
    `InstructorFName` varchar(45) NOT NULL,
    `InstructorLName` varchar(45) NOT NULL,
    `InstructorYear` datetime DEFAULT NULL,
    `InstructorSalary` int NOT NULL,
    `Dept` int DEFAULT NULL,
    PRIMARY KEY (`InstructorID`),
    KEY `Dept_idx` (`Dept`),
    CONSTRAINT `Dept` FOREIGN KEY (`Dept`) REFERENCES `Departments` (`DepartmentID`)
);

-- Table 5: Students
CREATE TABLE `Students` (
    `SId` int NOT NULL,
    `SFName` varchar(45) NOT NULL,
    `SLName` varchar(45) DEFAULT NULL,
    `SGender` varchar(45) NOT NULL,
    `StudentDOB` datetime NOT NULL,
    PRIMARY KEY (`SId`),
    UNIQUE KEY `SId_UNIQUE` (`SId`)
);
