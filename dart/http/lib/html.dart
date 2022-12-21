String htmlHomeRoute() {
  return '''
  <html>
    <body>
      
      <h1>Hello, World!</h1>

      <a href="/html">Go to /html</a>
      
      <br />
      
      <a href="/json">Go to /json</a>
      
      <script>

      let count = 0;
      let timeToChangeColor = 3000; // 3 seconds (milliseconds)
      let timeToStop = 30000; // 30 seconds (milliseconds)

      // while the count is less than 10, change the color every 3 seconds
      while (count < 10) {
         // change the h1 tag color to random 
         setInterval(() => {
           document.querySelector('h1').style.color = '#' + Math.floor(Math.random()*16777215).toString(16);
         }, timeToChangeColor);
        count++;
        }

        // after it hits 10 times, make an alert and stop the loop
        setTimeout(() => {
          alert('Hello World!');
        }, timeToStop);        
      
      </script>
    </body>
  </html>
  ''';
}

String htmlHTMLRoute() {
  return '''
  <html>
    <body>
      <h1>Hello, /html!</h1>
    </body>
  </html>
  ''';
}
