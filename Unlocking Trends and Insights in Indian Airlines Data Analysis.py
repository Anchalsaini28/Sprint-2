#!/usr/bin/env python
# coding: utf-8

# # Project Name- Unlocking Trends and Insights in Indian Airlines Data Analysis

# # Project By - Anchal Saini

# ### **Problem Statement:**
# 
# The Indian airline industry is complex. Understanding factors like **ticket prices**, **flight duration**, **departure times**, **stops**, and **airline classes** is crucial for both airlines and passengers. This project aims to analyze these factors to provide insights for better **pricing**, **route optimization**, and **customer satisfaction**. 
# 
# 
# **Research Questions:**
# 
# 1. **Class-Based Pricing:** How do **Economy** and **Business** class prices differ?
# 2. **Factors Influencing Ticket Prices:** How do **duration**, **days left**, and **stops** impact prices?
# 3. **Route and Time Preferences:** What are the most popular **routes** and preferred **departure/arrival times**?
# 4. **Customer Insights:** What trends exist for **class**, **stops**, and **travel times**?
# 
# 
# 
# 
# 
# 
# 

# ### **Objective:**
# 
# * **Understand Pricing Dynamics:** Analyze how factors like **duration**, **stops**, and **days left** impact prices.
# 
# * **Identify Popular Routes and Trends:** Determine **frequent routes** and the impact of **departure/arrival times**.
# 
# * **Class-Based Analysis:** Compare **Economy** and **Business** class pricing, duration, and trends.
# 
# * **Provide Recommendations:** Offer insights for **optimized pricing** and **route management**.
# 

# ### GitHub Link
# 
# #### https://github.com/Anchalsaini28/Sprint-2

# ## Understanding the Variables
# 
# ### Key Variables and Their Meanings
# 
# **1. record_id:** A unique identifier assigned to each individual flight record.
# 
# **2. airline:** The name of the airline operating the flight (e.g., Air India, IndiGo, Vistara).
# 
# **3. flight:** A unique code or number assigned to the specific flight.
# 
# **4. source_city:** The city from where the flight originates (e.g., Delhi, Mumbai, Kolkata).
# 
# **5. departure_time:** The time of day when the flight departs (e.g., Early Morning, Morning, Afternoon, Evening, Night, Late Night).
# 
# **6. stops:** The number of intermediate stops the flight makes before reaching its final destination (e.g., 0 for non-stop flights, 1 for flights with one stop).
# 
# **7. arrival_time:** The time of day when the flight arrives at its destination (e.g., Morning, Afternoon, Evening, Night, Late Night).
# 
# **8. destination_city:** The city where the flight is headed (e.g., Bangalore, Chennai, Hyderabad).
# 
# **9. class:** The type of ticket booked (e.g., Economy, Business).
# 
# **10. duration:** The total travel time of the flight, measured in hours.
# 
# **11. days_left:** The number of days remaining before the flight's departure date.
# 
# **12. price:** The cost of the ticket in Indian Rupees (INR).
# 

# ### Step 1 - Install necessary library 

# In[14]:


get_ipython().system('pip install mysql-connector-python')


# Insight
# 

# ### Step 2 - Import necessary packages

# In[15]:


# Importing necessary libraries
import mysql.connector  # For connecting to and interacting with MySQL databases
import pandas as pd  # For data manipulation and analysis
import matplotlib.pyplot as plt  # For creating static, animated, and interactive visualizations in Python
import seaborn as sns  # For statistical data visualization, built on top of matplotlib
# import plotly.express as p  # Optional: For interactive visualizations (if needed)


# #### Insight
# 
# Installed all necessary packages

# ### Step 3 -  Connection to the MySQL Database

# In[16]:


# Replace 'your_username', 'your_password', 'your_host', and 'your_database' with

# Establishing a connection to the MySQL database using mysql.connector
db_connection = mysql.connector.connect(
    user='root',  # MySQL username (default: root)
    password='2809',  # MySQL password (ensure this is kept secure)
    host='localhost',   # Database server location (localhost for local machine)
    port='3306',  # default MySQL port
    database='Indianairlines'  # The name of the database you want to connect to
)


# #### Insight
# The code connects to a local MySQL database named *Indianairlines* using `mysql.connector.connect`. This lets you run SQL queries in Python. Make sure to keep sensitive information safe and handle any errors properly.

# ### Step 4 - Loading the dataset to the Notebook

# In[42]:


# Load the data into a pandas DataFrame
query = 'select * from Flightdetails'
df = pd.read_sql(query, db_connection)

# Print the dataset
df


