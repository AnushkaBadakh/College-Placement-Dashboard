create database collegeplacement;
use collegeplacement;


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    graduation_year INT
);

INSERT INTO Students (student_id, name, email, department, graduation_year) VALUES
(1, 'Rahul Sharma', 'rahul.sharma@example.com', 'Computer Science', 2019),
(2, 'Priya Patel', 'priya.patel@example.com', 'Mechanical Engineering', 2020),
(3, 'Ravi Kumar', 'ravi.kumar@example.com', 'Electrical Engineering', 2021),
(4, 'Neha Gupta', 'neha.gupta@example.com', 'Business Administration', 2022),
(5, 'Aakash Singh', 'aakash.singh@example.com', 'Computer Science', 2023),
(6, 'Meera Reddy', 'meera.reddy@example.com', 'Data Science', 2024),
(7, 'Sandeep Joshi', 'sandeep.joshi@example.com', 'Information Technology', 2025),
(8, 'Ananya Desai', 'ananya.desai@example.com', 'Marketing', 2019),
(9, 'Vikram Verma', 'vikram.verma@example.com', 'Finance', 2020),
(10, 'Shreya Malhotra', 'shreya.malhotra@example.com', 'Computer Science', 2021);

select * from  students;

CREATE TABLE Companies (
    company_id INT PRIMARY KEY,
    name VARCHAR(100),
    industry VARCHAR(100)
);

INSERT INTO Companies (company_id, name, industry) VALUES
(1, 'Amazon', 'E-commerce'),
(2, 'Google', 'Technology'),
(3, 'Tata Consultancy Services (TCS)', 'Information Technology'),
(4, 'Accenture', 'Consulting'),
(5, 'Microsoft', 'Technology'),
(6, 'Apple Inc.', 'Technology'),
(7, 'Infosys', 'Information Technology'),
(8, 'IBM', 'Technology'),
(9, 'Walmart', 'Retail'),
(10, 'Samsung Electronics', 'Technology');


CREATE TABLE Jobs (
    job_id INT PRIMARY KEY,
    company_id INT,
    position_title VARCHAR(100),
    salary DECIMAL(10, 2),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);


INSERT INTO Jobs (job_id, company_id, position_title, salary) VALUES
(1, 1, 'Software Engineer', 80000.00),
(2, 1, 'Data Analyst', 70000.00),
(3, 2, 'Mechanical Engineer', 85000.00),
(4, 3, 'Financial Analyst', 75000.00),
(5, 4, 'Data Analyst', 65000.00),
(6, 5, 'Marketing Specialist', 70000.00),
(7, 6, 'Journalist', 60000.00),
(8, 7, 'data scientist', 85000.00),
(9, 8, 'Energy Analyst', 72000.00),
(10, 9, 'Retail Manager', 68000.00);


-- Add job_location column to Jobs table
ALTER TABLE Jobs ADD job_location VARCHAR(50);

-- Update job locations with Indian cities
UPDATE Jobs
SET job_location = 'Pune'
WHERE job_id = 1;

UPDATE Jobs
SET job_location = 'Mumbai'
WHERE job_id = 2;

UPDATE Jobs
SET job_location = 'Bangalore'
WHERE job_id = 3;

UPDATE Jobs
SET job_location = 'Hyderabad'
WHERE job_id = 4;

UPDATE Jobs
SET job_location = 'Chennai'
WHERE job_id = 5;

UPDATE Jobs
SET job_location = 'Delhi'
WHERE job_id = 6;

UPDATE Jobs
SET job_location = 'Kolkata'
WHERE job_id = 7;

UPDATE Jobs
SET job_location = 'Ahmedabad'
WHERE job_id = 8;

UPDATE Jobs
SET job_location = 'Gurgaon'
WHERE job_id = 9;

UPDATE Jobs
SET job_location = 'Noida'
WHERE job_id = 10;



select * from jobs;






UPDATE Jobs
SET job_location = 'Pune'
WHERE job_id IN ( 11, 22,12);

UPDATE Jobs
SET job_location = 'Mumbai'
WHERE job_id =21

UPDATE Jobs
SET job_location = 'Bangalore'
WHERE job_id IN ( 13, 23);

UPDATE Jobs
SET job_location = 'Hyderabad'
WHERE job_id IN ( 14, 24);

UPDATE Jobs
SET job_location = 'Chennai'
WHERE job_id IN (15, 25);

