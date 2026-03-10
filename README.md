# 🏨 Py-Rates: OYO Clone Project

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Tkinter](https://img.shields.io/badge/Tkinter-GUI-blue?style=for-the-badge)

Py-Rates is a streamlined OYO Clone application designed to provide a conceptual booking experience. It features a robust Python backend, a relational database schema for managing stays, and an interactive Tkinter-based frontend.

---

## ✨ Features

- **User Authentication**: Secure login interface for customers.
- **Hotel Discovery**: Browse a comprehensive list of hotels.
- **Detailed Profiles**: View ratings, city location, room availability, and contact info.
- **Booking Management**: Real-time tracking of check-in and check-out dates.
- **Seamless UX**: Intuitive taskbar for Home, Bookings, Search, and Help.
- **Flexible Payments**: Conceptual support for Cards, UPI, and Pay-on-Visit.

---

## 🚀 Getting Started

### 1. Prerequisites
Ensure you have Python installed on your system.

### 2. Install Dependencies
Run the following command to install required libraries like `Pillow` and `mysql-connector-python`:
```bash
pip install -r requirements.txt
```

### 3. Database Setup
1. Open **MySQL Workbench**.
2. Run the SQL initialization script found in:  
   `archive/FINAL DATABASE OF PROJECT.sql`
3. This will create the necessary `OYO` database and tables.

### 4. Configuration
Before running, update your credentials:
1. Open `config.py`.
2. Update `DB_PASSWORD` with your local MySQL password.

### 5. Launch
Start the application by running:
```bash
python main.py
```

---

## 📂 Project Structure

- `main.py`: The entry point for the Tkinter frontend.
- `config.py`: Centralized database configuration.
- `assets/`: UI icons and background images.
- `archive/`: Legacy prototypes and SQL templates.
- `requirements.txt`: Project dependencies.

---

## 🤝 The Team

Developed with ❤️ by:
- **Saurav Singh**
- **Rashmi**
- **Hardik**

---

## 📝 Ongoing Development
This project represents Phase One of development. Future updates will include live search filters, actual payment gateway integration, and a mobile-responsive web version.

---
*Py-Rates - Simplifying Stays.*

