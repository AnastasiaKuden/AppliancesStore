CREATE PROCEDURE [dbo].[Appliances_UpdatePrice]
	@id    INT,
	@price MONEY
AS
BEGIN
	UPDATE dbo.Appliances
	SET Price = @price
	WHERE Id = @id AND IsDeleted = 0
	EXEC Appliances_GetById @id
END;