/****** Script for the product dimension   ******/
SELECT 
   [ProductKey] --,[ProductAlternateKey]
  -- ,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  [EnglishProductName] --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  -- ,[FinishedGoodsFlag]
  --,[Color]
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  , 
  [ListPrice] --,[Size]
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  [ProductLine], 
  [DealerPrice], 
  [Class], 
  [Style], 
  [ModelName] --,[LargePhoto]
  --,[EnglishDescription]
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL(Status, 'Outdated') as ProductStatus, 
  Subcat.EnglishProductSubcategoryName Subcategory, 
  Cat.EnglishProductCategoryName Category 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] Product 
  LEFT JOIN dbo.DimProductSubcategory AS Subcat ON Subcat.ProductSubcategoryKey = Product.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS cat ON cat.ProductCategoryKey = Subcat.ProductCategoryKey;
