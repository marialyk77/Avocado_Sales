 # 🥑 Avocado Sales Data

## Project overview

🌏 The data is sourced from Kaggle:https://www.kaggle.com/datasets/neuromusic/avocado-prices.



## Goals of the Analysis:

To understand the overall growth trajectory of avocado sales from 2015 to 2017.

To uncover customer behavior and explore any possible cost-saving strategies.

## Answers 

##   Tools used 

As part of my learning journey, I decided to use both SQL Server and Power BI for data analysis.

- I first imported the dataset into SQL Server where I inspected the data: 

The original dataset contained: 18.249 rows.

It covered the years between 2015 and 2018 and contained data only for Sundays.

Data for 2018 was incomplete, so I filtered it out by applying a SQL query during the extraction phase to Power BI. 

The finaly number of rows are: 16,639.

- In power BI I performed: 

Exploratory Data Analysis (data exploration and transformation) & Visualization.



## Dataset Overview:

🏺 Columns: 
 
   - Index
         
   - Date - The date of the observation
         
   - AveragePrice - the average price of a single avocado
         
   - type - conventional or organic
         
   - year - the year
         
   - Region - the city or region of the observation
         
   - Total Volume - Total number of avocados sold
         
   - 4046 - Total number of avocados with PLU 4046 sold
         
   - 4225 - Total number of avocados with PLU 4225 sold
         
   - 4770 - Total number of avocados with PLU 4770 sold
         
   - Small Bags
         
   - Large Bags
         
   - XLarge Bags



## Cleaning:

1. There were no null or empty values.

2. Duplicates were found in the Index column, so a new index column was added to ensure uniqueness and data integrity.

3. Column data types were corrected. The column [Total Volume] was attributed as a whole number, given that avocados are normally sold in single units and not by weight.

4. The columns [Total Volume] and [Total Bags] were verified to ensure their values are the sum of their respective constituent columns:

- [Total Volume] is the sum of the values in the columns: [4046], [4225], and [4770].

- [Total Bags] is the sum of the values in the columns: [Small Bags], [Large Bags], and [XLarge Bags].

**Result:** No compatibility.
         
**Action:** [Total Volume] and [Total Bags] were replaced by [Units Sold] and [Total Bags Checked].

5. Rows for the US Total were filtered out from the [Region] column.

6. Date components were extracted from the Date column.

7. The [Day of Week] column confirmed that the **dates in the dataset are only Sundays.**



