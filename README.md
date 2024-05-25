🥑 Avocado Sales Data

🌏 The data is sourced from Kaggle:https://www.kaggle.com/datasets/neuromusic/avocado-prices.

🏺 Columns: 
 
          Index
         
          Date - The date of the observation
         
          AveragePrice - the average price of a single avocado
         
          type - conventional or organic
         
          year - the year
         
          Region - the city or region of the observation
         
          Total Volume - Total number of avocados sold
         
          4046 - Total number of avocados with PLU 4046 sold
         
          4225 - Total number of avocados with PLU 4225 sold
         
          4770 - Total number of avocados with PLU 4770 sold
         
          Small Bags
         
          Large Bags
         
          XLarge Bags

📝 Goals of the Analysis:

To understand the overall growth trajectory of avocado sales from 2015 to 2017.

To uncover customer behavior and explore any possible cost-saving strategies.

📊Methodology:

As part of my learning journey, I decided to use both SQL Server and Power BI for data analysis.

I first imported the dataset into SQL Server and inspected the data.

The cleaning, analysis, and visualization were performed in Power BI.


🔍 Dataset Overview:

The original dataset contained: 18,249 rows.

It covered the years between 2015 and 2019 and contained data only for Sundays.

Data for 2019 was incomplete, so I filtered it out by applying a statement during the extraction phase in the Power Query Editor. 

The finaly number of rows are: 16,639.

🗑 Cleaning:

There were no null or empty values.

Duplicates were found in the Index column, so a new index column was added to ensure uniqueness and data integrity.

Column data types were corrected. The column [Total Volume] was attributed as a whole number, given that avocados are normally sold in single units and not by weight.

The columns [Small Bags], [Large Bags], and [XLarge Bags] were also attributed as whole numbers. However, further discussion and clarification are needed from the stakeholders.

The columns [Total Volume] and [Total Bags] were checked to ensure their numbers are the result of summing the corresponding columns:

        -[Total Volume]  corresponding columns: [4046] , [4225] , [4770] . 

        -[Total Bags]  corresponding columns: [Small Bags], [Large Bags], and [XLarge Bags]. 

         Result: No compatibility.
         
         Action: [Total Volume] and [Total Bags] were replaced by [Units Sold] and [Total Bags Checked].

Rows for the US Total were filtered out from the [Region] column.

Date components were extracted from the Date column.

The [Day of Week] column confirmed that the dates in the dataset are only Sundays.



