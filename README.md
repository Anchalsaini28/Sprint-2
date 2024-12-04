# Sprint-2

# **Unlocking Trends and Insights in Indian Airlines Data Analysis**

## **Project Overview**

This project aims to analyze ticket prices and travel trends in the Indian airline industry. The dataset includes information about ticket prices, flight durations, departure times, number of stops, and airline classes (Economy and Business). By analyzing this data, the project uncovers patterns that can help airlines improve pricing strategies, optimize routes, and enhance customer satisfaction.

## **Key Questions Addressed**

- **Class-Based Pricing:**  
  - How do ticket prices differ between Economy and Business classes?  
  - What is the typical price range for each class, and what factors affect these prices?  

- **Factors Influencing Ticket Prices:**  
  - How do variables like flight duration, days left until departure, and the number of stops impact ticket prices?  
  - Are there patterns in ticket prices for specific airlines or routes?  

- **Route and Time Preferences:**  
  - Which routes (source to destination cities) are the most popular?  
  - What are the preferred departure and arrival times for flights, and do they affect pricing?  

- **Customer Insights:**  
  - What trends can be observed based on the class of ticket, number of stops, and travel times?  
  - How does the relationship between price and flight duration vary across different airlines?  

## **Objective**

The primary objective of this project is to analyze airline ticket data to uncover trends and insights that influence pricing and travel preferences. Specifically, the project aims to:

- **Understand Pricing Dynamics:** Identify factors like flight duration, number of stops, and days left until departure that significantly impact ticket prices.
- **Identify Popular Routes and Trends:** Determine the most frequent source and destination city pairs (routes). Explore the impact of departure and arrival times on ticket prices and customer preferences.
- **Class-Based Analysis:** Compare pricing, duration, and trends between Economy and Business classes, and provide insights into customer choices based on ticket class.
- **Recommendations for Airlines:** Offer data-driven suggestions to optimize pricing strategies and route management. Help airlines align their services with customer preferences to maximize satisfaction and revenue.

## **Dataset Description**

The dataset contains the following key columns:

- **Airline**: Name of the airline
- **Flight**: Unique flight number
- **Source_City**: Origin city of the flight
- **Destination_City**: Destination city of the flight
- **Departure_Time**: Departure time of the flight (e.g., Early Morning, Morning, Afternoon)
- **Arrival_Time**: Arrival time of the flight (e.g., Morning, Late Night)
- **Class**: Ticket class (Economy or Business)
- **Stops**: Number of stops in the journey (e.g., 0, 1, 2+)
- **Duration**: Total flight duration in hours
- **Days_Left**: Number of days left until the flight's departure
- **Price**: Ticket price in Indian Rupees (INR)

## **Installation and Setup**

To run this project locally, follow these steps:

### **1. Clone the repository**
```bash
git clone https://github.com/https://github.com/Anchalsaini28/Sprint-2

### **2. Install required libraries**
This project uses `pandas`, `matplotlib`, `seaborn`, and `mysql-connector-python`. You can install the necessary libraries by running the following command:

```bash
pip install -r requirements.txt
```

### **3. Setup MySQL Database (optional)**
If you wish to run queries directly on the dataset stored in MySQL:

- Download and install **MySQL** on your local machine or use an existing database.
- Create a database called `Indianairlines` and import the dataset.

## **How to Run the Project**

### **1. Data Preprocessing**
- The dataset is preprocessed by handling missing values, removing duplicates, and ensuring the data types are consistent.
- For categorical columns like `'Stops'`, the data is standardized (e.g., converting 'zero' to '0').

### **2. Exploratory Data Analysis (EDA)**
- **Statistical Analysis**: Basic summary statistics are calculated (mean, median, etc.) for ticket prices and other numerical features.
- **Data Visualization**: Various plots are generated to analyze ticket prices by class, number of stops, airlines, and more. These visualizations help uncover insights such as:
  - Average ticket prices by class
  - Popular travel routes
  - Departure times and their influence on pricing
  - Number of flights per airline

### **3. Insights and Recommendations**
- Key findings and actionable recommendations are provided for airlines to optimize pricing strategies, improve customer satisfaction, and streamline route planning.
- Suggestions also include optimizing business class offerings and adjusting prices based on travel trends.

### **4. Data Visualizations**
- The project generates the following visualizations:
  - **Bar plots** showing average ticket prices by class and by airline.
  - **Line plot** showing ticket price trends based on days left until departure.
  - **Bar charts** showing the number of flights per airline and the number of business/economy class flights.
  - **Route analysis** using bar plots to visualize the most popular routes.

## **Technologies Used**

- **Python**: For data analysis and visualization
- **MySQL**: For database management (optional)
- **Matplotlib & Seaborn**: For data visualization
- **Pandas**: For data manipulation and analysis

## **Future Enhancements**

1. **Predictive Modeling**: Use machine learning models to predict ticket prices based on various factors like flight duration, number of stops, etc.
2. **Dynamic Pricing**: Implement a dynamic pricing strategy based on demand, similar to what many airlines use for pricing.
3. **Advanced Visualizations**: Use tools like Plotly or Power BI to create interactive visualizations.
4. **Real-Time Data Integration**: Incorporate real-time data from airline APIs for up-to-date analysis and predictions.
5. **Sentiment Analysis**: Analyze customer reviews and sentiment to understand preferences and satisfaction.

## **Conclusion**

By analyzing ticket pricing, route preferences, and customer behavior, this project provides valuable insights that can help airlines optimize their operations and improve customer experience. The findings also offer travelers a clearer understanding of pricing trends and how to make informed decisions when booking flights.

---

### **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
