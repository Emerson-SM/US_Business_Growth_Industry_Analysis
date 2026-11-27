--crear tabla de datos
CREATE TABLE companies (
    id INTEGER PRIMARY KEY,
    rank INTEGER,
    workers NUMERIC,
    company VARCHAR(255),
    url TEXT,
    state_l VARCHAR(100),
    state_s VARCHAR(10),
    city VARCHAR(100),
    metro VARCHAR(150),
    growth NUMERIC,
    revenue NUMERIC,
    industry VARCHAR(150),
    yrs_on_list INTEGER
);