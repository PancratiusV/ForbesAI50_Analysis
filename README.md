# Forbes AI 50 Analysis

# Introduction
This is a data analysis project of the Forbes AI 50, which is Forbes' sixth annual AI 50 list.

The data is from kaggle, which was taken from Forbes. [Forbes AI 50 Dataset](https://www.kaggle.com/datasets/saeedsarrafzadeh/forbes-ai50-2024/data).

# Analysis
[Data Cleaning](ForbesAI50_Data_Cleaning.ipynb) was done with Python(pandas and Jupyter Notebook). Some of the cleaning done are:
- Deleting duplicated rows.
- Applying conversion for abbreviated currency in Funding column.
- Trimming trailing spaces.
- Separating Location column into separate columns.


[Data Analysis](ForbesSQLAnalysis.sql) or EDA was done with MySQL. Some of the analysis done are:
- Which companies have the most funding?
- What country has the most companies in the ForbesAI50?
- From what state in U.S have the most companies?
- On average, what AI use cases are receiving the most funding?

A simple [Tableau Dashboard](https://public.tableau.com/views/ForbesAI50SimpleDashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) was made to put the analysis into charts and graphs. 