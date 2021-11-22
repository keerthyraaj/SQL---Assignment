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
USE [LMT_University]
GO

/****** Object:  Table [enrol].[Lecturer]    Script Date: 10-07-2021 01:22:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [enrol].[Lecturer](
	[LecturerID] [int] IDENTITY(1,1) NOT NULL,
	[LecturerName] [varchar](50) NOT NULL,
	[LecturerHighestQualification] [varchar](50) NULL,
	[LecturerAge] [varchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[InsertedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [enrol].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Department] FOREIGN KEY([DepartmentID])
REFERENCES [enrol].[Department] ([DepartmentID])
GO

ALTER TABLE [enrol].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Department]
GO



USE [LMT_University]
GO

/****** Object:  Table [enrol].[Student]    Script Date: 10-07-2021 01:22:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [enrol].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentFirstName] [varchar](50) NOT NULL,
	[StudentLastName] [varchar](50) NULL,
	[StudentDOB] [date] NOT NULL,
	[StudentMobile] [varchar](50) NOT NULL,
	[StudentRollNo] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[InsertedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [enrol].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Address] FOREIGN KEY([AddressID])
REFERENCES [enrol].[Address] ([AddressID])
GO

ALTER TABLE [enrol].[Student] CHECK CONSTRAINT [FK_Student_Address]
GO

ALTER TABLE [enrol].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentID])
REFERENCES [enrol].[Department] ([DepartmentID])
GO

ALTER TABLE [enrol].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO





/*Inserting values*/

USE [LMT_University]
GO

INSERT INTO [enrol].[Address]
           ([StreetAddress]
           ,[City]
           ,[States]
           ,[PostalCode]
           ,[Country]
           ,[InsertedOn])
     VALUES
           ('5 Schurz Lane','Grybów',NULL,'33-330','Poland','2020-09-30'),

		   ('628 Waubesa Drive','Jinsheng',NULL,NULL,'China','2020-09-30'),
           ('44135 Northfield Way','Nowy Dwór Mazowiecki',NULL,'05-160','Poland','2020-09-30'),
           ('335 Bellgrove Road','Gaoqiao',NULL,NULL,'China','2020-09-30'),
           ('28 Victoria Junction','Bukovec',NULL,'739 84','Czech Republic','2020-09-30'),
           ('6 Stuart Road','Wushan',NULL,NULL,'China','2020-09-30'),
           ('730 Barby Street','Zhengchang',NULL,NULL,'China','2020-09-30'),
           ('22742 Schiller Street','Sumurwaru',NULL,NULL,'Indonesia','2020-09-30'),
           ('31 Elka Junction','Cigembong',NULL,NULL,'Indonesia','2020-09-30'),

           ('5 Kenwood Circle','Davao',NULL,'8000','Philippines','2020-09-30'),
           ('99 Bunker Hill Crossing','Zarasai',NULL,'32001','Lithuania','2020-09-30'),
           ('5 Farragut Center','Jaromerice',NULL,'569 44','Czech Republic','2020-09-30'),
           ('25 Lerdahl Street','Nanshi',NULL,NULL,'China','2020-09-30'),
           ('918 Bonner Way','Phayakkhaphum Phisai',NULL,'44110','Thailand','2020-09-30'),
           ('19 West Alley','Sempu',NULL,NULL,'Indonesia','2020-09-30'),
           ('234 Hagan Lane','Rennes','Bretagne','35033','France','2020-09-30'),
           ('33942 Eagle Crest Trail','Oliveiras','Porto','4745-235','Portugal','2020-09-30'),
           ('20791 Hermina Way','B?o L?c',NULL,NULL,'Vietnam','2020-09-30'),
           ('86 Lake View Way','Marsa Alam',NULL,NULL,'Egypt','2020-09-30'),
           ('19732 Burning Wood Parkway','Piteå','Norrbotten','944 73','Sweden','2020-09-30'),
           ('9320 Oak Valley Road','Rathangani',NULL,'A45','Ireland','2020-09-30'),
           ('2638 Waubesa Circle','Honda','NULL','732048','Colombia','2020-09-30'),
           ('6999 Monument Center','Cortes',NULL,'6341','Philippines','2020-09-30'),
           ('1 Warbler Hill','Proletar',NULL,NULL,'Tajikistan','2020-09-30'),
           ('1311 Crowley Street','Baghlan',NULL,NULL,'Afghanistan','2020-09-30'),
           ('19 Walton Way','Öldziyt',NULL,NULL,'Mongolia','2020-09-30'),
           ('1 Glacier Hill','Cergy-Pontoise','Île-de-France','95304','France','2020-09-30'),
           ('5094 Gateway Way','Živinice',NULL,NULL,'Bosnia and Herzegovina','2020-09-30'),
           ('2 Roth Pass','Tuatuka',NULL,NULL,'Indonesia','2020-09-30'),
           ('89531 Northview Road','Ganyi',NULL,NULL,'China','2020-09-30')

