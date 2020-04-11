/*
Copyright Kimball Group, 2009

This script clears out the MDWT_2008 database, in preparation for re-running the load. 
*/

USE MDWT_2008R2
go

TRUNCATE TABLE FactOrders
;
TRUNCATE TABLE FactExchangeRates
;

DELETE FROM DimCurrency WHERE CurrencyKey > 0
;
DELETE FROM DimCustomer WHERE CustomerKey > 0
;
DELETE FROM DimDate WHERE DateKey > 0
;
DELETE FROM DimEmployee WHERE EmployeeKey > 0
;
DELETE FROM DimOrderInfo WHERE OrderInfoKey > 0
;
DELETE FROM DimProduct WHERE ProductKey > 0
;
DELETE FROM DimPromotion WHERE PromotionKey > 0
;