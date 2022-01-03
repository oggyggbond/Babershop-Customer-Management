  // Load google charts
  google.charts.load('current', { 'packages': ['corechart'] });
  google.charts.setOnLoadCallback(drawChart);

  // Draw the chart and set the chart values
  function drawChart() {
      var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['January', 8],   // chèn giá trị doanh thu theo tháng
          ['February', 2],
          ['March', 4],
          ['April', 2],
          ['May', 0],
          ['June', 0],
          ['July', 0],
          ['August', 0],
          ['September', 0],
          ['October', 0],
          ['November', 0],
          ['December', 0]
      ]);

      // Optional; add a title and set the width and height of the chart
      var options = { 'title': 'Revenue by month of the year 2021', 'width': 1000, 'height': 600 };

      // Display the chart inside the <div> element with id="piechart"
      var chart = new google.visualization.PieChart(document.getElementById('piechart'));
      chart.draw(data, options);
  }