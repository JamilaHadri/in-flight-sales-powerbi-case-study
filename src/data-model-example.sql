-- Sample SQL for Data Model
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    Route VARCHAR(50),
    FlightHours DECIMAL(4,2)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    FlightID INT,
    Revenue DECIMAL(10,2),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- Insert sample data
INSERT INTO Flights VALUES (1, 'Casablanca-Paris', 3.5);
INSERT INTO Sales VALUES (1, 1, 7500.00);