# #### Details_About_Column
# 
# 1. **record_id:** A unique identifier for each flight record.
# 
# 
# 2. **airline:** Name of the airline.
# 
# 
# 3. **flight:** Unique flight number.
# 
# 
# 4. **source_city:** Origin city of the flight.
# 
# 
# 5. **departure_time:** Departure time of the flight (e.g., Early Morning, Morning, Afternoon, etc.).
# 
# 
# 6. **stops:** Number of stops in the journey (e.g., zero, one).
# 
# 
# 7. **arrival_time:** Arrival time of the flight (e.g., Morning, Late Night).
# 
# 
# 8. **destination_city:** Destination city of the flight.
# 
# 
# 9. **class:** Ticket class (Economy or Business).
# 
# 
# 10. **duration:** Total flight duration in hours.
# 
# 
# 11. **days_left:** Number of days left until the flight's departure.
# 
# 
# 12. **price:** Ticket price in Indian Rupees (INR).
# 

# ### Step 5 - Dataset View

# In[43]:


# Displaying the First Few Rows of the DataFrame
# This is to verify that the data has been fetched and loaded correctly.
df.head()


# In[44]:


# Display the last 5 rows of the DataFrame
# Purpose: Verifies the structure and content of the last few records in the dataset
df.tail()


# ### Step 6 - Data Overview

# In[18]:


# Prints the shape i.e. the row size by column size of the dataset
df.shape


# #### Insight
# The command df.shape returns the dimensions of the DataFrame df in the form of a tuple, where the first value represents the number of rows, and the second represents the number of columns.

# ### Step 7 - Dataset Description

# In[19]:


# Gives the overall info of the dataframe object
df.describe()


# #### Insight
# 
# The statistical summary provides key metrics such as count, mean, standard deviation (std), minimum (min), 25th percentile (25%), median (50%), 75th percentile (75%), and maximum (max) for each numerical column.

# ##### For understanding the statistical summary, we will take the column Price as an example:
# 
# #### 1. Count: The total number of records is 130.
# 
# ####  2. Mean: The average ticket price is ₹29,499.72.
# 
# #### 3. Standard Deviation (std): The standard deviation of ticket prices is ₹26,146.43, indicating high variability in pricing.
# 
# #### 4. Minimum (min): The lowest ticket price is ₹4,262.
# 
# #### 5. 25th Percentile (25%): 25% of the ticket prices are below ₹7,488.25.
# 
# ####  6. Median (50%): The median (middle) ticket price is ₹11,793.
# 
# #### 7. 75th Percentile (75%): 75% of the ticket prices are below ₹57,629.75.
# 
# #### 8. Maximum (max): The highest ticket price is ₹1,02,832.
# 
# ##### This breakdown provides a detailed understanding of the distribution of ticket prices in the dataset.
# 
# 

# ### Step 8 - Dataset Information
# 

# In[20]:


# Gives the a concise summary of a DataFrame.
df.info()


# #### Insight
# 
# The summary provides key information about the DataFrame, including the number of non-null entries, data types for each column, memory usage, and the total number of rows and columns. This helps in understanding the dataset structure, identifying missing values, and ensuring the data types are appropriate for analysis.

# ###  Step 9 - Data Cleaning

# In[21]:


# Check for missing values
print(df.isnull().sum())


# #### Insight
# 
# The dataset contains **no missing values** across any of the columns. This ensures that the data is complete and ready for analysis without requiring additional imputation or data-cleaning steps.

# ### Step 10 - Duplicate Values 

# In[46]:


# Check for duplicate rows
duplicate_rows = df.duplicated().sum()
print(f"Number of duplicate rows: {duplicate_rows}")


# #### Insight
# 
# Here we can see there are 0 duplicates rows in our dataset. After checking for duplicate rows in the dataset, we ensure that each entry is unique.

# ### Step 11 - Check Unique Values

# In[47]:


# Check for unique values in each column
for col in df.columns:
    unique_values = df[col].nunique()
    print(f"Column {col} has {unique_values} unique values.")


# ### Step 12 - Convert data types

# In[25]:


# Standardizing the 'Number of Stops' column
df['Stops'] = df['Stops'].replace({
    'zero': '0',
    'one': '1',
    'two_or_more': '2+'
})


# #### Insight
# 
# The code standardizes the `'Stops'` column by replacing textual values (`'zero'`, `'one'`, `'two_or_more'`) with simplified representations (`'0'`, `'1'`, `'2+'`). This improves data consistency, readability, and suitability for analysis, making it easier to visualize and interpret stop counts while preparing the data for statistical or machine learning models.

