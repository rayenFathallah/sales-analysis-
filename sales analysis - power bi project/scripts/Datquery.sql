/****** query for resizing the date dimtable   ******/
SELECT  [datekey],
                  [fulldatealternatekey] as Date,
                  --[daynumberofweek],
                  [englishdaynameofweek] as Day
                  -- ,[SpanishDayNameOfWeek]
                  --,[FrenchDayNameOfWeek]
                  ,
                  [daynumberofmonth] as DayNb,
                  [daynumberofyear] ,
                  [weeknumberofyear],
                  LEFT([englishmonthname],3) as MonthName
                  --,[SpanishMonthName]
                  --,[FrenchMonthName]
                  ,
                  [monthnumberofyear] as MonthNb,
                  [calendarquarter] as Quarter
--,[CalendarYear]
--,[CalendarSemester]
-- ,[FiscalQuarter]
--,[FiscalYear]
--,[FiscalSemester]
FROM   [AdventureWorksDW2019].[dbo].[dimdate] 
where CalendarYear >=2018
