This is a proof of concept (PoC) for the automatically generated Lexical Recognition Tests (LRTs).

To setup and lunch the LRTs PoC, kindly follow these steps:

1- Install the XAMPP web server, version 7.2.3.

2- Make sure that you are staring the 'MySQL Database' service (from the 'Manage Servers' tab) - see the 'Manage Servers' image. Then create a new database, and give it the name 'LRTs_Apps'. This can be done from the web interface of 'phpmyadmin', simply paste the following url inside web address of your internet explorer:

http://localhost/phpmyadmin/

Click on the New database icon, type the LRTs_Apps as a database name, and select 'utf8_general_ci' as Collation from the list.
Click on create button.

3- To create the database tables and initiate the the apps, execute all the SQL scripts that exists inside 'PoC-LRTs.sql' file.

4- To host the PoC apps at your local machine, paste the 'lrts' folder inside the XAMPP/htdocs

5- To view the PoC for LRTs, kindly make sure that you are starting the 'Apache Web Server'. Then paste the following url inside web address of your your internet explorer:

http://localhost/lrts/