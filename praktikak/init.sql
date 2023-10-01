CREATE DATABASE Library;

USE Library;

-- Create table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    ISBN VARCHAR(100),
    PublishedYear INT
);

-- Insert data
INSERT INTO Books (Title, Author, ISBN, PublishedYear) VALUES ('To Kill a Mockingbird', 'Harper Lee', '978-', 1960);
INSERT INTO Books (Title, Author, ISBN, PublishedYear) VALUES
('1984', 'George Orwell', '978-0-45', 1949),
('The Great Gatsby', 'F. Scott Fitzgerald', '978-0-7432-7356-5', 1925),
('Moby-Dick', 'Herman Melville', '978-0-14-243724-7', 1851);