UPDATE Jobs
SET job_location = 'Delhi'
WHERE job_id IN (6, 16, 26);

UPDATE Jobs
SET job_location = 'Kolkata'
WHERE job_id IN ( 17, 27);

UPDATE Jobs
SET job_location = 'Ahmedabad'
WHERE job_id IN ( 18, 28);

UPDATE Jobs
SET job_location = 'Gurgaon'
WHERE job_id IN ( 19, 29);

UPDATE Jobs
SET job_location = 'Noida'
WHERE job_id IN ( 20, 30);

CREATE TABLE Placements (
    placement_id INT PRIMARY KEY,
    student_id INT,
    company_id INT,
    job_id INT,
    placement_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id),
    FOREIGN KEY (job_id) REFERENCES Jobs(job_id)
);


INSERT INTO Placements (placement_id, student_id, company_id, job_id, placement_date) VALUES
(1, 1, 1, 1, '2020-08-15'),
(2, 2, 2, 3, '2021-05-20'),
(3, 3, 3, 4, '2022-01-10'),
(4, 4, 4, 5, '2023-09-05'),
(5, 5, 5, 2, '2024-03-15'),
(6, 6, 1, 1, '2025-07-20'),
(7, 7, 2, 3, '2025-08-30'),
(8, 8, 3, 4, '2024-06-25'),
(9, 9, 4, 5, '2023-10-12'),
(10, 10, 5, 2, '2022-04-18');

INSERT INTO Students (student_id, name, email, department, graduation_year) VALUES
(11, 'Amit Sharma', 'amit.sharma@example.com', 'Electrical Engineering', 2022),
(12, 'Deepika Patel', 'deepika.patel@example.com', 'Computer Science', 2023),
(13, 'Rahul Kumar', 'rahul.kumar@example.com', 'Mechanical Engineering', 2024),
(14, 'Priya Gupta', 'priya.gupta@example.com', 'Business Administration', 2025),
(15, 'Sachin Singh', 'sachin.singh@example.com', 'Information Technology', 2022),
(16, 'Swati Reddy', 'swati.reddy@example.com', 'Data Science', 2023),
(17, 'Ravi Joshi', 'ravi.joshi@example.com', 'Marketing', 2024),
(18, 'Neha Verma', 'neha.verma@example.com', 'Finance', 2025),
(19, 'Arun Malhotra', 'arun.malhotra@example.com', 'Psychology', 2022),
(20, 'Anjali Kapoor', 'anjali.kapoor@example.com', 'Electrical Engineering', 2023);


INSERT INTO Students (student_id, name, email, department, graduation_year) VALUES
(21, 'Alok Gupta', 'alok.gupta@example.com', 'Civil Engineering', 2024),
(22, 'Pooja Shah', 'pooja.shah@example.com', 'Chemical Engineering', 2025),
(23, 'Kiran Patel', 'kiran.patel@example.com', 'AI & Data Science', 2022),
(24, 'Nikhil Kumar', 'nikhil.kumar@example.com', 'E&TC Engineering', 2023),
(25, 'Sneha Desai', 'sneha.desai@example.com', 'Electrical Engineering', 2024),
(26, 'Vivek Sharma', 'vivek.sharma@example.com', 'Civil Engineering', 2025),
(27, 'Jyoti Reddy', 'jyoti.reddy@example.com', 'Chemical Engineering', 2022),
(28, 'Sanjay Gupta', 'sanjay.gupta@example.com', 'AI & Data Science', 2023),
(29, 'Manisha Singh', 'manisha.singh@example.com', 'E&TC Engineering', 2024),
(30, 'Rahul Deshpande', 'rahul.deshpande@example.com', 'Mechanical Engineering', 2025);




-- Insert engineering roles into Jobs table
INSERT INTO Jobs (job_id, company_id, position_title, salary) VALUES
(11, 11, 'Software Developer', 85000.00),
(12, 12, 'Database Administrator', 78000.00),
(13, 13, 'Mechanical Design Engineer', 90000.00),
(14, 14, 'Pharmaceutical Research Scientist', 82000.00),
(15, 15, 'Financial Analyst', 75000.00),
(16, 16, 'Aerospace Engineer', 95000.00),
(17, 17, 'Brand Manager', 72000.00),
(18, 18, 'Market Research Analyst', 68000.00),
(19, 19, 'Supply Chain Manager', 80000.00),
(20, 20, 'Software Tester', 70000.00);