# ### Step 13 -  Overall Data Information

# In[26]:


# Gives the a concise summary of a DataFrame.
df.info()


# #### Insight
# 
# The dataset contains **130 entries** across **12 columns**, with no missing values. The data types are:
# - **Numerical**: `int64` (3 columns: `Record_ID`, `Days_Left`, `Price`), `float64` (1 column: `Duration`).
# - **Categorical**: `object` (8 columns, including `Airline`, `Flight`, `Source_City`, etc.).
# 
# The dataset is compact, requiring **13.2 KB** of memory, and is ready for analysis without requiring further data type adjustments or missing value handling.

# ###  Step 13 - Data Visualization

# #### 1. Ticket Prices by Class

# In[51]:


# Group the data by 'Class' and calculate the average ticket price for each class (Economy and Business)
average_prices = df.groupby('Class')['Price'].mean()

# Create a bar plot to visualize the average ticket prices for each class (Economy and Business)
average_prices.plot(kind='bar', color=['blue', 'orange'])  # 'skyblue' for Economy and 'orange' for Business

# Set the title of the bar plot
plt.title('Average Ticket Prices by Class')  # Title for the plot

# Label the x-axis
plt.xlabel('Class')  # Label for the x-axis, representing the ticket class

# Label the y-axis
plt.ylabel('Average Price')  # Label for the y-axis, representing the average ticket price

# Set the x-axis labels to be horizontal for better readability
plt.xticks(rotation=0)  # No rotation for x-axis labels

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# 
# Business class tickets cost much more than economy class, offering more comfort and luxury for those willing to pay. Economy class is a cheaper option for passengers on a budget. This big price difference shows how airlines provide different options to meet the needs of all types of travelers.

# #### 2. Number of Stops and Ticket Prices

# In[52]:


# Group the data by the 'Stops' column and calculate the average ticket price for each number of stops
average_prices_stops = df.groupby('Stops')['Price'].mean()

# Create a bar plot to visualize the average ticket prices based on the number of stops (non-stop, 1 stop, 2+ stops)
average_prices_stops.plot(kind='bar', color='purple')  # 'green' color for the bar plot

# Set the title of the bar plot
plt.title('Average Ticket Prices by Number of Stops')  # Title for the plot

# Label the x-axis
plt.xlabel('Number of Stops')  # Label for the x-axis, representing the number of stops in the flight

# Label the y-axis
plt.ylabel('Average Price')  # Label for the y-axis, representing the average ticket price for each stop category

# Set the x-axis labels to be horizontal for better readability
plt.xticks(rotation=0)  # No rotation for x-axis labels

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# Flights with one stop have the highest average ticket prices, while nonstop and 2+ stop flights are significantly cheaper, highlighting a cost-convenience tradeoff.

# #### 3.Top Routes

# In[53]:


# Create a new column 'route' by combining the 'Source_City' and 'Destination_City' columns to represent the route
df['route'] = df['Source_City'] + " to " + df['Destination_City']  # Concatenating source and destination to form the route

# Count the occurrences of each unique route and select the top 10 most frequent routes
top_routes = df['route'].value_counts().head(10)  # Get the top 10 routes with the highest number of flights

# Create a horizontal bar chart to visualize the top 10 routes
top_routes.plot(kind='barh')  # 'barh' creates a horizontal bar chart

# Set the title of the bar chart
plt.title('Top 10 Routes')  # Title for the chart

# Label the x-axis
plt.xlabel('Number of Flights')  # Label for the x-axis, showing how many flights each route has

# Label the y-axis
plt.ylabel('Route')  # Label for the y-axis, representing the route from source to destination

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# The "Bangalore to Delhi" route leads with the highest number of flights (14), indicating strong connectivity and demand, followed by "Kolkata to Mumbai" and "Mumbai to Bangalore," while other routes such as "Hyderabad to Mumbai" and "Chennai to Delhi" have comparatively fewer flights, reflecting varying passenger volumes and regional demand dynamics.

# #### 4. Departure Times

# In[49]:


# Count the occurrences of each departure time and plot the results as a bar chart
df['Departure_Time'].value_counts().plot(kind='bar')  # Generate a bar plot of departure times

# Set the title of the plot
plt.title('Preferred Departure Times')  # Title for the bar chart

# Label the x-axis
plt.xlabel('Departure Time')  # Label for the x-axis

# Label the y-axis
plt.ylabel('Number of Flights')  # Label for the y-axis

