create database infinite
CREATE TABLE Products
(
    Id INT IDENTITY PRIMARY KEY,
    PName NVARCHAR(50),
    ImagePath NVARCHAR(100),
    Price INT
);
INSERT INTO Products (PName,ImagePath, Price)
VALUES
('Desktop', '~/Images/Desktop.jpg', 50000),
('Laptop','~/Images/Laptop.jpg', 45000),
('Phone', '~/Images/Phone.jpg', 70000),
('Earpods','~/Images/Earpods.jpg', 40000),
('HeadPhones','~/Images/Headphones.jpg', 40000),
('Watch','~/Images/Watch.jpg', 55000);

CREATE PROCEDURE spGetProductByName
@Productname NVARCHAR(50)
AS
BEGIN
    IF(@Productname = 'All')
    BEGIN
        SELECT Id, PName, ImagePath, Price
        FROM Products;
    END
    ELSE
    BEGIN
        SELECT Id, PName,ImagePath, Price
        FROM tblProducts
        WHERE PName = @Productname;
    END
END