INSERT INTO Companies (company_id, name, industry) VALUES
(11, 'Facebook', 'Social Media'),
(12, 'Oracle Corporation', 'Technology'),
(13, 'Tesla, Inc.', 'Automotive'),
(14, 'Johnson & Johnson', 'Healthcare'),
(15, 'Berkshire Hathaway', 'Finance'),
(16, 'Boeing', 'Aerospace'),
(17, 'Nike, Inc.', 'Apparel'),
(18, 'Procter & Gamble', 'Consumer Goods'),
(19, 'Coca-Cola Company', 'Beverages'),
(20, 'Toyota Motor Corporation', 'Automotive');


select * from Companies;

INSERT INTO Placements (placement_id, student_id, company_id, job_id, placement_date) VALUES
(11, 11, 11, 11, '2023-08-10'),
(12, 12, 12, 12, '2024-04-15'),
(13, 13, 13, 13, '2025-01-20'),
(14, 14, 14, 14, '2022-09-15'),
(15, 15, 15, 15, '2023-03-25'),
(16, 16, 16, 16, '2024-07-30'),
(17, 17, 17, 17, '2025-08-05'),
(18, 18, 18, 18, '2024-06-10'),
(19, 19, 19, 19, '2023-10-20'),
(20, 20, 20, 20, '2022-05-12');

ALTER TABLE Students
ADD gender VARCHAR(10);  -- Assuming gender will be stored as a string (e.g., 'Male', 'Female', 'Other')

INSERT INTO Students (student_id, name, email, department, graduation_year, gender) VALUES
(11, 'Amit Sharma', 'amit.sharma@example.com', 'Electrical Engineering', 2022, 'Male'),
(12, 'Deepika Patel', 'deepika.patel@example.com', 'Computer Science', 2023, 'Female'),
(13, 'Rahul Kumar', 'rahul.kumar@example.com', 'Mechanical Engineering', 2024, 'Male'),
(14, 'Priya Gupta', 'priya.gupta@example.com', 'Business Administration', 2025, 'Female'),
(15, 'Sachin Singh', 'sachin.singh@example.com', 'Information Technology', 2022, 'Male'),
(16, 'Swati Reddy', 'swati.reddy@example.com', 'Data Science', 2023, 'Female'),
(17, 'Ravi Joshi', 'ravi.joshi@example.com', 'Marketing', 2024, 'Male'),
(18, 'Neha Verma', 'neha.verma@example.com', 'Finance', 2025, 'Female'),
(19, 'Arun Malhotra', 'arun.malhotra@example.com', 'Psychology', 2022, 'Male'),
(20, 'Anjali Kapoor', 'anjali.kapoor@example.com', 'Electrical Engineering', 2023, 'Female');


UPDATE Students SET gender = 'Male' WHERE student_id = 1;
UPDATE Students SET gender = 'Female' WHERE student_id = 2;
UPDATE Students SET gender = 'Male' WHERE student_id = 3;
UPDATE Students SET gender = 'Female' WHERE student_id = 4;
UPDATE Students SET gender = 'Male' WHERE student_id = 5;
UPDATE Students SET gender = 'Female' WHERE student_id = 6;
UPDATE Students SET gender = 'Male' WHERE student_id = 7;
UPDATE Students SET gender = 'Female' WHERE student_id = 8;
UPDATE Students SET gender = 'Male' WHERE student_id = 9;
UPDATE Students SET gender = 'Female' WHERE student_id = 10;

UPDATE Students SET gender = 'Male' WHERE student_id = 11;
UPDATE Students SET gender = 'Female' WHERE student_id = 12;
UPDATE Students SET gender = 'Male' WHERE student_id = 13;
UPDATE Students SET gender = 'Female' WHERE student_id = 14;
UPDATE Students SET gender = 'Male' WHERE student_id = 15;
UPDATE Students SET gender = 'Female' WHERE student_id = 16;
UPDATE Students SET gender = 'Male' WHERE student_id = 17;
UPDATE Students SET gender = 'Female' WHERE student_id = 18;
UPDATE Students SET gender = 'Male' WHERE student_id = 19;
UPDATE Students SET gender = 'Female' WHERE student_id = 20;


