CREATE PROCEDURE [dbo].[OrderWithProducts_GetById]
	@orderId BIGINT
AS
BEGIN
	SELECT 
		 o.Id,
		 o.FirstName,
		 o.LastName,
		 o.Email,
		 o.Phone,
		 o.CourierDelivery,
		 o.[Address],
		 o.TotalAmount,
		 o.[Date],
		 o.Processed,
		 o.IssuedBy,
		 p.ProductId,	
		 p.Quantity,
		 p.Amount,	
		 a.Model,
		 a.Price
	FROM dbo.[Order] o
	LEFT JOIN Order_Products p ON p.OrderId = o.Id
	LEFT JOIN Appliances a ON a.Id = p.ProductId 
	WHERE o.Id = @orderId 
END