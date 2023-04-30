<html>
    <head>
        <title>Employee Management System</title>
        <style>

            body{
                background-color: whitesmoke;
            } 
                
            input{
                width:40%;
                height:5%;
                border:1px;
                border-radius: 5px;
                margin:10px 0px 10px 0px;
                padding: 8px 15px 8px 15px;
                box-shadow: 1px 1px 2px 1px grey;
                color:black;
            }

            table ,th{
                
                text-align:center;
                color:black;
                border:1px solid;
                border-color:black;
                font-size:large;
                font-weight: bold;
            } 

            td{
                
                text-align:center;
                color:blue;
                border:1px solid;
                border-color:black;
                font-size:large;
            } 

        </style>

    </head>
    <body>
        <center>
            <h1> EMPLOYEE MANAGEMENT SYSTEM </h1>
            <form action ="" method="POST">
                <input type="text" name= "rtype" placeholder="Enter the postal code:"/><br>
                <input type="submit" name="search" value="Search">
            </form>

<?php
$connection = mysqli_connect("localhost","root","mysql");
$db=mysqli_select_db($connection,'employee');


if(isset($_POST['search']))
{
    $id = $_POST['rtype'];

    $query= "SELECT D.department_name, L.city, L.state_province
    FROM DEPARTMENTS AS D
    inner join LOCATIONS AS L 
    ON D.location_id = L.location_id where L.postal_code='$id'";


    $query_run = mysqli_query($connection, $query);{

    while($row =mysqli_fetch_array($query_run))
    {
        $department_name=$row['department_name'];
        $city = $row['city'];
        $state_province = $row['state_province'];

        ?>
            <br>
            <br>
            <br>
            <form action="" method="POST">
                <table>
                    <th>  Department Name  </th>
                    <th>  City  </th>
                    <th>  State  </th>

                    <tr>
                        <td><?php echo $row['department_name']; ?></td>
                        <td><?php echo $row['city']; ?></td>
                        <td><?php echo $row['state_province']; ?></td>     
                    </tr>
                </table>    
            </form>
        <?php

    }
    }
}
else
    echo "none";
?>
</center>
</body>
</html>

