-- 1. Create the patient table
CREATE TABLE patient (
    patient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_name TEXT,
    age INTEGER,
    phone TEXT
);

-- 2. Insert data (some with NULL values)
INSERT INTO patient (patient_name, age, phone) VALUES 
('Alice', 30, '9876543210'),
('Bob', NULL, '9123456789'),         -- Age not known
('Charlie', 45, NULL),               -- Phone not available
('Deepa', 50, '9988776655');

-- 3. Update rows
-- Add missing age for Bob
UPDATE patient
SET age = 28
WHERE patient_name = 'Bob';

-- Update phone number for Charlie
UPDATE patient
SET phone = '9000000000'
WHERE patient_name = 'Charlie';

-- 4. Delete rows
-- Delete patient named 'Deepa'
DELETE FROM patient
WHERE patient_name = 'Deepa';

-- 5. Final SELECT to check the data
SELECT * FROM patient;
