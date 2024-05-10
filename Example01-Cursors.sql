

select * FROM customers


-- Declare variables for cursor
DECLARE @id INT
DECLARE @fname NVARCHAR(50)

-- Declare cursor
DECLARE employee_cursor CURSOR FOR
SELECT id, fname FROM customers

-- Open the cursor
OPEN employee_cursor

-- Fetch the first row from the cursor into variables
FETCH NEXT FROM employee_cursor INTO @id, @fname

-- Loop through the cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Perform operations on each row
    PRINT 'Employee ID: ' + CAST(@id AS NVARCHAR(10)) + ', Employee Name: ' + @fname

    -- Fetch the next row from the cursor into variables
    FETCH NEXT FROM employee_cursor INTO @id, @fname
END

-- Close the cursor
CLOSE employee_cursor

-- Deallocate the cursor
DEALLOCATE employee_cursor
