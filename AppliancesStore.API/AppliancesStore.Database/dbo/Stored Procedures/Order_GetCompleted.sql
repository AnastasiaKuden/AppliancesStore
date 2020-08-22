CREATE PROCEDURE [dbo].[Order_GetCompleted]	
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
		 o.IssuedBy		
	FROM dbo.[Order] o	
	WHERE o.Processed = 1 AND o.IssuedBy = 1
	ORDER BY o.[Date] DESC
END