<?php
header('Content-Type: application/json');
header('*');
$servername = "127.0.0.1:3306";
$username = "root";
$password = "";
$dbname = "meal_planner";


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sqlRegular = "SELECT name, composition, protein, fat, carbohydrates, meal_type FROM meals WHERE type = 'Regular'";
$sqlDiet = "SELECT name, composition, protein, fat, carbohydrates, meal_type FROM meals WHERE type = 'Diet'";
$result = $conn->query($sqlRegular);

if ($result->num_rows > 0) {
  $data = array();

  while ($row = $result->fetch_assoc()) {
    $data[] = array(
      'name' => $row['name'],
      'composition' => $row['composition'],
      'protein' => $row['protein'],
      'fat' => $row['fat'],
      'carbohydrates' => $row['carbohydrates'],
      'meal_type' => $row['meal_type']

    );
  }

  echo json_encode($data);
} else {
  echo "0 results";
}

$conn->close();
