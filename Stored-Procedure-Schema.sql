USE [MMTShop]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCategoryList]    Script Date: 26-09-2021 04:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------
Create   Procedure [dbo].[SP_GetCategoryList]
As
Begin

Select 
	CategoryID,
	[Name],
	IsActive,
	IsDeleted,
	CreatedOn,
	ModifiedOn
From Category;

End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductbyCategory]    Script Date: 26-09-2021 04:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  Procedure [dbo].[SP_GetProductbyCategory]
(
@CategoryID UNIQUEIDENTIFIER
)
As
Begin

--Declare @AID INT;
--SET @AID = 45;

Select * 
From Product
Where CategoryID = @CategoryID
;

End
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductList]    Script Date: 26-09-2021 04:07:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[SP_GetProductList]
As
Begin

Select 
	ProductID,
	CategoryID,
	SKU,
	[Name],
	[Description],
	Price,
	IsActive,
	IsDeleted,
	CreatedOn,
	ModifiedOn
From Product;

End
GO
