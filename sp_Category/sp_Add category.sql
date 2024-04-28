Use BabyShop
GO

CREATE PROCEDURE AddCategory
	@name nvarchar(100)

AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM [Category] WHERE name = @name)
    BEGIN
   
        INSERT INTO [Category] (name)
        VALUES (@name);
        
        PRINT 'Them thanh cong';
    END
    ELSE
    BEGIN

        PRINT 'Mat hang da ton tai';
    END
END;