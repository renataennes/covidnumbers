SELECT * FROM portfoliov1.coviddeath;

SELECT * FROM portfoliov1.covidvaccination;


Select *
From portfoliov1.covidvaccination
Where continent is not null 
order by 3,4

Select *
From portfoliov1.coviddeath
Where continent is not null 
order by 3,4

#select the data that will be used
Select Location, date, total_cases, new_cases, total_deaths, population
From portfoliov1.coviddeath
Where continent is not null 
order by 1,2

#total cases vs total death
Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From portfoliov1.coviddeath
Where location like '%Andorra%'
and continent is not null 
order by 1,2


#Total Cases vs Population
#Shows what percentage of population infected with Covid

Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From portfoliov1.coviddeath
Where location like '%Andorra%'
order by 1,2


#Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From portfoliov1.coviddeath
#Where location like '%Andorra%'
Group by Location, Population
order by PercentPopulationInfected desc







