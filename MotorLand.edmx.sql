
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/12/2018 21:35:13
-- Generated from EDMX file: F:\Me\Private\Land\Land\MotorLand.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MotorLand];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ActivationStatusCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_ActivationStatusCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_ActivationStatusProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_ActivationStatusProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductProductImages]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [FK_ProductProductImages];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_CountryCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_ActivationStatuEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_ActivationStatuEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_RoleEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_EmployeeProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductVichDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VichDetails] DROP CONSTRAINT [FK_ProductVichDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Carts] DROP CONSTRAINT [FK_CustomerCart];
GO
IF OBJECT_ID(N'[dbo].[FK_CartCartLineItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartLineItems] DROP CONSTRAINT [FK_CartCartLineItem];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductCartLineItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartLineItems] DROP CONSTRAINT [FK_ProductCartLineItem];
GO
IF OBJECT_ID(N'[dbo].[FK_Customerwishlist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wishlists] DROP CONSTRAINT [FK_Customerwishlist];
GO
IF OBJECT_ID(N'[dbo].[FK_wishlistWishListLineItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WishListLineItems] DROP CONSTRAINT [FK_wishlistWishListLineItems];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductWishListLineItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WishListLineItems] DROP CONSTRAINT [FK_ProductWishListLineItems];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductOrderDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_ProductOrderDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_TransActionOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TransActions] DROP CONSTRAINT [FK_TransActionOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderOrderDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderOrderDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_CustomerOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_MainCategorySubCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubCategories] DROP CONSTRAINT [FK_MainCategorySubCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_SubCategorySubSubCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubSubCategories] DROP CONSTRAINT [FK_SubCategorySubSubCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_SubSubCategoryProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_SubSubCategoryProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductOffers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Offers] DROP CONSTRAINT [FK_ProductOffers];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_CountryProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_OffersOfferCustomerWishlist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfferCustomerWishlists] DROP CONSTRAINT [FK_OffersOfferCustomerWishlist];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerOfferCustomerWishlist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfferCustomerWishlists] DROP CONSTRAINT [FK_CustomerOfferCustomerWishlist];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ActivationStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActivationStatus];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[ProductImages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductImages];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[SubCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubCategories];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[VichDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VichDetails];
GO
IF OBJECT_ID(N'[dbo].[Carts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carts];
GO
IF OBJECT_ID(N'[dbo].[CartLineItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CartLineItems];
GO
IF OBJECT_ID(N'[dbo].[WishListLineItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WishListLineItems];
GO
IF OBJECT_ID(N'[dbo].[wishlists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[wishlists];
GO
IF OBJECT_ID(N'[dbo].[OrderDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderDetails];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[TransActions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TransActions];
GO
IF OBJECT_ID(N'[dbo].[MainCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MainCategories];
GO
IF OBJECT_ID(N'[dbo].[SubSubCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubSubCategories];
GO
IF OBJECT_ID(N'[dbo].[Offers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Offers];
GO
IF OBJECT_ID(N'[dbo].[OfferCustomerWishlists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfferCustomerWishlists];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActivationStatus'
CREATE TABLE [dbo].[ActivationStatus] (
    [ActivationID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Country_Id] int IDENTITY(1,1) NOT NULL,
    [Country_Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerID] int IDENTITY(1,1) NOT NULL,
    [FullName] nvarchar(max)  NOT NULL,
    [RegistrationDate] datetime  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [UserID] nvarchar(max)  NOT NULL,
    [ActivationID] int  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'ProductImages'
CREATE TABLE [dbo].[ProductImages] (
    [ImageID] int IDENTITY(1,1) NOT NULL,
    [ContentLength] int  NOT NULL,
    [FileName] nvarchar(max)  NOT NULL,
    [ProductImage1] varbinary(max)  NOT NULL,
    [ProductID] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductID] int IDENTITY(1,1) NOT NULL,
    [Product_Name] nvarchar(max)  NOT NULL,
    [Product_Price] nvarchar(max)  NOT NULL,
    [ActivationID] int  NOT NULL,
    [ProfileImage] nvarchar(max)  NOT NULL,
    [StockQuantity] int  NOT NULL,
    [CountSell] int  NOT NULL,
    [EmployeeID] int  NOT NULL,
    [SubSubCategoryID] int  NOT NULL,
    [ProductDetails] nvarchar(max)  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'SubCategories'
CREATE TABLE [dbo].[SubCategories] (
    [SubCategoryID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Image] nvarchar(max)  NOT NULL,
    [MainCategoryID] int  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmployeeID] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [UserID] nvarchar(max)  NOT NULL,
    [RegistrationDate] datetime  NOT NULL,
    [ActivationID] int  NOT NULL,
    [RoleID] int  NOT NULL,
    [ShopName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VichDetails'
CREATE TABLE [dbo].[VichDetails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Model] nvarchar(max)  NOT NULL,
    [Year] nvarchar(max)  NOT NULL,
    [CompanyName] nvarchar(max)  NOT NULL,
    [CarStatus] nvarchar(max)  NOT NULL,
    [Product_ProductID] int  NOT NULL
);
GO

-- Creating table 'Carts'
CREATE TABLE [dbo].[Carts] (
    [Cart_ID] int IDENTITY(1,1) NOT NULL,
    [Customer_CustomerID] int  NOT NULL
);
GO

-- Creating table 'CartLineItems'
CREATE TABLE [dbo].[CartLineItems] (
    [Cart_Line_ID] int IDENTITY(1,1) NOT NULL,
    [ProductName] nvarchar(max)  NOT NULL,
    [Quantity] int  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [Cart_ID] int  NOT NULL,
    [ProductID] int  NOT NULL
);
GO

-- Creating table 'WishListLineItems'
CREATE TABLE [dbo].[WishListLineItems] (
    [Wish_Line_ID] int IDENTITY(1,1) NOT NULL,
    [ProductName] nvarchar(max)  NOT NULL,
    [Price] nvarchar(max)  NOT NULL,
    [wishlistId] int  NOT NULL,
    [ProductID] int  NOT NULL
);
GO

-- Creating table 'wishlists'
CREATE TABLE [dbo].[wishlists] (
    [Wish_ID] int IDENTITY(1,1) NOT NULL,
    [Customer_CustomerID] int  NOT NULL
);
GO

-- Creating table 'OrderDetails'
CREATE TABLE [dbo].[OrderDetails] (
    [OrderDetailId] int IDENTITY(1,1) NOT NULL,
    [Quantity] int  NOT NULL,
    [UnitPrice] int  NOT NULL,
    [ProductID] int  NOT NULL,
    [Order_Id] int  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Order_Id] int IDENTITY(1,1) NOT NULL,
    [First_Name] nvarchar(max)  NOT NULL,
    [Last_Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [CityID] int  NOT NULL,
    [ProvinceID] int  NOT NULL,
    [CountryID] int  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Total] decimal(18,0)  NOT NULL,
    [Order_Date] datetime  NOT NULL,
    [Order_Status] nvarchar(max)  NOT NULL,
    [CustomerID] int  NOT NULL
);
GO

-- Creating table 'TransActions'
CREATE TABLE [dbo].[TransActions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TransactionId] nvarchar(max)  NOT NULL,
    [Order_Order_Id] int  NOT NULL
);
GO

-- Creating table 'MainCategories'
CREATE TABLE [dbo].[MainCategories] (
    [MainCategoryID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Image] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SubSubCategories'
CREATE TABLE [dbo].[SubSubCategories] (
    [SubSubCategoryID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Image] nvarchar(max)  NOT NULL,
    [SubCategoryID] int  NOT NULL
);
GO

-- Creating table 'Offers'
CREATE TABLE [dbo].[Offers] (
    [Offer_ID] int IDENTITY(1,1) NOT NULL,
    [New_Price] decimal(18,0)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Product_ProductID] int  NOT NULL
);
GO

-- Creating table 'OfferCustomerWishlists'
CREATE TABLE [dbo].[OfferCustomerWishlists] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Offer_ID] int  NOT NULL,
    [CustomerID] int  NOT NULL
);
GO

-- Creating table 'Ratings'
CREATE TABLE [dbo].[Ratings] (
    [Rating_Id] int IDENTITY(1,1) NOT NULL,
    [Comment] nvarchar(max)  NOT NULL,
    [ProductID] int  NOT NULL,
    [RatingScore] float  NOT NULL,
    [CustomerID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ActivationID] in table 'ActivationStatus'
ALTER TABLE [dbo].[ActivationStatus]
ADD CONSTRAINT [PK_ActivationStatus]
    PRIMARY KEY CLUSTERED ([ActivationID] ASC);
GO

-- Creating primary key on [Country_Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Country_Id] ASC);
GO

-- Creating primary key on [CustomerID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerID] ASC);
GO

-- Creating primary key on [ImageID] in table 'ProductImages'
ALTER TABLE [dbo].[ProductImages]
ADD CONSTRAINT [PK_ProductImages]
    PRIMARY KEY CLUSTERED ([ImageID] ASC);
GO

-- Creating primary key on [ProductID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductID] ASC);
GO

-- Creating primary key on [SubCategoryID] in table 'SubCategories'
ALTER TABLE [dbo].[SubCategories]
ADD CONSTRAINT [PK_SubCategories]
    PRIMARY KEY CLUSTERED ([SubCategoryID] ASC);
GO

-- Creating primary key on [EmployeeID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC);
GO

-- Creating primary key on [RoleID] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleID] ASC);
GO

-- Creating primary key on [Id] in table 'VichDetails'
ALTER TABLE [dbo].[VichDetails]
ADD CONSTRAINT [PK_VichDetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Cart_ID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [PK_Carts]
    PRIMARY KEY CLUSTERED ([Cart_ID] ASC);
GO

-- Creating primary key on [Cart_Line_ID] in table 'CartLineItems'
ALTER TABLE [dbo].[CartLineItems]
ADD CONSTRAINT [PK_CartLineItems]
    PRIMARY KEY CLUSTERED ([Cart_Line_ID] ASC);
GO

-- Creating primary key on [Wish_Line_ID] in table 'WishListLineItems'
ALTER TABLE [dbo].[WishListLineItems]
ADD CONSTRAINT [PK_WishListLineItems]
    PRIMARY KEY CLUSTERED ([Wish_Line_ID] ASC);
GO

-- Creating primary key on [Wish_ID] in table 'wishlists'
ALTER TABLE [dbo].[wishlists]
ADD CONSTRAINT [PK_wishlists]
    PRIMARY KEY CLUSTERED ([Wish_ID] ASC);
GO

-- Creating primary key on [OrderDetailId] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [PK_OrderDetails]
    PRIMARY KEY CLUSTERED ([OrderDetailId] ASC);
GO

-- Creating primary key on [Order_Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Order_Id] ASC);
GO

-- Creating primary key on [Id] in table 'TransActions'
ALTER TABLE [dbo].[TransActions]
ADD CONSTRAINT [PK_TransActions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [MainCategoryID] in table 'MainCategories'
ALTER TABLE [dbo].[MainCategories]
ADD CONSTRAINT [PK_MainCategories]
    PRIMARY KEY CLUSTERED ([MainCategoryID] ASC);
GO

-- Creating primary key on [SubSubCategoryID] in table 'SubSubCategories'
ALTER TABLE [dbo].[SubSubCategories]
ADD CONSTRAINT [PK_SubSubCategories]
    PRIMARY KEY CLUSTERED ([SubSubCategoryID] ASC);
GO

-- Creating primary key on [Offer_ID] in table 'Offers'
ALTER TABLE [dbo].[Offers]
ADD CONSTRAINT [PK_Offers]
    PRIMARY KEY CLUSTERED ([Offer_ID] ASC);
GO

-- Creating primary key on [Id] in table 'OfferCustomerWishlists'
ALTER TABLE [dbo].[OfferCustomerWishlists]
ADD CONSTRAINT [PK_OfferCustomerWishlists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Rating_Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [PK_Ratings]
    PRIMARY KEY CLUSTERED ([Rating_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActivationID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_ActivationStatusCustomer]
    FOREIGN KEY ([ActivationID])
    REFERENCES [dbo].[ActivationStatus]
        ([ActivationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivationStatusCustomer'
CREATE INDEX [IX_FK_ActivationStatusCustomer]
ON [dbo].[Customers]
    ([ActivationID]);
GO

-- Creating foreign key on [ActivationID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_ActivationStatusProduct]
    FOREIGN KEY ([ActivationID])
    REFERENCES [dbo].[ActivationStatus]
        ([ActivationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivationStatusProduct'
CREATE INDEX [IX_FK_ActivationStatusProduct]
ON [dbo].[Products]
    ([ActivationID]);
GO

-- Creating foreign key on [ProductID] in table 'ProductImages'
ALTER TABLE [dbo].[ProductImages]
ADD CONSTRAINT [FK_ProductProductImages]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductProductImages'
CREATE INDEX [IX_FK_ProductProductImages]
ON [dbo].[ProductImages]
    ([ProductID]);
GO

-- Creating foreign key on [Country_Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_CountryCustomer]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[Countries]
        ([Country_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryCustomer'
CREATE INDEX [IX_FK_CountryCustomer]
ON [dbo].[Customers]
    ([Country_Id]);
GO

-- Creating foreign key on [ActivationID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_ActivationStatuEmployee]
    FOREIGN KEY ([ActivationID])
    REFERENCES [dbo].[ActivationStatus]
        ([ActivationID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivationStatuEmployee'
CREATE INDEX [IX_FK_ActivationStatuEmployee]
ON [dbo].[Employees]
    ([ActivationID]);
GO

-- Creating foreign key on [RoleID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_RoleEmployee]
    FOREIGN KEY ([RoleID])
    REFERENCES [dbo].[Roles]
        ([RoleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleEmployee'
CREATE INDEX [IX_FK_RoleEmployee]
ON [dbo].[Employees]
    ([RoleID]);
GO

-- Creating foreign key on [EmployeeID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_EmployeeProduct]
    FOREIGN KEY ([EmployeeID])
    REFERENCES [dbo].[Employees]
        ([EmployeeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeProduct'
CREATE INDEX [IX_FK_EmployeeProduct]
ON [dbo].[Products]
    ([EmployeeID]);
GO

-- Creating foreign key on [Product_ProductID] in table 'VichDetails'
ALTER TABLE [dbo].[VichDetails]
ADD CONSTRAINT [FK_ProductVichDetails]
    FOREIGN KEY ([Product_ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductVichDetails'
CREATE INDEX [IX_FK_ProductVichDetails]
ON [dbo].[VichDetails]
    ([Product_ProductID]);
GO

-- Creating foreign key on [Customer_CustomerID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [FK_CustomerCart]
    FOREIGN KEY ([Customer_CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCart'
CREATE INDEX [IX_FK_CustomerCart]
ON [dbo].[Carts]
    ([Customer_CustomerID]);
GO

-- Creating foreign key on [Cart_ID] in table 'CartLineItems'
ALTER TABLE [dbo].[CartLineItems]
ADD CONSTRAINT [FK_CartCartLineItem]
    FOREIGN KEY ([Cart_ID])
    REFERENCES [dbo].[Carts]
        ([Cart_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CartCartLineItem'
CREATE INDEX [IX_FK_CartCartLineItem]
ON [dbo].[CartLineItems]
    ([Cart_ID]);
GO

-- Creating foreign key on [ProductID] in table 'CartLineItems'
ALTER TABLE [dbo].[CartLineItems]
ADD CONSTRAINT [FK_ProductCartLineItem]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductCartLineItem'
CREATE INDEX [IX_FK_ProductCartLineItem]
ON [dbo].[CartLineItems]
    ([ProductID]);
GO

-- Creating foreign key on [Customer_CustomerID] in table 'wishlists'
ALTER TABLE [dbo].[wishlists]
ADD CONSTRAINT [FK_Customerwishlist]
    FOREIGN KEY ([Customer_CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customerwishlist'
CREATE INDEX [IX_FK_Customerwishlist]
ON [dbo].[wishlists]
    ([Customer_CustomerID]);
GO

-- Creating foreign key on [wishlistId] in table 'WishListLineItems'
ALTER TABLE [dbo].[WishListLineItems]
ADD CONSTRAINT [FK_wishlistWishListLineItems]
    FOREIGN KEY ([wishlistId])
    REFERENCES [dbo].[wishlists]
        ([Wish_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wishlistWishListLineItems'
CREATE INDEX [IX_FK_wishlistWishListLineItems]
ON [dbo].[WishListLineItems]
    ([wishlistId]);
GO

-- Creating foreign key on [ProductID] in table 'WishListLineItems'
ALTER TABLE [dbo].[WishListLineItems]
ADD CONSTRAINT [FK_ProductWishListLineItems]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductWishListLineItems'
CREATE INDEX [IX_FK_ProductWishListLineItems]
ON [dbo].[WishListLineItems]
    ([ProductID]);
GO

-- Creating foreign key on [ProductID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_ProductOrderDetail]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductOrderDetail'
CREATE INDEX [IX_FK_ProductOrderDetail]
ON [dbo].[OrderDetails]
    ([ProductID]);
GO

-- Creating foreign key on [Order_Order_Id] in table 'TransActions'
ALTER TABLE [dbo].[TransActions]
ADD CONSTRAINT [FK_TransActionOrder]
    FOREIGN KEY ([Order_Order_Id])
    REFERENCES [dbo].[Orders]
        ([Order_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransActionOrder'
CREATE INDEX [IX_FK_TransActionOrder]
ON [dbo].[TransActions]
    ([Order_Order_Id]);
GO

-- Creating foreign key on [Order_Id] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderOrderDetail]
    FOREIGN KEY ([Order_Id])
    REFERENCES [dbo].[Orders]
        ([Order_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderOrderDetail'
CREATE INDEX [IX_FK_OrderOrderDetail]
ON [dbo].[OrderDetails]
    ([Order_Id]);
GO

-- Creating foreign key on [CustomerID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_CustomerOrder]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerOrder'
CREATE INDEX [IX_FK_CustomerOrder]
ON [dbo].[Orders]
    ([CustomerID]);
GO

-- Creating foreign key on [MainCategoryID] in table 'SubCategories'
ALTER TABLE [dbo].[SubCategories]
ADD CONSTRAINT [FK_MainCategorySubCategory]
    FOREIGN KEY ([MainCategoryID])
    REFERENCES [dbo].[MainCategories]
        ([MainCategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MainCategorySubCategory'
CREATE INDEX [IX_FK_MainCategorySubCategory]
ON [dbo].[SubCategories]
    ([MainCategoryID]);
GO

-- Creating foreign key on [SubCategoryID] in table 'SubSubCategories'
ALTER TABLE [dbo].[SubSubCategories]
ADD CONSTRAINT [FK_SubCategorySubSubCategory]
    FOREIGN KEY ([SubCategoryID])
    REFERENCES [dbo].[SubCategories]
        ([SubCategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubCategorySubSubCategory'
CREATE INDEX [IX_FK_SubCategorySubSubCategory]
ON [dbo].[SubSubCategories]
    ([SubCategoryID]);
GO

-- Creating foreign key on [SubSubCategoryID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_SubSubCategoryProduct]
    FOREIGN KEY ([SubSubCategoryID])
    REFERENCES [dbo].[SubSubCategories]
        ([SubSubCategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubSubCategoryProduct'
CREATE INDEX [IX_FK_SubSubCategoryProduct]
ON [dbo].[Products]
    ([SubSubCategoryID]);
GO

-- Creating foreign key on [Product_ProductID] in table 'Offers'
ALTER TABLE [dbo].[Offers]
ADD CONSTRAINT [FK_ProductOffers]
    FOREIGN KEY ([Product_ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductOffers'
CREATE INDEX [IX_FK_ProductOffers]
ON [dbo].[Offers]
    ([Product_ProductID]);
GO

-- Creating foreign key on [Country_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_CountryProduct]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[Countries]
        ([Country_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryProduct'
CREATE INDEX [IX_FK_CountryProduct]
ON [dbo].[Products]
    ([Country_Id]);
GO

-- Creating foreign key on [Offer_ID] in table 'OfferCustomerWishlists'
ALTER TABLE [dbo].[OfferCustomerWishlists]
ADD CONSTRAINT [FK_OffersOfferCustomerWishlist]
    FOREIGN KEY ([Offer_ID])
    REFERENCES [dbo].[Offers]
        ([Offer_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OffersOfferCustomerWishlist'
CREATE INDEX [IX_FK_OffersOfferCustomerWishlist]
ON [dbo].[OfferCustomerWishlists]
    ([Offer_ID]);
GO

-- Creating foreign key on [CustomerID] in table 'OfferCustomerWishlists'
ALTER TABLE [dbo].[OfferCustomerWishlists]
ADD CONSTRAINT [FK_CustomerOfferCustomerWishlist]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerOfferCustomerWishlist'
CREATE INDEX [IX_FK_CustomerOfferCustomerWishlist]
ON [dbo].[OfferCustomerWishlists]
    ([CustomerID]);
GO

-- Creating foreign key on [ProductID] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_ProductRating]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductRating'
CREATE INDEX [IX_FK_ProductRating]
ON [dbo].[Ratings]
    ([ProductID]);
GO

-- Creating foreign key on [CustomerID] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_CustomerRating]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerRating'
CREATE INDEX [IX_FK_CustomerRating]
ON [dbo].[Ratings]
    ([CustomerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------