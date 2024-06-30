# stacksofwax
![image](https://github.com/farhadpa/stacksofwax/assets/70092001/46d587b4-62cc-4ff5-b1f5-e454a0a987a4)
Instructions to run the system:  
1. Unzip the folder fpanahi01 on your local drive.  
- ### Create the database:  
2. Create a new database using your local phpMyAdmin and name it stacksofwax  
3. Make sure that the new database, that you created now, is selected.  
4. Select the import tab.
5. Press choose file button and select the 40387376.sql file.  
6. Press Go. The database should be populated with 9 tables.  
- ### API:  
7. Open the API folder in Visual studio code.  
8. Install the dependencies with this command: npm install  
9. The port used to connect to the database is 3306 in the API .env file. If your database is running
on a different port, please modify the DB_PORT value in the .env file accordingly.  
10. The API server is configured to use port 4000. If this port is not open in your machine or you want
to run it on a different port, please modify the PORT value in the API .env file accordingly.  
Important: if you change the API to use a different PORT, the relevant configuration in the WebAPP
configs in the .env file inside the WebApp directory will need to be changed. ENDPOINT_ADDRESS
value should change to point to the new port.  
11. Run the API sever with this command: node server.js  
- ### WebApp:  
12. Open the WebApp folder in a new visual studio code window.
13. Install the dependencies with this command: npm install
14. The WebApp server is configured to use port 3000. If this port is not open in your machine or you
want to run it on a different port, please modify the PORT value in the WebApp .env file
accordingly.  
15. If you have changed the API port configs, please modify ENDPOINT_ADDRESS value in the
WebApp .env file to point to that address. If you have not touched default settings in the API
skip this step.  
16. Run the WebApp server with this command: node app.js  
17. Visit the website on your localhost and the port the WebApp is listening on. If you have not
changed default port settings it will be localhost:3000  

Registered users can create their own collections which other users can view. Member users can
add Vinyl to their profiles. They also can manage their collections later and add or remove vinyl to
and from a collection or completely delete the collection as well as Vinyl. Registered users can like
other users’ collections. They cannot like their own collections. They also can Review
collections on the website including their own collections which enables them to discuss their
collections with other members of the website. 

Each registered user can create as many collections as they want, and each collection can have zero
or many records of vinyl. The system is defined to assign Genres to Vinyl. So basically, a vinyl can
have one or more tracks/songs which can belong to the same or different artists and be from
different genres in their nature. So, vinyls can have multiple genres. 

The system also features an advanced search capability that allows users to search the website and
get comprehensive information and results that correspond to their searches including collections
and their vinyls, vinyls and the collections they belong to, songs, genres, etc. 

StacksOfWax is an intuitive and user-friendly platform that offers a community-based approach to
vinyl music collections and provides sharing experience for all vinyl records enthusiasts. 
