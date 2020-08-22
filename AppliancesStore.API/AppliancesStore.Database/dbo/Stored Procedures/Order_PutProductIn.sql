CREATE PROCEDURE [dbo].[Order_PutProductIn]
	@orderId   BIGINT,
	@productId INT,
	@quantity  TINYINT
AS
BEGIN
	DECLARE @amount MONEY = ((SELECT Price FROM dbo.Appliances WHERE Id = @productId) * @quantity)

	UPDATE dbo.[Order]
	SET TotalAmount = TotalAmount + @amount
	WHERE Id = @orderId;

	INSERT INTO dbo.Order_Products
		(OrderId,
		 ProductId,
		 Quantity,
		 Amount)
	VALUES
		(@orderId,
		 @productId,
		 @quantity,
		 @amount)
	DECLARE @id BIGINT = CAST(SCOPE_IDENTITY() AS [BIGINT]) 		
END;