USE AdventureWorksDW2019

--Không sử dụng Index và sử dụng Index
SELECT * INTO DimProduct_NoIndex FROM DimProduct
SELECT * INTO DimProduct_Index FROM DimProduct

CREATE INDEX Idx_DimProduct_Index_EnglishProductName ON DimProduct_Index(EnglishProductName);

SELECT * FROM DimProduct_NoIndex WHERE EnglishProductName LIKE 'Adjustable Race'
SELECT * FROM DimProduct_Index WHERE EnglishProductName LIKE 'Adjustable Race'