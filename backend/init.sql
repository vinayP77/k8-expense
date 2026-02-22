-- Step 1: Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS transactions;

-- Step 2: Use the database
USE transactions;

-- Step 3: Create the table
CREATE TABLE IF NOT EXISTS payments (
    id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique ID for each payment
    amount DECIMAL(10,2) NOT NULL,      -- Amount of the transaction
    description VARCHAR(255),            -- Description of the payment
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- When it was created
);

-- Step 4: Insert sample data
INSERT INTO payments (amount, description) VALUES
(100.50, 'Office supplies'),
(250.75, 'Software subscription'),
(75.00, 'Travel expenses');

#kubectl exec -it <new-pod-name> -n expense -- ls /docker-entrypoint-initdb.d/
#init.sql
#kubectl get pvc -n expense
#kubectl delete pvc <pvc-name> -n expense