## Section 2: Databases

This solution consist of a `Dockerfile` to set up the PostgreSQL database.
To run the Dockerfile: `docker build - < Dockerfile`

Other files:
- `create_table.sql`: consist of multiple sql queries to create the 2 tables (Car & Transaction) described in `er_diagram.png`
- `customer_spend.sql`: list of customers (name only) and their spending
- `manufacturer_sales.sql`: top 3 car manufacturers that customers bought by sales (quantity) and the sales number for it in the current month

Assumptions made:
- Quantity of car bought in a transaction is 1.