# Rotate x-axis labels for better readability
plt.xticks(rotation=45)  # Rotate labels on the x-axis to avoid overlap

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# The graph likely reveals that evening flights are the most popular, followed by morning flights. Afternoon and night flights are less preferred, with early morning flights being the least popular. This pattern could be influenced by factors like passenger preferences, airline scheduling, and airport operations. 
# 

# #### 5.Most Popular Airlines

# In[55]:


# Count the number of flights for each airline using the 'Airline' column
airline_counts = df['Airline'].value_counts()  # Get the count of flights per airline

# Create a bar plot to visualize the most popular airlines based on the number of flights
# Using a list of mixed colors for the bars
colors = [ 'green', 'red', 'purple', 'orange', 'pink', 'yellow', 'brown', 'cyan', 'magenta']
airline_counts.plot(kind='bar', color=colors)  # Assign mixed colors to each bar

# Set the title of the bar plot
plt.title('Most Popular Airlines')  # Title for the bar chart

# Label the x-axis
plt.xlabel('Airline')  # Label for the x-axis, representing the airlines

# Label the y-axis
plt.ylabel('Number of Flights')  # Label for the y-axis, representing the number of flights per airline

# Rotate x-axis labels by 45 degrees for better readability
plt.xticks(rotation=45)  # Rotate labels to avoid overlap, especially if airline names are long

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# 
# The bar graph illustrates the popularity of different airlines based on the number of flights. Vistara leads with the highest number of flights, followed by Air India. Indigo has a significant number of flights, while GO FIRST, AirAsia, and Spicejet have considerably fewer flights. This suggests that Vistara and Air India are the most preferred airlines among travelers, while the others have a smaller market share.
# 

# #### 6.Ticket Price Trends by Days Left

# In[57]:


# Group the data by 'Days_Left' and calculate the average ticket price for each number of days left
avg_price_by_days = df.groupby('Days_Left')['Price'].mean()

# Create a line plot to visualize the trend of average ticket prices with a new color and markers
avg_price_by_days.plot(kind='line', color='green', marker='o')  # 'green' line color and 'x' markers for each data point

# Set the title of the plot
plt.title('Ticket Prices vs. Days Left')  # Title for the line plot

# Label the x-axis
plt.xlabel('Days Left Until Departure')  # Label for the x-axis representing the number of days left

# Label the y-axis
plt.ylabel('Average Price')  # Label for the y-axis representing the average ticket price

# Enable gridlines for better readability of the plot
plt.grid(True)  # Add gridlines to the plot

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# The line graph depicts the relationship between ticket prices and days left until departure. It shows that ticket prices are highly volatile, fluctuating significantly as the departure date approaches. There are instances where prices drop significantly closer to the departure date, but there are also instances where prices rise sharply. This suggests that there's no clear trend and it's challenging to predict price behavior based solely on days left until departure.
# 
# 

# #### 7.Price Variation Across Airlines

# In[61]:


# Group the data by 'Airline' and calculate the average ticket price for each airline
avg_price_airlines = df.groupby('Airline')['Price'].mean()

# Create a bar plot to visualize the average ticket prices for each airline with a new color
avg_price_airlines.plot(kind='bar', color='magenta')  # 'teal' color for the bars

# Set the title of the plot
plt.title('Average Ticket Prices by Airline')  # Title for the bar plot

# Label the x-axis
plt.xlabel('Airline')  # Label for the x-axis representing different airlines

# Label the y-axis
plt.ylabel('Average Price')  # Label for the y-axis representing the average ticket price for each airline

# Rotate the x-axis labels by 45 degrees for better readability
plt.xticks(rotation=45)  # Rotate x-axis labels to avoid overlap, especially with long airline names

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# The bar graph shows the average ticket prices for different airlines. Vistara has the highest average ticket price, followed by Air India. AirAsia has the lowest average ticket price, followed by SpiceJet and GO FIRST. Indigo's average ticket price is slightly higher than SpiceJet's. This suggests that Vistara and Air India are likely premium airlines with higher-priced tickets, while AirAsia, SpiceJet, and GO FIRST are budget airlines with lower-priced tickets.
# 

# #### 8.Airlines Offering Business Class Flights

# In[62]:


# Filter the dataset for Business class flights only
business_class_flights = df[df['Class'] == 'Business']  # Select only rows where 'Class' is 'Business'

# Count the number of Business class flights for each airline
business_class_counts = business_class_flights['Airline'].value_counts()  # Get the count of Business class flights per airline

# Create a bar plot to visualize the number of Business class flights by airline
business_class_counts.plot(kind='bar', color='darkgreen')  # 'darkgreen' color for the bars

