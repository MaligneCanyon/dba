CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6,2) NOT NULL DEFAULT 0.00,
  memo text NOT NULL,
  created_on text DEFAULT CURRENT_DATE
);