UPDATE Students SET gender = 'Male' WHERE student_id = 21;
UPDATE Students SET gender = 'Female' WHERE student_id = 22;
UPDATE Students SET gender = 'Male' WHERE student_id = 23;
UPDATE Students SET gender = 'Male' WHERE student_id = 24;
UPDATE Students SET gender = 'Female' WHERE student_id = 25;
UPDATE Students SET gender = 'Male' WHERE student_id = 26;
UPDATE Students SET gender = 'Female' WHERE student_id = 27;
UPDATE Students SET gender = 'Male' WHERE student_id = 28;
UPDATE Students SET gender = 'Female' WHERE student_id = 29;
UPDATE Students SET gender = 'Male' WHERE student_id = 30;







-- Update salaries for companies where average salary is higher to 20k or 30k
-- Update salaries directly
UPDATE Jobs
SET salary = 45000.00  -- Set salary to 30k
WHERE job_id = 4;  -- Specify the job_id you want to update

-- Update another salary
UPDATE Jobs
SET salary = 56000.00  -- Set salary to 40k
WHERE job_id = 21;  -- Specify the job_id you want to update


UPDATE Jobs
SET salary = 48000.00  -- Set salary to 40k
WHERE job_id = 25;  -- Specify the job_id you want to update

UPDATE Jobs
SET salary = 37000.00  -- Set salary to 40k
WHERE job_id = 7;  -- Specify the job_id you want to update

UPDATE Jobs
SET salary = 40000.00  -- Set salary to 40k
WHERE job_id = 20;  -- Specify the job_id you want to update


select * from jobs;

UPDATE Jobs
SET salary = 120000.00  -- Set salary to 40k
WHERE job_id = 1;  -- Specify the job_id you want to update

UPDATE Jobs
SET salary = 42000.00  -- Set salary to 40k
WHERE job_id = 19;  -- Specify the job_id you want to update


SELECT s.department, COUNT(p.placement_id) AS NumberOfPlacements
FROM Placements p
JOIN Students s ON p.student_id = s.student_id
GROUP BY s.department;




SELECT s.department, AVG(j.salary) AS AveragePackage
FROM Placements p
JOIN Students s ON p.student_id = s.student_id
JOIN Jobs j ON p.job_id = j.job_id
GROUP BY s.department;

SELECT c.name AS CompanyName, COUNT(p.placement_id) AS NumberOfPlacements
FROM Placements p
JOIN Companies c ON p.company_id = c.company_id
GROUP BY c.name;


--Placement Trend by Year
SELECT s.graduation_year AS YearOfPassing, COUNT(p.placement_id) AS NumberOfPlacements
FROM Placements p
JOIN Students s ON p.student_id = s.student_id
GROUP BY s.graduation_year
ORDER BY s.graduation_year;


SELECT j.job_location, COUNT(p.placement_id) AS NumberOfPlacements
FROM Placements p
JOIN Jobs j ON p.job_id = j.job_id
GROUP BY j.job_location;




INSERT INTO Students (student_id, name, email, department, graduation_year) VALUES
(31, 'Kavita Sharma', 'kavita.sharma@example.com', 'Computer Science', 2026),
(32, 'Rahul Kapoor', 'rahul.kapoor@example.com', 'Electrical Engineering', 2026),
(33, 'Priyanka Desai', 'priyanka.desai@example.com', 'Mechanical Engineering', 2026),
(34, 'Amit Kumar', 'amit.kumar@example.com', 'Civil Engineering', 2026),
(35, 'Shalini Reddy', 'shalini.reddy@example.com', 'Chemical Engineering', 2026);
INSERT INTO Students (student_id, name, email, department, graduation_year) VALUES
(36, 'Gaurav Patel', 'gaurav.patel@example.com', 'AI & Data Science', 2019),
(37, 'Mona Verma', 'mona.verma@example.com', 'E&TC Engineering', 2020),
(38, 'Vikas Singh', 'vikas.singh@example.com', 'Computer Science', 2020),
(39, 'Anjali Deshpande', 'anjali.deshpande@example.com', 'Electrical Engineering', 2020);



