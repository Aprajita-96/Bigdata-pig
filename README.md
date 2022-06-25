# Bigdata-pig

Problems below:


PROBLEM 1
Select frequent words (whose count is equal or greater than 49,500).
Display the frequent words in descending order.

PROBLEM 2
Get groups of words by their length (Hint: use the built-in function SIZE) and count each group.
For example, (2,1096049) means that there are 1096049 occurrence of words that have two
characters.
Select frequent groups (count in the group is equal or greater than 495,000).
Display the frequent groups in descending order.


Problem 3 is based on dataset nyc_taxi_data_2014.csv.gz
PROBLEM 3
a) Create a new data set called nyc that contains passenger_count, fare_amount, tip_rate
(tip_amount/total_amount).
b) Get all the rows of nyc such that passenger_count is greater than 1 and less than 10 and
name the data set as nyctaxi.
c) Group nyctaxi by passenger_count.
d) Display the average fare_amount and average tip_rate within each group of
passenger_count.