GO


USE [LMT_University]
GO

INSERT INTO [enrol].[Department]
           ([DepartmentName]
           ,[DepartmentDescription]
           ,[DepartmentCapacity]
           ,[InsertedOn])
     VALUES
           ('IT','Information Technology',60,'2020-09-30'),
           ('EE','Electrical Engineering',120,'2020-09-30'),
           ('CSE','Computer Science Engineering',140,'2020-09-30'),
           ('ME','Mechanical Engineering',110,'2020-09-30'),
           ('ECE','Electronic and Communication Engineering',80,'2020-09-30'),
           ('AEIE','Applied Electronics & Instrumentation Engineering',50,'2020-09-30')
GO


USE [LMT_University]
GO

INSERT INTO [enrol].[Lecturer]
           ([LecturerName]
           ,[LecturerHighestQualification]
           ,[LecturerAge]
           ,[DepartmentID]
           ,[InsertedOn])
     VALUES
           ('Peder Bernaldez','M.Tech','2010-10-10',6,'2020-09-30'),
('Emile Adolthine','PhD','2010-04-04',5,'2020-09-30'),
('Titos Iorizzi','M.Tech','2012-04-09',4,'2020-09-30'),
('Ferris Falck','MSC','2011-05-05',3,'2020-09-30'),
('Georgie McIlwraith','M.Tech','2017-05-08',2,'2020-09-30'),
('Karlen Kearn','MSC','2019-03-03',1,'2020-09-30'),
('Axe Whistlecroft','MCA','2019-03-03',6,'2020-09-30'),
('Drucie Bazek','PhD','2019-04-01',5,'2020-09-30'),
('Antony Gamlin','M.Tech','2019-04-01',4,'2020-09-30'),
('Alexina Moncaster','MBA','2019-04-01',3,'2020-09-30'),
('Milzie Kabos','MCA','2019-03-03',2,'2020-09-30'),
('Arlene Glendza','MS','2019-03-03',1,'2020-09-30'),
('Kirby Kabisch','M.Tech','2019-04-01',1,'2020-09-30'),
('Selma Eliyahu','PhD','2019-04-01',2,'2020-09-30'),
('Ilysa Chooter','M.Tech','2019-04-01',3,'2020-09-30'),
('Rozalie Pennycord','MSC','2010-10-10',4,'2020-09-30'),
('Dacey Glidder','M.Tech','2010-04-04',5,'2020-09-30'),
('Claretta Diaper','MSC','2012-04-09',6,'2020-09-30'),
('Kalil Pendleton','MCA','2011-05-05',6,'2020-09-30'),
('Trudey Brech','PhD','2011-10-05',5,'2020-09-30'),
('Gypsy Ambrosini','M.Tech','2011-03-30',4,'2020-09-30'),
('Lauree Ribbon','MBA','2013-04-04',3,'2020-09-30'),
('Hugo Valois','MCA','2012-04-29',2,'2020-09-30'),
('Perren Chetter','MS','2018-05-03',1,'2020-09-30'),
('Fawn Coffelt','M.Tech','2020-02-26',1,'2020-09-30'),
('Terrie Golby','PhD','2020-02-26',2,'2020-09-30'),
('Jeanette Ciraldo','M.Tech','2020-03-26',3,'2020-09-30'),
('Elfrieda Elijahu','MSC','2020-03-26',4,'2020-09-30'),
('Guthry Blaes','M.Tech','2020-03-26',5,'2020-09-30'),
('Richy Saice','MSC','2020-02-26',6,'2020-09-30')
GO


USE [LMT_University]
GO

