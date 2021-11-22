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


