CREATE PROCEDURE dbo.[Order_MarkAsIssued]
	@Id BIGINT
AS
BEGIN
	UPDATE [Order]
	SET IssuedBy = 1 WHERE Id = @Id;			
END;