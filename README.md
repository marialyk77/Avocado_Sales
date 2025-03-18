 # 🥑 Avocado Sales Data

## Project overview

🌏 The data is sourced from Kaggle:https://www.kaggle.com/datasets/neuromusic/avocado-prices.



## Goals of the Analysis:

To understand the overall growth trajectory of avocado sales from 2015 to 2017.

To uncover customer behavior and explore any possible cost-saving strategies.

*Please note that the dataset does not provide information regarding age or income status, which limits the ability to perform a complete segment analysis.*


## Report 


My report is divided into two sections: Avocado Sales and Purchasing Patterns.


![image](https://github.com/user-attachments/assets/c5d8b6c2-af78-4480-9191-7eba69f1330a)



![image](https://github.com/user-attachments/assets/7fceaf31-31f4-4cbf-a183-7ad6348ec161)



## Answers 


1. **Conventional avocado sales are vastly higher than organic avocado sales**, with a total of $6.72 billion compared to $0.19 billion for organic avocados, which translates to a 3,440% difference.
2. General **positive growth trajectory in avocado sales over the three-year period from 2015 to 2017**, despite a slight setback in 2016.
3. The **average price for organic avocados is higher at $1.70 compared to $1.20 for conventional avocados**. As the price decreases, sales volume increases, indicating a strong price sensitivity among consumers.
4. **A higher proportion of large bags are sold for organic avocados (31%) compared to conventional avocados (22%)**, possibly due to consumers buying in bulk to save on cost.
5. **Small bag sales of conventional avocados** are prominent in both the **western and eastern regions**.
6. **Small bag sales of organic avocados** are mostly concentrated in the **eastern regions**, with the **exception of California** on the West Coast. 
7. **Large bag sales for conventional avocados** are more prominent on the **East Coast**, especially in Florida and Virginia, and in the Southeast, including Texas and Georgia. **Moderate sales** are also noticeable in the **Midwest** (like Kentucky and Indiana) and **central U.S.**, particularly in Colorado.
8. **Large bag sales for organic avocados exceed conventional large bag sales** and are concentrated in the **Pacific Northwest**, particularly in Washington and Oregon. High sales are also seen in the **Midwest** (like Michigan), the **Southeast** (including Tennessee and Kentucky), and along the **East Coast**, particularly in Virginia and Florida.

9. **Large Bags Sales** make up more than 50% of total sales in these regions:
   - Atlanda (Organic)
   - Boise (Organic)
   - Cincinnati- Dayton (Conventional + Organic)
   - Columbus (Organic)
   - Denver (Conventional + Organic)
   - Detroit (Organic)
   - Great Lakes (Organic)
   - Indianapolis (Organic)
   - Jacksonville (Conventional)
   - Las Vegas (Conventional)
   - Louisville (Conventional + Organic)
   - Miami-Fort Lauderdale (Conventional)
   - Nashville (Organic)
   - Portland (Organic)
   - Roanoke (Organic)
   - Seatle (Organic)
   - Spokane (Organic)
   - St. Louis (Organic)
   - West (Organic)

10. **X-large sales of conventional avocados** are concentrated exclusively in the **eastern part of the U.S.**, with Michigan at the top.
11. **X-large sales of organic avocados** are concentrated only in the **Pacific Northwest**, particularly in Washington and Oregon. 

- **Bag Size Insight:**

**Small bag sales of conventional avocados** are prominent in both the western and eastern regions, **indicating steady consumer demand across various markets.**

**Small bag sales of organic avocados** are mostly concentrated in the eastern regions, with the exception of California on the West Coast. **This shows that organic consumers in the East are more likely to purchase smaller quantities, possibly due to budget constraints or less frequent consumption.**

**Large bag sales of organic avocados exceed conventional large bag sales**. This highlights a growing interest in **cost-effective buying strategies**, where consumers may be taking advantage of lower per-unit prices by purchasing larger quantities of organic produce. In addition it might be linked to the needs of specific markets to cover the demand of food service buyers (like restaurants or hotels) driving higher volume purchases.**


**X-large sales of conventional avocados account for 1.3% of the total**, **while X-large sales of organic avocados account for only 0.003%.** This stark contrast highlights the much smaller market share for organic avocados in the X-large category compared to conventional ones, suggesting that organic consumers are less inclined to purchase in larger quantities, potentially due to higher cost or less demand for bulk organic products. 



## Recomendations 

**1. Optimize Inventory Management**

- Stock more large bags in high-demand regions (e.g., East Coast, Pacific Northwest). Ensure smaller bags are available in areas with demand (e.g., West Coast for conventional, East Coast for organic).

**2. Targeted Marketing Campaigns**

- Focus on bulk buying benefits in regions where large bags are popular (e.g., Florida, Oregon). Customize messages for organic vs. conventional avocado consumers.

**3. Pricing Strategy**

- Offer bulk discounts for organic avocados to make them more attractive, especially in high-demand regions. Consider bundle promotions for both conventional and organic options.

**4. Cost-Saving Strategies**

- Encourage bulk purchases with loyalty programs or discounts. Explore subscription models in regions with high large-bag demand.

**5. Regional Focus**

- Promote small bags of organic avocados in California. Emphasize large bags for conventional avocados on the East Coast and organic avocados in the Midwest.

**6. Improve Consumer Insights**

- Segment customers by demographics to refine marketing. Use surveys or focus groups to better understand regional preferences.

**7. Diversify Product Offerings**

- Experiment with mid-sized bags to balance price and quantity for consumers not wanting to buy in bulk.

**8. X-Large Sales**

- Target niche markets like restaurants or caterers for X-large avocado sales, especially for conventional on the East Coast.






##   Tools used 

As part of my learning journey, I decided to use both **SQL Server** and **Power BI** for data analysis.

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