INSERT INTO [enrol].[Student]
           ([StudentFirstName]
           ,[StudentLastName]
           ,[StudentDOB]
           ,[StudentMobile]
           ,[StudentRollNo]
           ,[DepartmentID]
           ,[AddressID]
           ,[InsertedOn])
     VALUES
        ('Joey','Ironside','1995-11-22','1276234258',1,3,1,'2020-10-01'),
('Karlotta','Garraway','1997-07-06','2192431615',2,3,24,'2020-10-01'),
('Jerry','Stutte','1996-12-18','4125425783',3,1,17,'2020-10-01'),
('Yehudit','Rahill','1995-01-15','9939485406',4,2,29,'2020-10-01'),
('Cele','Crosetto','1998-11-24','3622733725',5,3,16,'2020-10-01'),
('Hazlett','Mowsdale','1995-04-09','1482883476',6,4,23,'2020-10-01'),
('Carlyn','Marks','1996-12-27','6129154080',7,5,20,'2020-10-01'),
('Ellis','Boatman','1997-04-29','8269707118',8,6,7,'2020-10-01'),
('Florina','Boyack','1997-08-03','9623352863',9,3,14,'2020-10-01'),
('Borg','Innett','1997-09-03','5256034960',10,1,19,'2020-10-01'),
('Sayres','Jennings','1996-05-12','8675076454',11,4,27,'2020-10-01'),
('Jarid','Sprull','1998-11-02','1391270091',12,2,6,'2020-10-01'),
('Elvera','Bannard','1996-09-07','7897232539',13,4,24,'2020-10-01'),
('Ody','Inggall','1995-03-05','6094734260',14,5,25,'2020-10-01'),
('Curcio','McWhan','1996-07-29','2394865847',15,6,11,'2020-10-01'),
('Connie','Sinnie','1995-07-19','1473936221',16,6,23,'2020-10-01'),
('Auroora','Nel','1996-09-05','2216400391',17,3,14,'2020-10-01'),
('Wendall','Rosendale','1999-12-30','1818120249',18,3,28,'2020-10-01'),
('Hadley','Bradbury','1996-08-16','6518067697',19,1,10,'2020-10-01'),
('Celine','Smales','1999-07-11','7106508130',20,2,10,'2020-10-01'),
('Jesselyn','Stevenson','1998-05-16','9231672206',21,2,22,'2020-10-01'),
('Corinna','Pinkney','1998-01-16','8323630067',22,5,29,'2020-10-01'),
('Orelle','Adamthwaite','1997-07-26','2539126766',23,3,17,'2020-10-01'),
('Howie	','Seaman','1997-12-01','9888259627',24	,2,4,'2020-10-01'),
('Sibyl	','Corey','1996-07-18','4493239590',25,5,11,'2020-10-01'),
('Ruperta','Peaker','1999-05-22','5124781263',26,5,4,'2020-10-01'),
('Delmer','Roughey','1995-04-21','4175314364',27,3,22,'2020-10-01'),
('Gifford','OScannill','1996-10-31','3134783726',28,4,22,'2020-10-01'),
('Hedy	','OHone','1998-03-29','7316228047',29,2,17,'2020-10-01'),
('Shalna','Hyde-Chambers','1999-11-23','7455116160',30,5,6,'2020-10-01'),
('Ferdie','Di Napoli','1995-01-17','1905908693',31,4,30,'2020-10-01'),
('Piper','Giacomuzzo','1998-09-14','5499340503',32,6,4,'2020-10-01'),
('Gerhardt','Schruurs','1999-11-18','8197494894',33,3,1,'2020-10-01'),
('Mellicent','Buncher','1996-10-03','4584525312',34,5,28,'2020-10-01'),
('Corette','Demead','1997-09-17','4909862137',35,5,17,'2020-10-01'),
('Jorgan','Barson','1997-05-01','6022309183',36,1,21,'2020-10-01'),
('Koral','Bowen','1998-05-12','4198817454',37,4,3,'2020-10-01'),
('Allissa','Kitter','1998-08-17','7328676920',38,5,7,'2020-10-01'),
('Townsend','Doughtery','1998-04-13','2639777958',39,4,7,'2020-10-01'),
('Yolane','Geratt','1998-06-10','2069585951',40,6,17,'2020-10-01'),
('Chrystel','Allwood','1996-09-07','6958461692',41,3,25,'2020-10-01'),
('Dyana','Clutterbuck','1997-09-22','5842483886',42,1,1,'2020-10-01'),
('Nikki','Edy',	'1999-01-10','5096155315',43,6,25,'2020-10-01'),
('Hendrik','Surr','1997-04-05','2021255732',44,5,11,'2020-10-01'),
('Marta','Bosch','1998-09-28','4075136713',45,6,5,'2020-10-01'),
('Garrik','Pell','1999-04-14','3071057649',46,6,7,'2020-10-01'),
('Stormi','Colbron','1998-10-21','9968113654',47,3,28,'2020-10-01'),
('Angelique','Iacivelli','1995-06-07','9518365081',48,5,7,'2020-10-01'),
('Zack','Hefforde','1999-07-25','5455693035',49,1,29,'2020-10-01'),
('Gusella','Pettiford','1999-08-23','2425172721',50,4,3,'2020-10-01')


