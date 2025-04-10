*It's for assessment purposes as a part of an assignment given by BITS Pilani in the course Building Database Application*

# University Database Management System

**Author**: Madhur Thareja  
**Roll Number**: 2023ebcs412  

## Project Overview
This project implements a complete **University Database Management System** using MySQL. It includes:
- Schema creation for academic entities (Students, Courses, Departments, Instructors, Enrollments)
- Sample data insertion for all tables
- Practical SQL queries for common operations
- Stored procedures for analytics

## Database Schema
### Tables Structure
1. **Students**  
   - `SId`, `SFName`, `SLName`, `SGender`, `StudentDOB`  
   - Tracks student personal information

2. **Courses**  
   - `CourseID`, `CourseName`, `CourseCredits`, `Department`, `Instructor`  
   - Contains all offered courses with credit values

3. **Departments**  
   - `DepartmentID`, `DepartmentName`, `DepartmentYear`  
   - Academic departments with establishment years

4. **Instructors**  
   - `InstructorID`, `InstructorFName`, `InstructorLName`, `InstructorYear`, `InstructorSalary`, `Dept`  
   - Faculty information with salary and department

5. **Enrollments**  
   - `EnrollmentID`, `EnrollmentYear`, `StudentID`, `CourseID`, `DepartmentID`, `EnrollmentStatus`, `PaymentStatus`  
   - Manages student course registrations

##  Key Features
### Query Examples:
1. **Student Management**
   ```sql
   UPDATE Students SET SFName='David' WHERE SId=1;
   ```

2. **Academic Analytics**
   ```sql
   -- Students per department
   SELECT d.DepartmentName, COUNT(e.StudentID) 
   FROM Departments d LEFT JOIN Enrollments e...
   ```

3. **Instructor Reports**
   ```sql
   -- Instructors teaching >2 courses
   SELECT i.InstructorFName, COUNT(c.CourseID) 
   FROM Instructors i JOIN Courses c...
   ```

4. **Stored Procedure**
   ```sql
   CREATE PROCEDURE GetEnrollmentCounts()
   -- Returns course-wise enrollment numbers
   ```

## 📂 File Structure
1. `Question-1.sql` - Schema creation scripts  
2. `Question-2.sql` - Sample data insertion  
3. `Question-3.sql` - Practical queries and procedures  

## Setup Instructions
1. Execute schema scripts (`Question-1.sql`) first
2. Populate data using `Question-2.sql`
3. Run analytical queries from `Question-3.sql`

## Sample Outputs
| DepartmentID | DepartmentName      | TotalStudents |
|--------------|---------------------|---------------|
| 1            | Computer Science    | 8             | 
| 2            | Artificial Intelligence | 2         |

## License
Academic project for "Building Database Applications" course