select * from students;
INSERT INTO Students (student_id, name, email, department, graduation_year) VALUES
(40, 'Sneha Sharma', 'sneha.sharma@example.com', 'Mechanical Engineering', 2021),
(41, 'Rahul Verma', 'rahul.verma@example.com', 'Computer Science', 2022),
(42, 'Priya Kapoor', 'priya.kapoor@example.com', 'Electrical Engineering', 2023),
(43, 'Alok Kumar', 'alok.kumar@example.com', 'Civil Engineering', 2024),
(44, 'Swati Reddy', 'swati.reddy@example.com', 'Chemical Engineering', 2025),
(45, 'Amita Patel', 'amita.patel@example.com', 'AI & Data Science', 2019),
(46, 'Vivek Verma', 'vivek.verma@example.com', 'E&TC Engineering', 2020),
(47, 'Neha Singh', 'neha.singh@example.com', 'Computer Science', 2021),
(48, 'Kiran Desai', 'kiran.desai@example.com', 'Electrical Engineering', 2022),
(49, 'Rajesh Sharma', 'rajesh.sharma@example.com', 'Mechanical Engineering', 2023),
(50, 'Anita Gupta', 'anita.gupta@example.com', 'Civil Engineering', 2024),
(51, 'Prakash Reddy', 'prakash.reddy@example.com', 'Chemical Engineering', 2025),
(52, 'Pooja Kumar', 'pooja.kumar@example.com', 'AI & Data Science', 2019),
(53, 'Amar Patel', 'amar.patel@example.com', 'E&TC Engineering', 2020),
(54, 'Divya Sharma', 'divya.sharma@example.com', 'Computer Science', 2021),
(55, 'Rahul Kapoor', 'rahul.kapoor@example.com', 'Electrical Engineering', 2022),
(56, 'Priyanka Desai', 'priyanka.desai@example.com', 'Mechanical Engineering', 2023),
(57, 'Amit Kumar', 'amit.kumar@example.com', 'Civil Engineering', 2024),
(58, 'Shalini Reddy', 'shalini.reddy@example.com', 'Chemical Engineering', 2025),
(59, 'Gaurav Patel', 'gaurav.patel@example.com', 'AI & Data Science', 2019),
(60, 'Mona Verma', 'mona.verma@example.com', 'E&TC Engineering', 2020),
(61, 'Vikas Singh', 'vikas.singh@example.com', 'Computer Science', 2021),
(62, 'Anjali Deshpande', 'anjali.deshpande@example.com', 'Electrical Engineering', 2022),
(63, 'Sneha Sharma', 'sneha.sharma@example.com', 'Mechanical Engineering', 2023),
(64, 'Rahul Verma', 'rahul.verma@example.com', 'Computer Science', 2024),
(65, 'Priya Kapoor', 'priya.kapoor@example.com', 'Electrical Engineering', 2025);


select * from  Companies;


DELETE FROM Companies
WHERE company_id BETWEEN 1 AND 20;


INSERT INTO Companies (company_id, name, industry)
VALUES
(21, 'Sony Corporation', 'Technology'),
(22, 'General Electric', 'Industrial'),
(23, 'Netflix', 'Entertainment'),
(24, 'Mercedes-Benz', 'Automotive'),
(25, 'L''Oreal', 'Cosmetics'),
(26, 'Nestle', 'Food & Beverage'),
(27, 'Sony Pictures Entertainment', 'Entertainment'),
(28, 'Siemens AG', 'Technology'),
(29, 'PepsiCo', 'Food & Beverage'),
(30, 'Adobe Inc.', 'Technology'),
(31, 'American Express', 'Finance'),
(32, 'Caterpillar Inc.', 'Industrial'),
(33, 'Qualcomm', 'Technology'),
(34, 'Boeing', 'Aerospace'),
(35, 'Lockheed Martin', 'Defense'),
(36, 'FedEx Corporation', 'Logistics'),
(37, 'Hewlett Packard Enterprise', 'Technology'),
(38, 'Nike, Inc.', 'Apparel'),
(39, 'Johnson & Johnson', 'Healthcare'),
(40, 'Costco Wholesale', 'Retail'),
(41, 'Dell Technologies', 'Technology'),
(42, 'Toyota Motor Corporation', 'Automotive'),
(43, 'McDonald''s Corporation', 'Food & Beverage'),
(44, 'Visa Inc.', 'Finance'),
(45, 'Samsung Electronics', 'Technology'),
(46, 'IBM', 'Technology'),
(47, 'Coca-Cola Company', 'Beverages'),
(48, 'Uber Technologies', 'Technology'),
(49, 'Walt Disney Company', 'Entertainment'),
(50, 'Accenture', 'Consulting');


