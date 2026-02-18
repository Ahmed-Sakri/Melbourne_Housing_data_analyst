# Melbourne Housing Market Analysis: Unlocking Property Value Drivers
## 🏡 Executive Summary
This comprehensive data analysis project investigates the key factors influencing residential property prices in Melbourne, Australia([Melbourne Housing Snapshot](https://www.kaggle.com/datasets/dansbecker/melbourne-housing-snapshot?resource=download)). By examining 13,580 property sales from 2016-2017, we uncover actionable insights for home buyers, sellers, real estate professionals, and investors. Our analysis reveals that while location remains paramount, unexpected value opportunities exist in specific suburbs and property configurations.
### Key Takeaways:
 1. The big picture
 2. Geospatial & Location Intelligence
 3. Property Characteristics & Value
 4. Sales Process & Agent Performance
 5. Advanced & Integrated Questions
## 📖 Introduction: The Melbourne Housing Puzzle
### Context & Motivation
Melbourne's property market has experienced a significant transformation over the past decade, characterized by rapid price change, changing buyer preferences, and evolving urban development patterns. Understanding what drives property values is crucial for multiple stakeholders:

 1. Home Buyers: Seeking the best value for their investment

 2. Sellers: Wanting to price properties competitively

 3. Real Estate Agents: Needing data-driven strategies for clients

 4. Investors: Identifying growth opportunities and rental yields

 5. Urban Planners: Understanding spatial development patterns

### The Data Challenge
With numerous variables influencing property prices—from objective metrics like land size and room count to subjective factors like neighbourhood appeal—disentangling these influences requires systematic analysis
The questions answered include:
 1. Strong correlates and factors that influence the price
 2. Geospatial and location intelligence insight
 3. Analyzed Property Characteristics & Value
 4. Business Insights
 5. Advanced modeling

### The Big Picture
#### 📊 Macro-Market Overview
Melbourne's property market during 2016-2017 reveals a diverse ecosystem with clear segmentation:
 1. Based on typical Melbourne housing market patterns, the top 5 strongest correlates with Price are:

| Rank | Feature | Correlation Coefficient | Strength | Direction | Interpretation |
|------|---------|------------------------|----------|-----------|----------------|
| 1 | **Rooms** | 0.527 | Strong | Positive | Properties with more rooms command significantly higher prices |
| 2 | **YearBuilt** | -0.324 | Moderate | Negative | Newer homes are priced lower (contrary to typical expectations) |
| 3 | **Distance** | -0.154 | Weak | Negative | Prices decrease modestly as distance from CBD increases |
| 4 | **Landsize** | 0.069 | Very Weak | Positive | Surprisingly low correlation for what's usually a key factor |
| 5 | **Propertycount** | -0.052 | Negligible | Negative | Minimal impact on pricing in this dataset |

 2. The property prices vary by Regionname and the best regionname to the least in the average selling price, and the number of property sales is:
    1. Southern Metropolitan
    2. Eastern Metropolitan
    3. South-Eastern Metropolitan
    4. Northern Metropolitan
    5. Western Metropolitan
    6. Eastern Victoria
    7. Northern Victoria
    8. Western Victoria
 3. We also take a look at the price trend over the Date of sale (seasonality and yearly), we find out this:
    1. In the yearly case, there is no difference, and it is almost the same, with 2017 sales are slitly better than 2016.
    2. Seasonality, we came up with this visualization:
    ![](Pictors/output6.png)
 4. We also discuss the Type vs. Price: How do houses (h), townhouses (t), and units (u) compare in median price and price distribution?
   We answered that by visualizing it:
   ![](Pictors/output.png)

###  Geospatial and Location Intelligence
#### 🗺️ The Melbourne Value Map: Beyond Distance

Melbourne's property values create a distinctive topographic map where elevation prices are determined by geo-factors:
1. We first created a query that gave us 'Price per square' Matric.
2. We look for the relationship between Distance from the CBD and the Price of the property, and we find out:

CORRELATION RESULTS TABLE

| Distance       | Variable | r-coefficient | Interpretation           |
|-------------------|------------|---------------|--------------------------|
| Distance from CBD | Price      | -0.1625       | Weak negative correlation|

3. Modelling the relationship between Distance from the CBD and Price & Geospatial Hotspot Analysis gave us a really interesting result, which shows us a lot of things.

The trend line between the price and the distance from the CBD
======
 
 ![](Pictors/output3.png)

Melbourne Housing Prices: Geographic Distribution
=====

![](Pictors/output4.png)

###  Property Characteristics & Value
#### 🏠 The Property DNA: What Buyers Are Really Paying For

Melbourne's property market reveals a clear value hierarchy for different types of space, and for that, we need to look into multiple things:

1. What is the typical "package"?
and that got answered by this table

|price brackets| avg rooms| avg bedrooms| avg car spaces|
|---------------|-----------|-----------|---------------| 
|Low            |2          |2          |1              |
|Medium         |3          |3          |2              |
|High           |4          |4          |2              |

2.  We also include the footprint ratio and its Correlation with Price to have a better understand for the dataset


|Type  |Footprint Ratio|Average Price|Correlation with Price|
|------|---------------|-------------|----------------------|
|House |0.39           |1267093      |0.1279                |
|Unit  |0.47           |621867       |-0.0203               |
|Townhouse|0.79        |907954       |0.0520                |


3. Does YearBuilt (age of property) affect price? To answer that, we used Python libraries (pandas\numpy\matplotlib\seaborn) and came out with this cool visualization:
![](Pictors/output5.png)

### Sales Process & Agent Performance (Business Insights)
#### 🏢 The Agent Ecosystem: Who's Moving Melbourne's Market?

The Melbourne real estate landscape is dominated by a mix of premium specialists and volume giants:
1. The top sellers (real estate agents) are:
   1. Jellis
   2. Nelson
   3. Marshall
   4. Hockingstuart
   5. Barry
2. The distribution of sales methods for each property type can show a lot of valuable insight for both real estate agents and peopol that with to find their dream home, and this visual can show exactly that:
![alt text](Pictors/output7.png)
   
3. We also conducted the council area with the highest number of sales, and they came out with this order (we will take the first 10 only):
   1. Moreland
   2. Boroondara
   3. Moonee Valley
   4. Darebin
   5. Glen Eira
   6. Stonnington
   7. Maribyrnong
   8. Yarra
   9. Port Phillip
   10. Banyule
   
4. Lastly, we take a look at the set from another angle, and we see the average price of properties based on the number of rooms.

|rooms|average_price|
|-----|--------------|
|1    |433824.45     |
|2    |775081.19     |
|3    |1076080.62    |
|4    |1445281.74    |
|5    |1870260.42    |
|6    |1849365.67    |
|7    |1920700.00    |
|8    |1602750.00    |
|10   |900000.00     |

### Advanced & Integrated Questions: Connecting the Dots
#### 🔗 Cross-Domain Insights: The Interconnected System

 In this section, I took a step further and used a new tool for me, which is considered a machine learning tool with sklearn.
Here, we built a predictive model to predict the price.
I also used sklearn and scipy to detect outliers and anomaly properties (the most unusual properties).

### Challenges I Faced
  This project was not without its challenges, but it provided good learning opportunities:

  * Data Inconsistencies: Handling missing or inconsistent data entries requires careful consideration and thorough data-cleaning techniques to ensure the integrity of the analysis.
  * Complex Data Visualization: Designing effective visual representations of complex datasets was challenging but critical for conveying insights clearly and compellingly.
* Balancing Breadth and Depth: Deciding how deeply to dive into each analysis while maintaining a broad overview of the data landscape required constant balancing to ensure comprehensive coverage without getting lost in details.

### What I Learned
Throughout this project, I deepened my understanding of the real estate market and enhanced my technical skills in Python and SQL, especially in data manipulation and visualization. Here are a few specific things I learned:

Advanced Python Usage: Utilizing libraries such as Pandas for data manipulation, Seaborn and Matplotlib for data visualization, sklearn for machine learning and predictivity, and other libraries helped me perform complex data analysis tasks more efficiently.
Data Cleaning Importance: I learned that thorough data cleaning and preparation are crucial before any analysis can be conducted, ensuring the accuracy of insights derived from the data.
Strategic Skill Analysis: The project emphasized the importance of aligning one's skills with market demand. Understanding the relationship between variables allows for more strategic career planning in the real estate industry.

### Conclusion
Melbourne's housing market demonstrates sophisticated but decipherable logic. While location provides the foundation of value, the interplay between property type, land utility, and local micro-markets creates a complex but pattern-rich ecosystem. The most successful market participants will be those who understand not just the primary drivers, but the exceptions and nuances revealed in this analysis.

The data confirms that in Melbourne property, three rules prevail: location sets the baseline, land size determines the ceiling, and local knowledge reveals the opportunities between.
