USE BabyShop
GO

CREATE PROCEDURE DeleteCategory
	@name nvarchar(100)

AS
BEGIN
	DELETE FROM [Category] WHERE name = @name
	print('Da xoa thanh cong');
END;