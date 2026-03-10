import mysql.connector

# Database Configuration
DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = "Saurav121@__" # Replace with your MySQL password
DB_DATABASE = "OYO"

def get_connection():
    """Establishes and returns a database connection."""
    try:
        conn = mysql.connector.connect(
            host=DB_HOST,
            user=DB_USER,
            password=DB_PASSWORD,
            database=DB_DATABASE
        )
        return conn
    except mysql.connector.Error as e:
        print(f"Error connecting to MySQL: {e}")
        return None
