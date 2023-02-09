# Glassdoor Jobs Data-Analysis
I came up with this personal project to test my skills to the fullest and learn new things. In this project I analyzed the gathered data and created the dashboard with the insights below.

## About Glassdoor


![Logo](https://camo.githubusercontent.com/e854216170d7bb8309a8cac031ed82cf83c6657b8df999e04ca2652d2e6a7ecb/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f652f65312f476c617373646f6f725f6c6f676f2e737667)

Glassdoor is a website where current and former employees anonymously review companies. Glassdoor also allows users to anonymously submit and view salaries as well as search and apply for jobs on its platform.Glassdoor launched its site in 2008 , as a site that “collects company reviews and real salaries from employees of large companies and displays them anonymously for all members to see,” according to TechCrunch. The company then averaged the reported salaries, posting these averages alongside the reviews employees made of the management and culture of the companies they worked for—including some of the larger tech companies like Google and Yahoo. The site also allows the posting of office photographs and other company-relevant media.

## ABOUT THE DATASET
There are 12 columns in the data they are as follows:

- Job_title: The title of job which you are applying to 
- Company : Company name
- State : State in which the companies job posting is listed.
- Min_Salary : Minimum yearly salary in USD.
- Max_Salary : Maximum yearly salary in USD.
- Min_Salary.1 : Min_Salary column without errors.
- Max_Salary.1 : Max_Salary column without errors.
- Job_Desc : The job description which included skills,requirements,etc
- sector : The sector in which the company falls.
- Industry : The industry in which the company works.
- Date_posted : The date on which the job was posted on glassdoor
- Valid_until: The last date of applying to the job. - - Type of ownership :ownership type like public,private,etc.

2 datasets were combined using left join function to get a final dataset with above columns.


## Steps for Cleaning and Data and END 
### 1. Removing unnecessary columns.<br>
Removing     salary_estimate,location,rating,headquater,size,revenue,Min_Salary,Max_Salary,avg_salary,job_state,same_state,company_age,python,excel,hadoop,spark,aws,tableau,big_data,job_simp,seniority.

These columns are of no use right now hence they are removed by declaring them as comments through SQL sever query.

### 2. Removing NULL values from column.
NULL values from industry column are removed in the industry column through value selection option in POWER BI.

### 3. Replacing values.
- The Min_Salary and Max_Salary was having values -1 which was supposed to be 0. So, changed the values from -1 to 0 using replace value options in POWER BI.
- The state column was having short forms of states name which was replaced into their full forms using replace value options in POWER BI.

### 4. Values seperation
There was a location column which was having both city and state seperated by ',' .So the state part was seperated and placed in a new column (State). using the below codes-
-     (CHARINDEX(',',reverse ([Location] )))-1 as [indexes],
      right([location], 3) as [State]

## Visual Analytics and Findings
1. What are the total number of jobs available?<br>
Total jobs = 746 <br>
 ![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/total_jobs.png)<br>
 
2. What are the total numbers of companies available?<br>
Total companies = 85<br>
![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/total_companies.png)<br>

3. What are the top states providing jobs?<br>
States like California,Maryland,Virginia,New york,Oklahama are top states thats providing most number of jobs.<br>
![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/jobs_state.png)<br>

4. What are the top 5 industries providing jobs?<br>
Biotech and Pharmaceuticals, Aerospace and Defence, Research and Development, Computer Hardware and Software, Enterprice Software and Network Solutions.<br>
![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/industries_jobs.png)<br>

5. What are the top 5 states with maximum average salary and minimum average salary?<br>
Washington, Virginia, West Virginia, Utah, Texas.<br>
![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/min_max_salaey_by_state.png)<br>

6. What are the top job titles providing maximum average salary and minimum average salary?<br>
top such job titles are:<br>
Data Science - Machine Learning, Vice President - Biometric and Clinical Data Management, Product Data Scientist - Ads Data Science, Data Science Manager, Software Engineer(Data Scientist, C,C++,Linux,Unix) - SSIW -MG.<br>
![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/min_max_salaey_by_job_title.png)

## DASHBOARD
![](https://github.com/praveenmandal/Analysing_Glassdoor_Jobs/blob/main/glassdor/instances/dashboard.png)
