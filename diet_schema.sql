CREATE TABLE food_log (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    log_date DATE NOT NULL,
    meal TEXT NOT NULL,
    item TEXT NOT NULL,
    quantity TEXT,
    calories INTEGER,
    notes TEXT
);