CREATE PROCEDURE [dbo].[Appliances_FindByModelName]
	@model NVARCHAR(30)
AS
BEGIN
	SELECT COUNT(*) FROM dbo.Appliances WHERE Model = @model
end;