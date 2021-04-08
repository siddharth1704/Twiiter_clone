<html>
<body>
   User Login at
   <div id="time">

   </div>
   <br>
   <br>
   <marquee>made with love by Siddharth</marquee>
   <script type="text/javascript">
    function updateTime(){
     document.getElementById("time").innerText =new Date().toString();

    }
    setInterval(updateTime,1000)
   </script>
</body>
</html>