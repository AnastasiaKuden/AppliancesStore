CREATE PROCEDURE [dbo].[Order_Create]
	@firstName       NVARCHAR(15),
	@lastName        NVARCHAR(15) = NULL,
	@email           NVARCHAR(30),
	@phone           NVARCHAR(15),
	@courierDelivery BIT,
	@address         NVARCHAR(30)
AS
BEGIN	
	INSERT INTO dbo.[Order]
		(FirstName, 
		 LastName, 
		 Email, 
		 Phone, 
		 CourierDelivery, 
		 [Address], 
		 TotalAmount, 
		 [Date],
		 [Processed],
		 IssuedBy)
	VALUES
		(@firstName,
		 @lastName,
		 @email,
		 @phone,
		 @courierDelivery,
		 @address,
		 0,
		 SYSDATETIME(),
		 DEFAULT,
		 DEFAULT)
	SELECT SCOPE_IDENTITY()
END;