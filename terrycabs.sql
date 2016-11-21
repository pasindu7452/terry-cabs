--created database
create database terrycabs

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

select * from tblUser









