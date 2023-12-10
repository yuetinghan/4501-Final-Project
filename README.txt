Final Project 4501
Description
In this project, we have implemented a comprehensive data analytics pipeline using Jupyter Notebook, focused on exploring New York City's neighborhoods for ideal living conditions based on greenery and quietness. The implementation involves downloading and preprocessing diverse datasets, including NYC's zip code shapefiles, Zillow's historical rent averages, and NYC Open Data on 311 complaints and tree census. We utilized PostgreSQL and PostGIS for data storage and spatial queries, ensuring efficient data management and geographic data handling. The project culminates in insightful SQL queries and compelling data visualizations that aid in identifying neighborhoods that align with specific living preferences, emphasizing areas with less noise and abundant greenery within a defined budget range. This hands-on approach provides a real-world experience in handling and interpreting large datasets, crucial for future analytical roles.
Team Information
* Project Group Name: [Project Group 41]
* UNIs: [ll3738, yh3655]
Data Sources
* Shapefiles of NYCs zip codes.
* Historical monthly average rents by zip code from Zillow.
* Historical data from NYC Open Data on 311 complaints and the 2015 tree census.
Setup and Installation
This project includes handling and querying geographic data, so PostgreSQL (often referred to as Postgres) and PostGIS is required on computer.
Understanding Data
Query 1: Calmness by Area
Description: Identify the calmness of areas by finding the number of 311 complaints per zip code between October 1st, 2022, and September 30th, 2023. This query helps understand which areas might be more serene to live in.
Result: Two columns, one row per zip code, with the number of complaints in descending order.
Query 2: Most Greenery
Description: Determine which 10 zip codes have the most trees using the trees table. This query highlights areas with the most greenery.
Result: Two columns, 10 rows sorted by the total number of trees, descending.
Query 3: Affordability in Green Areas
Description: For the 10 zip codes with the most trees, find the average rent for August 2023. This query assesses the affordability of living in areas with abundant greenery.
Result: Two columns and 10 rows, sorted by the total number of trees, descending. Rents formatted for readability.
Query 4: Rent, Trees, and Complaints Correlation
Description: Explore potential correlations between an area�s rent, tree count, and 311 complaints for January 2023. This query identifies if higher rent areas with more trees have fewer complaints.
Result: Four columns (zip code, average rent, tree count, complaint count) and 10 rows, showing both the highest and lowest average rent areas.
Query 5: Greenery Analysis (Advanced)
Description: A refined version of Query 2, using spatial joins to include the zipcodes table. It checks if the coordinate point of a tree is inside the polygon boundary of the zipcode.
Result: The query results should match exactly the results of Query 2.
Query 6: Local Area Greenery
Description: Identify trees within a ? mile radius of a given coordinate pair on campus (Latitude: 40.80737875669467, Longitude: -73.96253174434912). This query gives a detailed view of greenery in an immediate area.
Result: Five columns (ID, species, health, status, and coordinate location of each tree).
Visualization and Analysis
1. Complaint Types Over Time:
* Description: This visualization identifies the top 3 complaint types in NYC from October 1st, 2022, to September 30th, 2023. It then displays the frequency of these complaints per day throughout this period.
* Significance: Helps identify trends and peaks in specific complaints, providing insights into city dynamics and resident concerns over time.
2. Complaints in a Specific Area:
* Description: Shows the top 10 complaint types in zip code 10027 from October 1st, 2018, to September 30th, 2023.
* Significance: Offers a localized view of issues, highlighting the most pressing concerns in a particular neighborhood.
3. Correlation Between Rent, Trees, and Complaints:
* Description: One subplot correlates average rent with the number of trees per zip code, while the other correlates rent with the number of complaints per zip code, for the period from January 1st, 2015, to September 30th, 2023.
* Significance: Assesses whether there's a relationship between living costs, environmental factors, and quality of life as indicated by complaints.
4. Rent and Complaints Analysis:
* Description: Displays the distribution of 311 complaints for different rent ranges (in $1000 bins) as of September 2023.
* Significance: Investigates if higher rent areas experience fewer complaints, potentially indicating better living conditions.
5. Geospatial Analysis of Recent Complaints:
* Description: Maps the coordinates of 311 complaints reported from January 1st, 2023, to September 30th, 2023, within a 1 kilometer radius of a specific coordinate point.
* Significance: Visualizes the concentration and spread of recent complaints in a particular area, providing a geographical perspective of urban issues.
6. Greenery Efforts in NYC:
* Description: Compares the locations of existing trees with the locations of "New Tree Request" 311 complaints from October 1st, 2018, to September 30th, 2023.
* Significance: Highlights areas actively seeking more greenery, indicating community engagement and efforts to improve local environments.