GO


/*quries*/

9)

SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
FROM [LMT_University].[enrol].[Student] 

1.
SELECT  [LecturerID]
      ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
      ,[DepartmentID]
      ,[InsertedOn]
  FROM [LMT_University].[enrol].[Lecturer]

2.
SELECT  [DepartmentID]
      ,[DepartmentName]
      ,[DepartmentDescription]
      ,[DepartmentCapacity]
      ,[InsertedOn]
  FROM [LMT_University].[enrol].[Department]

3.
SELECT  [AddressID]
      ,[StreetAddress]
      ,[City]
      ,[States]
      ,[PostalCode]
      ,[Country]
      ,[InsertedOn]
  FROM [LMT_University].[enrol].[Address]

4.
SELECT [StudentFirstName] + ' ' + [StudentLastName] AS StudentFullName,[StudentDOB],[StudentMobile]
FROM [LMT_University].[enrol].[Student]

5.
SELECT [StudentID],[StudentFirstName],[StudentLastName],[StudentDOB],[StudentMobile],[StudentRollNo],[AddressID]
FROM [LMT_University].[enrol].[Student]
WHERE AddressID = 7

6.
SELECT *
FROM [LMT_University].[enrol].[Student]
WHERE StudentFirstName LIKE 'B%'

7.
SELECT *
FROM [LMT_University].[enrol].[Student]
WHERE StudentFirstName LIKE 'A%' AND StudentFirstName LIKE '%A' 

8.
SELECT COUNT(StudentId)
FROM [LMT_University].[enrol].[Student]
WHERE DepartmentID = 6


9.
SELECT [StudentFirstName] + ' ' + [StudentLastName] AS StudentFullName,
DATEDIFF(YY,StudentDOB,GETDATE()) as StudentAge,
[StudentMobile]
FROM [LMT_University].[enrol].[Student]

10.
SELECT [StudentFirstName] + ' ' + [StudentLastName] AS StudentFullName,
DATEDIFF(YY,StudentDOB,GETDATE()) as StudentAge,
[StudentMobile]
FROM [LMT_University].[enrol].[Student]
WHERE DATEDIFF(YY,StudentDOB,GETDATE())>23

11.
SELECT [StudentFirstName] + ' ' + [StudentLastName] AS StudentFullName,
DATEDIFF(YY,StudentDOB,GETDATE()) as StudentAge,
[StudentMobile]
FROM [LMT_University].[enrol].[Student]
WHERE DATEDIFF(YY,StudentDOB,GETDATE()) = 21 OR DATEDIFF(YY,StudentDOB,GETDATE()) = 23

12.
SELECT [LecturerID],[LecturerName],[LecturerHighestQualification],[LecturerAge]
FROM [LMT_University].[enrol].[Lecturer]

13.
SELECT [LecturerID],[LecturerName],[LecturerHighestQualification],[LecturerAge]
FROM [LMT_University].[enrol].[Lecturer]
WHERE LecturerHighestQualification = 'MS' OR LecturerHighestQualification = 'PhD'

14.
SELECT *
FROM [LMT_University].[enrol].[Lecturer]
WHERE DepartmentID = 2

15.
SELECT *
FROM [LMT_University].[enrol].[Lecturer]
WHERE LecturerName LIKE '%R'

