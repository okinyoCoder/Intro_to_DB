CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE IF NOT EXISTS Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    price DOUBLE,
    publication_date DATE,
    FOREIGN Key (author_id) REFERENCES Authors (author_id)

);
CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
-- Table for storing orders
CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    order_date DATE,
    FOREIGN KEY customer_id REFERENCES  Customers(customer_id)
);

-- Table for storing order details
CREATE TABLE Order_Details(
    orderdetailid INT PRIMARY KEY,
    quantity DOUBLE,
    FOREIGN KEY order_id REFERENCES Orders(order_id),
    FOREIGN KEY book_id REFERENCES Books(book_id)
);