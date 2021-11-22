CREATE TABLE LMT_University.enrol.Address (
    AddressID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    StreetAddress VARCHAR(50),
    City VARCHAR(50) NOT NULL,
    States Varchar(50) ,
    PostalCode VARCHAR(50),
    Country Varchar(50) NOT NULL,
	InsertedOn DateTime NOT NULL
    
);
CREATE TABLE LMT_University.enrol.Department (
    DepartmentID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(50) NOT NULL,
    DepartmentDescription VARCHAR(50),
    DepartmentCapacity INT NOT NULL,
    InsertedOn DateTime NOT NULL,
    
);
CREATE TABLE LMT_University.enrol.Lecturer (
    LecturerID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    LecturerName VARCHAR(50) NOT NULL,
    LecturerHighestQualification VARCHAR(50),
    LecturerAge VARCHAR(50) NOT NULL,
	DepartmentID INT NOT NULL,
    InsertedOn DateTime NOT NULL,
    
);


CREATE TABLE LMT_University.enrol.Student (
    StudentID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    StudentFirstName VARCHAR(50) NOT NULL,
	StudentLastName VARCHAR(50),
    StudentDOB Date NOT NULL,
    StudentMobile VARCHAR(50) NOT NULL,
	StudentRollNo INT NOT NULL,
	DepartmentID INT NOT NULL,
	AddressID INT NOT NULL,
    InsertedOn DateTime NOT NULL,

);