16.
SELECT *
FROM [LMT_University].[enrol].[Lecturer]
WHERE LecturerName LIKE 'E%' OR LecturerName LIKE '%E'

17.
SELECT *
FROM [LMT_University].[enrol].[Lecturer]
WHERE LecturerName LIKE UPPER(LecturerName) 

18.
SELECT SUBSTRING(LecturerName, 1, 5), LecturerID, LecturerHighestQualification
FROM [LMT_University].[enrol].[Lecturer]

19.
SELECT [LecturerID], [LecturerName], [LecturerHighestQualification],
DATEDIFF(year, CURRENT_TIMESTAMP, LecturerAge) * -1 AS LecturerAge
FROM [LMT_University].[enrol].[Lecturer]

20.
SELECT [DepartmentID], [DepartmentName], [DepartmentDescription], [DepartmentCapacity]
FROM [LMT_University].[enrol].[Department]

21.
SELECT *
FROM [LMT_University].[enrol].[Department]
WHERE DepartmentName LIKE 'ECE'

22.
SELECT [DepartmentName], [DepartmentDescription], [DepartmentCapacity]
FROM [LMT_University].[enrol].[Department]
WHERE DepartmentCapacity > 60


23.
SELECT [AddressID],[StreetAddress],[City],[States],[PostalCode],[Country]
FROM [LMT_University].[enrol].[Address]

24.
SELECT [AddressID],[StreetAddress],[City],[States],[PostalCode],[Country]
FROM [LMT_University].[enrol].[Address]
WHERE Country LIKE 'Poland'

25.
SELECT *
FROM [LMT_University].[enrol].[Address]
WHERE States IS NULL

26.
SELECT *
FROM [LMT_University].[enrol].[Address]
WHERE States IS NOT NULL

10.

1)
SELECT DISTINCT [StudentDOB]
FROM [LMT_University].[enrol].[Student]

2)
SELECT DISTINCT [DepartmentName]
FROM [LMT_University].[enrol].[Department]

3)
SELECT DISTINCT [Country]
FROM [LMT_University].[enrol].[Address]

4)
SELECT DISTINCT [States]
FROM [LMT_University].[enrol].[Address]

5)
SELECT DISTINCT [City]
FROM [LMT_University].[enrol].[Address]

6)
SELECT [LecturerID], [LecturerName], [LecturerHighestQualification],
DATEDIFF(year, CURRENT_TIMESTAMP, LecturerAge) * -1 AS LecturerYearService
FROM [LMT_University].[enrol].[Lecturer]

7)
SELECT [LecturerID], [LecturerName], [LecturerHighestQualification],
CASE 
WHEN (LecturerYearService) *-1 < 5 THEN 'Begining Level Experience'
WHEN (LecturerYearService) *-1 >= 5 AND (LecturerYearService) *-1 < 10 THEN 'Mid Level experience'
ELSE 'Experienced'
END AS LecturerType
FROM [LMT_University].[enrol].[Lecturer]




11.
1)
SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Lecturer] l ON s.DepartmentID = l.DepartmentID 

2)
SELECT [DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
	  ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
FROM [LMT_University].[enrol].[Department] d
INNER JOIN [LMT_University].[enrol].[Lecturer] l ON d.DepartmentID = l.DepartmentID 

3) 
SELECT [DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
	  ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
FROM [LMT_University].[enrol].[Department] d
INNER JOIN [LMT_University].[enrol].[Lecturer] l
ON l.DepartmentID = d.DepartmentID
ORDER BY
    [DepartmentName] ASC;
	
4)
SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
	  ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Lecturer] l ON s.DepartmentID = l.DepartmentID 
INNER JOIN [LMT_University].[enrol].[Department] d ON l.DepartmentID = d.DepartmentID

5)
SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[StreetAddress]
      ,[City]
      ,[States]
      ,[PostalCode]
      ,[Country]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID

6)

SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[StreetAddress]
      ,[City]
      ,[States]
      ,[PostalCode]
      ,[Country]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
	  ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID
INNER JOIN [LMT_University].[enrol].[Lecturer] l ON s.DepartmentID = l.DepartmentID 

7)

SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[StreetAddress]
      ,[City]
      ,[States]
      ,[PostalCode]
      ,[Country]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
	  ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID
