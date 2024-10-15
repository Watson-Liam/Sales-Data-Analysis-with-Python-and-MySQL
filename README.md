# Sales Data Analysis with Python and MySQL

## Project Overview

This project demonstrates how to use **Python** and **MySQL** to analyze and visualize sales data. The goal of this analysis is to extract insights about monthly sales trends, clean the dataset, handle missing values, and calculate monthly sales figures. This project is suitable for showcasing skills in both **data analysis** and **database management**.

## Features

- Data cleaning and handling of missing values.
- Calculation of monthly sales trends.
- Integration of MySQL with Python using the `pymysql` library.
- Data visualization using the `matplotlib` library to display sales trends.

## Technologies Used

- **Python**: For data processing and analysis.
- **Pandas**: For data manipulation and cleaning.
- **MySQL**: As the database to store and retrieve sales data.
- **Matplotlib**: For visualizing the sales trends.
- **VS Code**: As the IDE for development.
- **Git & GitHub**: For version control and project hosting.

## Setup and Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/DataAnalysisProject.git
    cd DataAnalysisProject
    ```

2. **Install required Python packages**:
    Make sure you have Python 3.x installed. Then install the necessary packages with:
    ```bash
    pip install pandas pymysql matplotlib
    ```

3. **Set up the MySQL database**:
    - Create a MySQL database for the project.
    - Import the provided SQL script (`sales_data.sql`) to create the necessary tables and insert initial data.
    - Update the connection details in the Python script (`mysql_connect.py`):
      ```python
      connection = pymysql.connect(
          host='localhost',
          user='your_username',
          password='your_password',
          database='your_database'
      )
      ```

## Usage

1. **Run the MySQL database** and make sure it is connected properly.
2. **Run the Python script** to perform the data analysis:
    ```bash
    python sales_analysis.py
    ```

## Example Analysis

- **Monthly Sales Trends**: 
  The script calculates and visualizes monthly sales trends, allowing you to understand the sales performance over time.

- **Handling Missing Data**: 
  The project demonstrates how to clean and handle missing values in the dataset using Pandas, including filling missing values with the mean.

## Project Structure

```plaintext
├── data/
│   └── sales_data.csv           # Sample sales data (CSV format)
├── mysql_connect.py              # MySQL connection setup
├── sales_analysis.py             # Python script for data analysis
├── sales_data.sql                # SQL script to set up MySQL database and table
├── README.md                     # Project description and instructions
└── requirements.txt              # Python dependencies
