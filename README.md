# Pewlett-Hackard Analysis Project
Resources: pgAdmin (PostgreSQL)
## Overview of the Analysis
With the upcoming "Silver Tsunami" occurring in many industries, Pewlett-Hackard wanted to get ahead of this by planning for retirement. From the start of the project, it was obvious that thousands of employees were set to retire in the next few years, setting the company up for a big shift from knowledgable and experienced employees to younger talent. Managers from the Sales and Development departments were the first to come up with an idea to have the older employees mentor some of the existing employees to fill their positions. Our job was to upload the 6 CSV files that had all of their company information to a database in pgAdmin, and then sort through the data to find employees who would be eligible to help in the mentorship program. From there, we found many interesting data relationships that are described below.

## Results
![](https://github.com/mabuckjr/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.PNG) 
#### Table above represents the number of positions retiring in the next few years based on position

Below were the major findings from the two deliverables in this project:
- Over 90,000 employees will be retiring in the next few years.
- Of those 90,000, 29,414 are Senior Engineers, 28,254 are Senior Staff, 14,222 are Engineers, and 12,243 are Staff. With over 50,000 Senior employees and over 40,000 of both total engineers and staff retiring soon, the mentorship program should focus on training staff and engineers of all levels more than other positions down the list.
- Most of the employees have worked with Pewlett-Hackard for at least 20 years, so they will be very knowledgable on the history of the company. Some have even moved up into more senior roles while working here, which means that they will be great candidates for teaching new ambitious employees.
- Of those retiring, we found 1,549 candidates who are eligible to be in the mentorship program.

## Summary
From these results, I went to investigate the answers to the two questions below:
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

What I found was that over 90,000 roles needed to be filled, and these positions included Senior Engineers, Senior Staff, Engineers, Staff, Technique Leaders, Assistants Engineers, and Managers. The first 4 have over 80,000 of those retirable employees. 

For the other question, it's tough to say. If mentors are able to train multiple employees at the same time, say through seminars and infrequent individual time spent with new employees, than it's definitely possible. If mentors are expected to spend much more individual time with future employees though, it likely wouldn't work due to only 1,549 eligible mentors.

Pewlett Hackard should consider conducting further analysis. For example, it would be helpful to add create a couple of different queries to understand the number of of potential mentors and what positions they currently hold. This can help Pewlett Hackard understand the distribution of mentors to mentees per field. I would create a query like the one below:

![](https://github.com/mabuckjr/Pewlett-Hackard-Analysis/blob/main/Resources/mentor_title_query.PNG)

This query sorts the mentors by position they hold, which creates this table below:

![](https://github.com/mabuckjr/Pewlett-Hackard-Analysis/blob/main/Resources/mentor_title_table.PNG)

Another query that would help management understand would be one that shows which retiring individuals have held multiple positions at Pewlett Hackard. These employees were ambitious and loyal, so it would be great to prioritize these individuals as mentors for new candidates. The query could look like this:

![](https://github.com/mabuckjr/Pewlett-Hackard-Analysis/blob/main/Resources/mentors_multi_pos_query.PNG)

And then creates this table below: 

![](https://github.com/mabuckjr/Pewlett-Hackard-Analysis/blob/main/Resources/mentors_multi_pos_table.PNG)

All in all, it's a good thing that Pewlett Hackard is getting ahead of this, because many of their employees are retiring. However, the mentorship program that they plan to use could really help mitigate the effects of the "silver tsunami." It is important to look at the data from multiple angles to make sure that this program works well, and that new employees know how to fill the responsibilities of those that are retiring.