INNER JOIN [LMT_University].[enrol].[Lecturer] l ON s.DepartmentID = l.DepartmentID 
WHERE d.DepartmentName = 'ME' OR d.DepartmentName='ECE'
ORDER BY
    [StudentFirstName] ASC;
	
8)

SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
	  ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID
INNER JOIN [LMT_University].[enrol].[Lecturer] l ON s.DepartmentID = l.DepartmentID 
WHERE l.LecturerHighestQualification = 'MS' OR l.LecturerHighestQualification='PhD'
ORDER BY
    [StudentFirstName] ASC;

9)

SELECT [StudentFirstName]
      ,[StudentLastName]
      ,[StudentDOB]
      ,[StudentMobile]
      ,[StudentRollNo]
	  ,[StreetAddress]
      ,[City]
      ,[States]
      ,[PostalCode]
      ,[Country]
	  ,[DepartmentName]
	  ,[DepartmentDescription]
      ,[DepartmentCapacity]
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID
WHERE a.Country = 'Thailand' 
ORDER BY
    [StudentFirstName] ASC;
10)
	
SELECT [DepartmentName]
	   ,COUNT ([StudentID]) AS 'Student count'
FROM [LMT_University].[enrol].[Student] s 
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY
    [Student count] ASC;
	
11)

SELECT [DepartmentName]
	   ,COUNT ([LecturerID]) AS 'Lecture count'
FROM [LMT_University].[enrol].[Lecturer] l 
INNER JOIN [LMT_University].[enrol].[Department] d ON l.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY
    [Lecture count] ASC;

12)

SELECT [Country]
	   ,COUNT([StudentRollNo]) AS 'Number of students'
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
GROUP BY a.Country 
ORDER BY
    [Number of students] ASC;
	
12.
1)

SELECT *  
INTO [LMT_University].[enrol].[StudCopy]  
FROM [LMT_University].[enrol].[Student]  

2)

SELECT *  
INTO [LMT_University].[enrol].[DeptCopy]  
FROM [LMT_University].[enrol].[Department]  
WHERE 1 = 2

3)

SELECT *  
INTO [LMT_University].[enrol].[DepartmentCopy]  
FROM [LMT_University].[enrol].[Department] 

4)
SELECT *  
INTO [LMT_University].[enrol].[AddrCopy]  
FROM [LMT_University].[enrol].[Address]  
WHERE 1 = 2

5)
SELECT *  
INTO [LMT_University].[enrol].[AddressCopy]  
FROM [LMT_University].[enrol].[Address]  

6)
SELECT *  
INTO [LMT_University].[enrol].[LecturerCopy]  
FROM [LMT_University].[enrol].[Lecturer]

13.
1)
DELETE FROM [LMT_University].[enrol].[LecturerCopy]

2)
DELETE s
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Department] d ON s.DepartmentID = d.DepartmentID 
WHERE d.DepartmentName = 'IT'

3)
DELETE s
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
WHERE a.Country = 'Indonesia'

4)
DELETE s
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
WHERE a.City = 'Nanshi'


5)

DELETE s
FROM [LMT_University].[enrol].[Student] s
INNER JOIN [LMT_University].[enrol].[Address] a ON s.AddressID = a.AddressID 
WHERE a.States = 'Bretagne' 

14.
1)
UPDATE
    [LMT_University].[enrol].[Student] 
SET
    [LMT_University].[enrol].[Student].StudentMobile += '+91' 
        
FROM 
    [LMT_University].[enrol].[Student] s
    INNER JOIN  [LMT_University].[enrol].[Department] d
        ON s.DepartmentID = d.DepartmentID
WHERE d.DepartmentName='ME'

2)
UPDATE [LMT_University].[enrol].[Student]
SET [DepartmentID] = 3
WHERE
    StudentID=42
	
3)
UPDATE [LMT_University].[enrol].[Lecturer]
SET [LecturerHighestQualification] = 'PHd'
WHERE
    LecturerHighestQualification='Phd'
4)
UPDATE [LMT_University].[enrol].[Address]
SET [PostalCode] ='00000' 
WHERE
    PostalCode= NULL;
5)

UPDATE [LMT_University].[enrol].[Student]
SET [StudentLastName] = 'Paul'
WHERE
    StudentLastName = 'Jerry'