# Set the title of the plot
plt.title('Airlines Offering Business Class Flights')  # Title for the bar plot

# Label the x-axis
plt.xlabel('Airline')  # Label for the x-axis, representing the airlines

# Label the y-axis
plt.ylabel('Number of Business Class Flights')  # Label for the y-axis, representing the number of Business class flights

# Rotate the x-axis labels by 45 degrees for better readability
plt.xticks(rotation=45)  # Rotate x-axis labels to avoid overlap

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight
# The bar graph shows the number of business class flights offered by two airlines: Vistara and Air India. Vistara offers significantly more business class flights compared to Air India. This suggests that Vistara has a stronger focus on providing premium travel options compared to Air India. 
# 

# #### 9.Airlines Offering Economy Class Flights

# In[64]:


# Filter the dataset for Economy class flights only
economy_class_flights = df[df['Class'] == 'Economy']  # Select only rows where 'Class' is 'Economy'

# Count the number of Economy class flights for each airline
economy_class_counts = economy_class_flights['Airline'].value_counts()  # Get the count of Economy class flights per airline

# Create a bar plot to visualize the number of Economy class flights by airline
economy_class_counts.plot(kind='bar', color='orange')  # 'skyblue' color for the bars

# Set the title of the plot
plt.title('Airlines Offering Economy Class Flights')  # Title for the bar plot

# Label the x-axis
plt.xlabel('Airline')  # Label for the x-axis, representing the airlines

# Label the y-axis
plt.ylabel('Number of Economy Class Flights')  # Label for the y-axis, representing the number of Economy class flights

# Rotate the x-axis labels by 45 degrees for better readability
plt.xticks(rotation=45)  # Rotate x-axis labels to avoid overlap

# Display the plot
plt.show()  # Show the plot to the user


# #### Insight 
# The bar graph shows the number of economy class flights offered by six different airlines. Vistara offers the most economy class flights, followed by Air India and Indigo. GO FIRST, AirAsia, and SpiceJet offer significantly fewer economy class flights compared to the top three airlines. This suggests that Vistara, Air India, and Indigo have a larger focus on economy class travel compared to the other airlines.
# 

# ### Conclusion:
# 
# ##### The analysis of Indian airline data highlights key trends:
# 
# 1.**Pricing Patterns:** Business class tickets are significantly more expensive, targeting premium travelers, while Economy class caters to budget-conscious customers.
# 
# 2.**Popular Routes:** High demand is observed on routes like Bangalore to Delhi and Kolkata to Mumbai.
#     
# 3.**Stop Impact:** Flights with one stop have higher average ticket prices, offering a tradeoff between cost and convenience.
#     
# 4.**Preferred Airlines:** Vistara leads in both Economy and Business classes, while AirAsia and SpiceJet dominate the low-cost segment.
#     
# 5.**Dynamic Pricing:** Ticket prices fluctuate heavily as the departure date nears, emphasizing strategic booking for cost savings.
# 

# ###  Recommendations:
# 
# 1.**Dynamic Pricing Optimization:** Airlines should refine pricing strategies using insights from customer preferences and demand patterns, especially for peak travel times and popular routes.
# 
# 2.**Route Expansion:** Increase flight frequency on high-demand routes like Bangalore to Delhi while exploring underserved routes to expand market share.
# 
# 3.**Customer-Centric Services:** Improve amenities for Economy class passengers to attract budget-conscious travelers and enhance Business class offerings for premium customers.
# 4.**Efficient Operations:** Use data to optimize flight schedules, reduce layovers, and minimize operational costs.
# 
# 5.**Loyalty Programs:** Develop personalized rewards programs based on travel frequency and preferences to retain customers.
# 
# ##### These steps can help airlines balance profitability with improved customer satisfaction.

# ### **Future Enhancements**  
# 
# 1. **Predictive Analytics:** Implement machine learning models to predict ticket demand and pricing trends, enabling smarter decision-making.  
# 
#     
# 2. **Sustainability Focus:** Analyze flight operations for eco-friendly improvements, such as fuel optimization and carbon offset initiatives.
# 
#     
# 3. **Real-Time Data Integration:** Utilize live data for real-time pricing adjustments and to provide customers with timely offers.  
# 
#     
# 4. **Customer Feedback Analysis:** Incorporate feedback to identify service gaps and improve customer satisfaction.  
# 
#     
# 5. **Geographical Expansion:** Analyze regional data to identify opportunities for entering new markets or increasing presence in underutilized areas.  
# 
# ##### These enhancements can drive better operational efficiency, profitability, and customer loyalty.
