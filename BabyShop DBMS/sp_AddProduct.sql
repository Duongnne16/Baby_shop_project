USE BabyShop
GO

CREATE PROCEDURE AddProduct
	@category_id INT,
	@title nvarchar(250),
	@inbound_price INT,
	@outbound_price INT,
	@supply_id INT,
	@quantity INT,
	@description nvarchar(1000)
AS
BEGIN

	IF NOT EXISTS (SELECT 1 FROM [Product] WHERE title = @title)
    BEGIN
        INSERT INTO [Product] (category_id, title, inbound_price, outbound_price, supply_id, quantity, description)
        VALUES (@category_id, @title, @inbound_price, @outbound_price, @supply_id, @quantity, @description);
        
        PRINT 'Them san pham thanh cong';
    END
    ELSE
    BEGIN

        PRINT 'San pham da ton tai';
    END
END;