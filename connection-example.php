<!doctype html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>Bowling</title>
    <link rel="stylesheet" href="/css/main.css">
  </head>

  <body>
    <h1>Test for bowling</h1>
<!--    connect to database and display the first and last name-->
    <?php
      
    include('config.php');
    $connect = mysqli_connect(SERVER, USER, PW, DB);
    
    if (!$connect) 
    {
        exit("Cannot connect to database");
    }
    
    $query = "SELECT first_name, last_name from bowlers ORDER BY last_name ASC";
    $result = mysqli_query($connect, $query);  
      
    if (!$result)
    {
        exit("<p>Could not successfully run query, $query</p>");
    }
    
    if (mysqli_num_rows($result) == 0)
    {
        echo "<p>No records returned</p>";    
    }  
    else 
    {
        echo "<p><h1>Bowlers</h1></p>";
        
        while($row = mysqli_fetch_assoc($result))
        {
            echo "<p>{$row['first_name']} {$row['last_name']}</p>";
        }
    }  
//    echo "<p>Connected to the database</p>";
    mysqli_close($connect);
    ?>
    
    
  </body>

</html>