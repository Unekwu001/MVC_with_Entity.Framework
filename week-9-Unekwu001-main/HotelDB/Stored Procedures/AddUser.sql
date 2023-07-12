CREATE PROCEDURE AddUser
	@fullname varchar(200),
	@email varchar(200),
	@pwd varchar(200)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION;
		
		-- Validate input parameters
		IF @fullname IS NULL OR @fullname = ''
		BEGIN
			RAISERROR ('Fullname is required.', 16, 1);
			RETURN;
		END
		
		IF @email IS NULL
		BEGIN
			RAISERROR ('Email is required.', 16, 1);
			RETURN;
		END

		-- Insert the user record
		INSERT INTO users (fullname, email, pwd)
		VALUES (@fullname, @email, @pwd);
		
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION;

		THROW;
	END CATCH
END

