-- Sample INSERT Statements for Financial Advising Company Schema
use crm;
-- Inserting data into Companies
-- Insert sample data into Colleges table
INSERT INTO Colleges (CollegeID, CollegeName, Location)
VALUES 
    (1, 'Example College 1', 'City A'),
    (2, 'Example College 2', 'City B');

-- Insert sample data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
    (1, 'Computer Science'),
    (2, 'Electrical Engineering');

-- Insert sample data into Students table
INSERT INTO Students (StudentID, FirstName, LastName,  Gender,  Email, Phone)
VALUES 
    (1, 'John', 'Doe', 'Male', City A', 'john.doe@example.com', '123-456-7890'),
    (2, 'Jane', 'Smith', 'Female', 'jane.smith@example.com', '987-654-3210');

-- Insert sample data into Courses table
INSERT INTO Courses (CourseID, CourseName, DepartmentID, Instructor)
VALUES 
    (101, 'Introduction to Programming', 1, 'Dr. Smith'),
    (102, 'Database Management', 1, 'Prof. Johnson'),
    (103, 'Digital Circuits', 2, 'Dr. Williams');

-- Insert sample data into Enrollments table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, Grade)
VALUES 
    (1, 1, 101, '2023-09-01', 'A'),
    (2, 1, 102, '2023-09-01', 'B'),
    (3, 2, 101, '2023-09-01', 'B');

-- Insert sample data into CourseStudents table (for course-student relationships)
INSERT INTO CourseStudents (StudentID, CourseID)
VALUES 
    ( 1, 101),
    ( 1, 102),
    (2, 101);

-- Insert sample data into CourseDepartments table (for course-department relationships)
INSERT INTO CourseDepartments (CourseDepartmentID, CourseID, DepartmentID)
VALUES 
    ( 101, 1),
    ( 102, 1),
    ( 103, 2);
