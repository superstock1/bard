<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Stock News</title>
</head>
<body>
<h1>Stock News</h1>
<form action="/news" method="post">
<input type="text" name="symbol" placeholder="Enter a stock symbol">
<input type="text" name="keyword" placeholder="Enter a keyword">
<input type="submit" value="Search">
</form>
<div id="news"></div>
<script>
function getNews() {
  var symbol = document.querySelector('input[name="symbol"]').value;
  var keyword = document.querySelector('input[name="keyword"]').value;
  var xhr = new XMLHttpRequest();
  xhr.open('GET', '/news?symbol=' + symbol + '&keyword=' + keyword);
  xhr.onload = function() {
    if (xhr.status === 200) {
      var news = JSON.parse(xhr.responseText);
      for (var i = 0; i < news.length; i++) {
        var div = document.createElement('div');
        div.textContent = news[i].title + ' - ' + news[i].link;
        div.className = 'news-item';
        document.getElementById('news').appendChild(div);
      }
    } else {
      alert('An error occurred while fetching the news.');
    }
  };
  xhr.send();
}
</script>
</body>
</html>
