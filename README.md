# chat_app


<img align="center" alt="coding"  height="300" width="300" src="https://user-images.githubusercontent.com/71622834/159755297-3f8e4bf1-c33b-4ede-bb60-e312f62ab06f.png">
 
 This application built using Node.js, Express, Socket.io, Mongoose, RESTful Web Service.

# Features
  <li>Uses Express as the application Framework.</li> 
  <li>Real-time communication between a client and a server using Socket.io.</li>
  <li>Uses MongoDB, Mongoose  for storing messages and querying data.</li>
  <li>Uses RESTful Web Service for serve different platforms</li> 
   
# Installation

### Running Locally

Make sure you have Node.js and npm install.

  1. Clone or Download the repository 
    <pre>git clone https://github.com/batuhaniskr/real-time-chat-application.git
    $ cd Real-Time-Chat-Application</pre>
  2. Install Dependencies
      <pre>npm install</pre>
  3. MongoDB start for need <pre>mongod</pre>command  from a different terminal.
  
  4. Start the Application
     <pre>node app.js</pre>
  Application runs from localhost:3000.
      
## How It Works

  A database called "chat_db" named is created via code. 
  The nickname, msg, group information is also kept in the table named Messages.
    
  User to user, As a publication broadcast or group in the room  messaging.
  User to user messaging:
   <pre> /w username messagetext</pre> the message is sent as.
      
 ## Sockets
    
   Having an active connection opened between the client and the server so client can send and receive data. This allows             real-time communication using TCP sockets. This is made possible by Socket.io.

   The client starts by connecting to the server through a socket(maybe also assigned to a specific namespace). Once connections is successful, client and server can emit and listen to events. 

## RESTful

  Using HTTP requests, we can use the respective action to trigger every of these four CRUD operations.    
    <li>POST is used to send data to a server — Create</li>
    <li>GET is used to fetch data from a server — Read</li>
    <li>PUT is used to send and update data — Update</li>
    <li>DELETE is used to delete data — Delete  </li>
    
  
  


