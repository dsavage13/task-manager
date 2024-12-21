

CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 1
);

INSERT INTO user(
    first_name,
    last_name,
    hobbies
)VALUES
(
    "John",
    "Doe",
    "Playing tennis and watching TV"
),
(
    "Jane",
    "Doe",
    "Playing cards and collecting trinkets"
),
(
    "Robert",
    "Martin",
    "Writing and reading books"
);

SELECT * FROM user;

SELECT * FROM user WHERE id=1;

UPDATE user SET
first_name = "Bob"
WHERE id = 3;

DELETE FROM user WHERE id=3;

SELECT last_name, first_name, hobbies FROM user;

-- Create a table for vehicle

CREATE TABLE IF NOT EXISTS vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR (45),
    make VARCHAR (45),
    model VARCHAR (60),
    is_done BOOLEAN DEFAULT 0
);

INSERT INTO vehicle( 
    type,
    make,
    model
)VALUES
(
    "Car",
    "Ford",
    "Escape"
),
(
    "Motorcycle",
    "Harley-Davidson",
    "Road King"
),
(
    "ATV",
    "Yamaha",
    "Grizzly"
);

SELECT * FROM vehicle;

UPDATE vehicle SET 
type = "Boat",
make = "Nitro",
model = "Nitro Z19"
WHERE id = 3;