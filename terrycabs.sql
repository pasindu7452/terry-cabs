--created database
create database terrycabs
use terrycabs

--created table for the users
CREATE TABLE tblUser
(
[id] int IDENTITY(1,1) PRIMARY KEY,
[first_name] nvarchar (500) not null,
[last_name] nvarchar (500) not null,
[contact_number] int not null,
[address] nvarchar(500) not null,
[email] nvarchar(250) not null,
[password] nvarchar(250) not null
)


--created table for the vehicles
CREATE TABLE tblVehicle
(
[id] int IDENTITY(1,1) PRIMARY KEY,
[type] nvarchar (500) not null,
[brand] nvarchar (500) not null,
[model] nvarchar (500) not null,
[details] nvarchar(500) not null,
[img] nvarchar(250) not null
)


--created table for the user comments
CREATE TABLE tblComment
(
[id] int IDENTITY(1,1)PRIMARY KEY,
[first_name] nvarchar (500) not null,
[email] nvarchar(250) not null,
[date_time]	datetimeoffset not null, 
[comment] varchar(1000)not null

)

--created table for the rent requests
CREATE TABLE tblRent_req
(
[id] int IDENTITY(1,1)PRIMARY KEY,
[first_name] nvarchar (500) not null,
[email] nvarchar(250) not null,
[date_time]	datetimeoffset not null, 
[type] varchar(5)not null,
[brand] varchar(10)not null,
[model] varchar(15)not null,
[details] varchar(250)
)

--stored procedure to signup new users

CREATE PROCEDURE spAddUser
@fname nvarchar(500),
@lname nvarchar (500),
@contact int,
@address nvarchar(500),
@email nvarchar(250),
@password nvarchar(250),
@status int out
AS
BEGIN
DECLARE @count int
	SELECT @count=COUNT(email) FROM tblUser WHERE email=@email
	
	IF (@fname ='')OR(@lname='')OR(@contact='')OR(@address='')OR(@email='')OR(@password='')
	BEGIN
		SET @status=0
	END
	
	ELSE IF @count>0
	BEGIN
		SET @status =-1
	END
	
	ELSE
	BEGIN
		SET @status=1
		INSERT INTO tblUser VALUES (@fname,@lname,@contact,@address,@email,@password)
	END
END

--stored procedure to authenticate users
CREATE PROCEDURE spAuthenticateUsers
@email nvarchar(250),
@password nvarchar(250),
@status int out
AS
BEGIN
	DECLARE @count int
	
	SELECT @count=COUNT(email) FROM tblUser WHERE [email]=@email AND [password]=@password

	IF @count=1
	BEGIN
		SET @status=1
	END
	
	ELSE
	BEGIN
		SET @status=0
	END
END	


--stored prcodure for get user info ti user profile page
CREATE PROCEDURE spGetuser
@email nvarchar(250)
AS
BEGIN
 SELECT first_name,last_name,contact_number,address,email FROM tblUser WHERE [email]=@email
END


select * from tblUser


--stored procedure to update user email

CREATE PROCEDURE spUpdateemail
@old_email nvarchar(250),
@new_email nvarchar(250)
AS
BEGIN
	DECLARE @count int
	SELECT @count=COUNT(email) FROM tblUser WHERE email=@old_email
	IF @count=1
	BEGIN
		UPDATE tblUser SET email=@new_email WHERE email=@old_email
	END
END

--stored procedure to update user password
CREATE PROCEDURE spUpdatepassword
@email nvarchar(250),
@oldpass nvarchar(100),
@newpass nvarchar(100),
@status int out
AS
BEGIN
 DECLARE @count  int
 SELECT @count=COUNT(email) FROM tblUser WHERE email=@email AND password=@oldpass
 IF @count=1
 BEGIN
	UPDATE tblUser SET password=@newpass WHERE email=@email AND password=@oldpass
	SET @status=1
 END
 IF @count != 1
 BEGIN
	SET @status=0
 END
END

--stored procedure to save user comment
CREATE PROCEDURE spAddcomment
@email nvarchar(250),
@date datetimeoffset,
@comment varchar(1000)
AS 
BEGIN
DECLARE @firstname nvarchar(50)
SELECT @firstname=u.first_name FROM tblUser u WHERE u.email=@email
INSERT INTO tblComment VALUES (@firstname,@email,@date,@comment)
END
 
 SELECT * FROM tblComment


 --stored procedure to save rent_request
 CREATE PROCEDURE spRent_req
 @email nvarchar (100),
 @date datetime,
 @type varchar(5),
 @brand varchar(10),
 @model varchar(15),
 @details varchar(250)
 AS 
 BEGIN
 DECLARE @firstname nvarchar(50)
 SELECT @firstname=u.first_name FROM tblUser u WHERE u.email=@email
 INSERT INTO tblRent_req VALUES (@firstname,@email,@date,@type,@brand,@model,@details)
 END

 SELECT * FROM tblRent_req



CREATE PROCEDURE spAddvehicle
@type nvarchar (500),
@brand nvarchar (500) ,
@model nvarchar (500) ,
@details nvarchar(500) ,
@img nvarchar(250) 
AS
BEGIN
	INSERT INTO tblVehicle VALUES(@type,@brand,@model,@details,@img)
END

 SELECT * FROM tblVehicle



