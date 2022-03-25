# Min to Max custom aggregate function for Postgres

The custom aggregate function can filter the minimum and maximum values from a table
the function can handle multiple datatypes like float/integer/varchar etc

# Usage

place all 3 extension files under the installation path of postgres extensions folder

Install extension using 

>  CREATE EXTENSION min_to_max

Use the function by passing column name as the function parameter 
example:

>  select min_to_max(column_name) from table;