INSERT INTO Jobs (job_id, company_id, position_title, salary, job_location)
VALUES
(31, 21, 'Retail Associate', 40000.00, 'Pune'),
(32, 22, 'Social Media Manager', 60000.00, 'Mumbai'),
(33, 23, 'Database Administrator', 80000.00, 'Pune'),
(34, 24, 'Automotive Engineer', 90000.00, 'Mumbai'),
(35, 25, 'Healthcare Specialist', 75000.00, 'Pune'),
(36, 26, 'Financial Analyst', 85000.00, 'Mumbai'),
(37, 27, 'Aerospace Engineer', 95000.00, 'Pune'),
(38, 28, 'Apparel Designer', 70000.00, 'Mumbai'),
(39, 29, 'Consumer Goods Analyst', 72000.00, 'Pune'),
(40, 30, 'Beverage Specialist', 68000.00, 'Mumbai');


-- Insert new placements
INSERT INTO Placements (placement_id, student_id, company_id, job_id, placement_date)
VALUES
(21, 31, 21, 31, '2026-08-10'),
(22, 32, 22, 32, '2026-04-15'),
(23, 33, 23, 33, '2026-01-20'),
(24, 34, 24, 34, '2026-09-15'),
(25, 35, 25, 35, '2026-03-25'),
(26, 36, 26, 36, '2026-07-30'),
(27, 37, 27, 37, '2026-08-05'),
(28, 38, 28, 38, '2026-06-10'),
(29, 39, 29, 39, '2026-10-20'),
(30, 40, 30, 40, '2026-05-12');




INSERT INTO Jobs (job_id, company_id, position_title, salary, job_location) VALUES
(41, 41, 'Data Scientist', 90000.00, 'Pune'),
(42, 42, 'Software Engineer', 50000.00, 'Mumbai'),
(43, 43, 'Mechanical Engineer', 40000.00, 'Bangalore'),
(44, 44, 'Financial Analyst', 30000.00, 'Hyderabad'),
(45, 45, 'Marketing Specialist', 90000.00, 'Chennai'),
(46, 46, 'Journalist', 50000.00, 'Delhi'),
(47, 47, 'Energy Analyst', 40000.00, 'Kolkata'),
(48, 48, 'Database Administrator', 30000.00, 'Ahmedabad'),
(49, 49, 'Software Tester', 90000.00, 'Gurgaon'),
(50, 50, 'Retail Manager', 50000.00, 'Noida');


select * from jobs;
select * from Companies;
select * from Placements;
select * from Students;



INSERT INTO Placements (placement_id, student_id, company_id, job_id, placement_date)
VALUES
(31, 41, 31, 41, '2026-08-10'),
(32, 42, 32, 42, '2026-04-15'),
(33, 43, 33, 43, '2026-01-20'),
(34, 44, 34, 44, '2026-09-15'),
(35, 45, 35, 45, '2026-03-25'),
(36, 46, 36, 46, '2026-07-30'),
(37, 47, 37, 47, '2026-08-05'),
(38, 48, 38, 48, '2026-06-10'),
(39, 49, 39, 49, '2026-10-20'),
(40, 50, 40, 50, '2026-05-12'),
(41, 51, 1, 51, '2026-11-18'),
(42, 52, 2, 52, '2026-12-05'),
(43, 53, 3, 53, '2026-08-20'),
(44, 54, 4, 54, '2026-07-15'),
(45, 55, 5, 55, '2026-09-30'),
(46, 56, 6, 56, '2026-10-25'),
(47, 57, 7, 57, '2026-11-05'),
(48, 58, 8, 58, '2026-06-15'),
(49, 59, 9, 59, '2026-04-28'),
(50, 60, 10, 60, '2026-03-22'),
(51, 61, 11, 61, '2026-02-17'),
(52, 62, 12, 62, '2026-01-10'),
(53, 63, 13, 63, '2026-12-12'),
(54, 64, 14, 64, '2026-11-30'),
(55, 65, 15, 65, '2026-10-08');


INSERT INTO placements (placement_id, student_id, job_id, company_id, placement_date)
VALUES
    (31, 21, 31, 21, '2026-08-10'),
    (32, 22, 32, 22, '2026-04-15'),
    (33, 23, 33, 23, '2026-01-20'),
    (34, 24, 34, 24, '2026-09-15'),
    (35, 25, 35, 25, '2026-03-25'),
    (36, 26, 36, 26, '2026-07-30'),
    (37, 27, 37, 27, '2026-08-05'),
    (38, 28, 38, 28, '2026-06-10'),
    (39, 29, 39, 29, '2026-10-20'),
    (40, 30, 40, 30, '2026-05-12');
