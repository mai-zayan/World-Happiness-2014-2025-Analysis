USE worldhappiness
go
CREATE TABLE Fact_Happiness (
    Ranking INT,
    Country NVARCHAR(200),
    Regional_indicator NVARCHAR(200) NULL,
    Happiness_score FLOAT,
    GDP_per_capita FLOAT,
    Social_support FLOAT,
    Healthy_life_expectancy FLOAT,
    Freedom_to_make_life_choices FLOAT,
    Generosity FLOAT,
    Perceptions_of_corruption FLOAT,
    Year INT
);
go

SELECT *
FROM dbo.world_happiness_all_years_clean_auto;

go
INSERT INTO Fact_Happiness
SELECT *
FROM dbo.world_happiness_all_years_clean_auto;
go
CREATE VIEW Dim_Year AS
SELECT DISTINCT
    Year
FROM Fact_Happiness;
go
drop view Dim_Year
go
CREATE VIEW Dim_Year AS
SELECT DISTINCT
    Year
FROM Fact_Happiness;
go
CREATE VIEW Dim_Country AS
SELECT DISTINCT Country
FROM Fact_Happiness;
go
drop view Dim_Country
go
CREATE VIEW Dim_Country AS
SELECT DISTINCT Country
FROM Fact_Happiness;
go
CREATE VIEW Dim_Region AS
SELECT DISTINCT Regional_indicator
FROM Fact_Happiness;
go
drop view Dim_Region
go
CREATE VIEW Dim_Region AS
SELECT DISTINCT Regional_indicator
FROM Fact_Happiness;






