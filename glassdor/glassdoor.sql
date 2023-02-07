/****** Script for SelectTopNRows command from SSMS  ******/
select 
  *, 
  case when [Min_Salary] = -1 then 0 else [Min_Salary] end as min_salary, 
  case when [Max_Salary] =-1 then 0 else [Max_Salary] end as max_salary 
from 
  (
    select 
      a.*, 
      b.[Min_Salary], 
      b.[Max_Salary], 
      b.[Date_Posted], 
      b.[Valid_until] 
    from 
      (
        SELECT 
          [Job Title] --,[Salary Estimate]
          , 
          [Job Description] --,[Rating]
          , 
          [Company Name] --, [Location]
          --,(CHARINDEX(',',reverse ([Location] )))-1 as [indexes]
          , 
          right([location], 3) as [State] --,[Headquarters]
          -- ,[Size]
          , 
          [Type of ownership], 
          [Industry], 
          [Sector] --,[Revenue]
          --,[min_salary]
          --,[max_salary]
          --,[avg_salary]
          --,[job_state]
          --,[same_state]
          --,[company_age]
          --,[python]
          --,[excel]
          --,[hadoop]
          --,[spark]
          --,[aws]
          --,[tableau]
          --,[big_data]
          --,[job_simp]
          --, [seniority] 
        FROM 
          [glassdor_analysis].[dbo].[Worksheet$]
      ) as a 
      inner join [glassdor_analysis].dbo.dataset as b on a.[Company Name] = b.Company
  ) as c
