# README

Ruby on rails site that loads CSV data about work orders, technicians, and locations into a database and displays them in an HTML table. 

Using postgresql instead of sqlite3. 

Ruby version = 2.7.1

Rails version = 6.1.3

postgresql version = 1.1

Puma version = 5.0

rake tasks are "rake create_location", "rake create_technician",and "rake create_workorder".


Idea:
Load the CSV data into postgres tables. 
Work orders belong to both technicians and locations. 
First row of the table is filled with the names of each technician once.
Index page iterates for each hour included in the data set (6 - 15) and creates the time column first.
Loops through work orders to find who has an appointment in that iterations time slot. 
Series of conditionals then goes through each technician. 
If they have an appointment at the time then that information is taken from the database and stored in the table. 
If they do not have an appointment then the previous job and the next job is found and the difference is calculated and stored in an alert onclick. 

Ways to improve:
There is a fair amount of basically repeated code as I was having a hard time figuring out where to put helper functions.
It is not extendable in it's current state, would need to make a more generalized helper function to check for an appointment, store the appointment details, and calculate time difference between jobs. 
