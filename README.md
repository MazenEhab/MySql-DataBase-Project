# MySql-DataBase-Project
# Overview

Anna and Karl are two best friends who have always dreamed of opening a restaurant in Egypt. Their passion for food and hospitality led them to create a unique dining experience that blends traditional flavors with modern service. To efficiently manage their restaurant’s operations, they designed a structured database that organizes employee records, food menus, customer details, and bookings. The Anna_Karl database ensures smooth functionality by utilizing SQL features such as indexing, triggers, joins, and subqueries.

# Project Included

**Tables**
- Employees: Information about restaurant employees, including their names and job positions.
- Food: List of available food items along with their prices.
- Customers: Details about restaurant customers, including their names and email addresses.
- Bookings: Records of customer reservations, including table numbers, number of guests, and booking dates.

**Additional Features**
- Data Insertion: Sample data for employees, food items, customers, and bookings is included to demonstrate how the tables are populated and can be queried for useful insights.
- Queries for Reporting: Queries to retrieve data, such as customer bookings, daily guest counts, and detailed customer reservation information. These queries are essential for reporting and tracking restaurant operations.
- Database Constraints: Includes primary keys and foreign keys to enforce referential integrity and ensure that the relationships between tables (e.g., between bookings and customers) are maintained.
- Triggers: A trigger is included to automatically calculate the price for bookings based on the number of guests, ensuring that the price field is updated before a new booking is inserted.
- Indexes: An index on the food_name field in the food table is created for efficient searching, ensuring quick access to the menu items when needed.
- Subqueries: Subqueries are included for advanced reporting, such as calculating the total number of guests for each customer, which can be useful for understanding customer activity.

## Installation

1. Clone this repository:
   git clone https://github.com/MazenEhab/MySql-DataBase-Project.git

2. Run the SQL script:
   - Open MySQL Workbench or another MySQL interface.
   - Execute the SQL script to create the `Anna_Karl` database and populate the tables with sample data.

3. You're all set, Start querying the database with the sample queries provided.
