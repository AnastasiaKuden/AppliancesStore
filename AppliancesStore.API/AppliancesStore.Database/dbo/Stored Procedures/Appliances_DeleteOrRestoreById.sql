CREATE PROCEDURE dbo.Appliances_DeleteOrRestoreById
	@id INT
AS
BEGIN
	IF (SELECT IsDeleted FROM Appliances WHERE Id = @id) = 0
		BEGIN
			UPDATE Appliances
			SET IsDeleted = 1 WHERE Id = @id;
			SELECT 1;
		END;
	ELSE IF (SELECT IsDeleted FROM Appliances WHERE Id = @id) = 1
		BEGIN
			UPDATE Appliances
			SET IsDeleted = 0 WHERE Id = @id;
			SELECT 0;
		END;		
END;
