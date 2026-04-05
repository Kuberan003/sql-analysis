SQL Data Analysis Projects


 Projects Included

1️⃣ Uber Trip Analysis
- Folder: `Project1_Uber_Trips/`
- Description: Analyze Uber trips dataset to find total trips, total miles, average miles, top trips, and category-wise analysis.  
- Files: `analysis.sql` + `uber.csv`

 2️⃣ Students Performance Analysis
- Folder: `StudentsPerformance-SQL/`
- Description: Analyze student performance data across subjects, test preparation, gender, and parental education.  
- Files: `analysis.sql` + `StudentsPerformance.csv`



How to Run Any Project

1. Open SQLite CLI.  
2. Create a database:

```sql
.open project.db

Import the dataset for that project:
.mode csv
.import dataset.csv tablename
Run the SQL queries:
.read analysis.sql

Tools Used
SQL (SQLite)
CSV datasets

 Repository Structure
sql-data-projects/
├── Project1_Uber_Trips/
│   ├── analysis.sql
│   └── uber.csv
├── Project2_StudentsPerformance-SQL/
├── analysis.sql
└── StudentsPerformance.csv
└── README.md
