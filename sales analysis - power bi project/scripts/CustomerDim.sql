/****** SCript for Customers  ******/
SELECT 
 [customerkey], 
  --,[GeographyKey],
  --,[CustomerAlternateKey]
  -- ,[Title]
  --,[FirstName]
  --,[MiddleName]
  --,[LastName]
  --[NameStyle]
  Customer.firstname + ' ' + Customer.lastname AS Fullname --,[BirthDate]
  , 
  Datediff(
    year, birthdate, datefirstpurchase
  ) AS age --,[MaritalStatus]
  --,[Suffix]
  --,[Gender]
  --,[EmailAddress]
  , 
  [yearlyincome] --,[TotalChildren]
  , 
  [numberchildrenathome], 
  [englisheducation] --,[SpanishEducation]
  --,[FrenchEducation]
  , 
  [englishoccupation] --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  , 
  [numbercarsowned] -- ,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  --,[DateFirstPurchase]
  --,[CommuteDistance]
  , 
  Geo.city as City, 
  CASE Customer.gender WHEN 'F' THEN 'Female' WHEN 'M' THEN 'Male' END AS Gender, 
  CASE Customer.maritalstatus WHEN 'M' THEN 'Married' WHEN 'S' THEN 'Single' END AS MartialStatus 
FROM 
  [AdventureWorksDW2019].[dbo].[dimcustomer] Customer 
  LEFT JOIN dbo.dimgeography AS Geo ON Geo.geographykey = Customer.geographykey; -- left join with the geography dimension in order to get the city 
