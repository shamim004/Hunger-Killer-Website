<?php
header("Content-type: text/css");
?>
<style>
        @import url('https://fonts.googleapis.com/css?family=Titillium+Web');

        *{
            font-family: 'Titillium Web', sans-serif;
        }
        body  {
            background-image: url("burger king.jpg");
            width: 100%;
            background-color: #cccccc;
        }
        .navbar {
            overflow: hidden; 
            background-color: black; 
        }
        .navbar a {
            float: left; 
            display: block; 
            color: white; 
            text-align: center; 
            width:18.33%; /* Add some padding */
            padding: 12px 15px;
            text-decoration: none; 

        }
        .navbar a:hover {
            background-color: #ddd; /* Grey background color */
            color: gray; /* Black text color */
        }

        .product{
            border: 1px solid #eaeaec;
            margin: -1px 19px 3px -1px;
            padding: 10px;
            text-align: center;
            background-color: #efefef;
        }
        table, th, tr{
            text-align: center;
            background-color: gray;
        }

        .title2{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 2%;
        }
        h2{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 2%;
        }
        table th{
            background-color: #efefef;
        }
        .getFoodBtnWrap:last-child{ 
            text-align: center;
            padding: 10px 20px 20px;
            border-width: 0 1px 1px;
            border-radius: 0 0 4px 4px;
        }
        b{
            color: blue; 
        }
    </style>