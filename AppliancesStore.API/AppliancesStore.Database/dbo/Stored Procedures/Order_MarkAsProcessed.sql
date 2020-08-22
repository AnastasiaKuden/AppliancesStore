CREATE PROCEDURE dbo.[Order_MarkAsProcessed]
	@Id BIGINT
AS
BEGIN
	UPDATE [Order]
	SET Processed = 1 WHERE Id = @Id;			
END;