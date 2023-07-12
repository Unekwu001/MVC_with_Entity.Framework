DELETE FROM dbo.users

SET IDENTITY_INSERT dbo.users ON 

INSERT INTO dbo.users (userID, fullname, email, pwd, dateCreation)
VALUES (1, 'Theo Shaibu', 'unekwutheophilus@gmail.com', 'Otusegwa360@', '2023-07-05 18:56:00')

INSERT INTO dbo.users (userID, fullname, email, pwd, dateCreation)
VALUES (2, 'John Kehinde', 'unheophilus@gmail.com', '00000000', '2023-07-05 18:56:00')