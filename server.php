<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

if (isset($_POST['mealCount']) && isset($_POST['choseMenu']) && isset($_POST['excludedProducts'])) {
    $mealCount = $_POST['mealCount'];
    $choseMenu = $_POST['choseMenu'];
    $excludeWords1 = $_POST['excludedProducts'];
    $excludeWords = json_decode($excludeWords1, true);

    require_once "db.php";
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT name, composition, protein, fat, carbohydrates, meal_type FROM meals WHERE type = '$choseMenu'";

    if ($mealCount == 3) {
        $sql .= " AND (meal_type = 'breakfast' OR meal_type = 'lunch' OR meal_type = 'dinner')";
    } elseif ($mealCount == 4) {
        $sql .= " AND (meal_type = 'breakfast' OR meal_type = 'lunch' OR meal_type = 'dinner' OR meal_type = 'snack')";
    }
    //тут для каждого слова из массива с искл
    foreach ($excludeWords as $word) {
        $sql .= " AND composition NOT LIKE '%" . $conn->real_escape_string($word) . "%'";
    }

    $result = $conn->query($sql);

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
        echo json_encode(array('message' => 'Нет подходящих вариантов'));
    }

    $conn->close();
} else {
    echo json_encode(array('message' => 'Переменные получаемые не определены'));
}
?>
