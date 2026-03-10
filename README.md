# Full-Tutorial-of-OYO-App-Development
Team Introduction<br>
Welcome to our OYO Clone Project repository! We are a team passionate about creating a streamlined accommodation booking experience. Let us introduce ourselves:
<br>•	Team Members:
<br>Saurav Singh
<br>	Rashmi
<br>Hardik
<br>
<br>

# Project Introduction<br>
This repository hosts the Phase One development of our OYO Clone application. Currently, we have implemented:<br>
•	Backend:
 Developed in Python, our backend handles the core functionalities of our application.<br>
•	Database: 
Utilizing SQL, we've designed a database schema to store essential data for bookings and users.<br>
•	Frontend: 
Initial UI design featuring a home page and login interface using tkinter.<br>

Please note, this is an ongoing project and represents only the initial phase of development.
<br>

## Setup Instructions

### 1. Install Requirements
Install the required dependencies using pip:
```bash
pip install -r requirements.txt
```

### 2. Database Connectivity
Our application connects to a MySQL database.
1. Use MySQL workbench and run the final SQL script located in the `archive/FINAL DATABASE OF PROJECT.sql` to setup your tables.
2. Edit `config.py` and modify the connection details (specifically your `DB_PASSWORD`) to match your local MySQL configuration.

### 3. Running the Application
Run the main file to start the frontend interface:
```bash
python main.py
```

## Database Overview
We have structured our SQL database to support the following functionalities:<br>
•	Tables:<br>
o	Hotels: <br>
Stores hotel information including name, address, and contact and ratings of the hotel.<br> 
o	Customer: <br>
Manages customer data such as name , contact information and registration date.<br>
o	Booking: <br>
Tracks booking details with references to customers and hotels.<br>
o	Room: <br>
Provides the details of every room.<br>
o	Payment: <br>
Account for the payment details reference to the customer and booking.<br>

# Frontend Overview<br>
<br>
Our frontend (tkinter-based) demonstrates the user interface conceptually. <br>
•	Limitations:<br>
The frontend UI in this repository is for demonstration purposes.
Direct functionality may not work on your local machine without appropriate requirements of the interface , backend and database setup.
