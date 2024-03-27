-- SQL Schema for Financial Advising Company
CREATE DATABASE crm;

USE crm;

-- Creating Companies Table
-- Table for storing student details
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

-- Table for storing course details
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Instructor VARCHAR(100),
    CONSTRAINT fk_department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Table for storing enrollment details
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(2),
    CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT fk_course FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Table for storing department details
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);


-- Table for storing college details
CREATE TABLE Colleges (
    CollegeID INT AUTO_INCREMENT PRIMARY KEY,
    CollegeName VARCHAR(100),
    Location VARCHAR(100)
);

-- Table for storing course-student relationships
CREATE TABLE CourseStudents (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Table for storing course-department relationships
CREATE TABLE CourseDepartments (
    
    CourseID INT,
    DepartmentID INT,
    PRIMARY KEY (CourseID, DepartmentID),
     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
     FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
