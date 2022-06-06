create database CustomerDB


CREATE TABLE Roles
(
[RoleId] TINYINT CONSTRAINT pk_RoleId PRIMARY KEY,
[RoleName] VARCHAR(20) CONSTRAINT uq_RoleName UNIQUE
)

CREATE TABLE Users
(
[EmailId] VARCHAR(50) CONSTRAINT pk_EmailId PRIMARY KEY,
[UserPassword] VARCHAR(15) NOT NULL,
[RoleId] TINYINT CONSTRAINT fk_RoleId REFERENCES Roles(RoleId)
)


INSERT INTO Roles (RoleId, RoleName) VALUES (1, 'Admin')
INSERT INTO Roles (RoleId, RoleName) VALUES (2, 'User')



INSERT INTO Users( EmailId,UserPassword,RoleId) VALUES('user1@gmail.com','pass1',2)
INSERT INTO Users( EmailId,UserPassword,RoleId) VALUES('user2@gmail.com','pass2',2)
INSERT INTO Users( EmailId,UserPassword,RoleId) VALUES('user3@gmail.com','pass3',1)

select * from Users

