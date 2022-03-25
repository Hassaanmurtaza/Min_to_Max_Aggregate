# Min to Max custom aggregate function for Postgres

the function can handle multiple datatypes like float/integer/varchar etc

# Usage

place all 3 extension files under the installation path of postgres extensions

Create extension using 

>  CREATE EXTENSION min_to_max

Use the function by passing column name as the function parameter 
example:

>  select min_to_max(column_name) from table;
