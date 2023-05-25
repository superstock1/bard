<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Stock News</title>
</head>
<body>
  <h1>Stock News</h1>
  <form action="index.php" method="post">
    <input type="text" name="stock" placeholder="Stock">
    <input type="text" name="keyword" placeholder="Keyword">
    <input type="submit" value="Search">
  </form>
  <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      $stock = $_POST['stock'];
      $keyword = $_POST['keyword'];

      // Get news for the stock and keyword
      $url = 'https://www.82alda.co.kr/newsfeed?stock=' . $stock . '&keyword=' . $keyword;
      $response = file_get_contents($url);

      // Parse the JSON response
      $news = json_decode($response, true);

      // Loop through the news and print the title and link
      foreach ($news as $item) {
        echo '<a href="' . $item['link'] . '">' . $item['title'] . '</a><br>';
      }
    }
  ?>
</body>
</html>
