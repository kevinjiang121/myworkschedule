<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>myworkscedule - Home</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/myworkschedule.css" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap');

        main {
            padding: .5rem;
            text-align: center;
        }

    </style>
</head>

<body>
    <div class="header">
        <nav>
            <ul class="navigation">
                <li><a href="index.jsp" style="text-decoration: none; color: white"><span id="main_head">MyWorkSchedule</span></a></li>
                <li><a href="callManager.jsp" style="text-decoration: none; color: white">Call A Manager</a></li>
                <li><a href="viewShifts.jsp" style="text-decoration: none; color: white">View Shifts</a></li>
            </ul>
            <a href="managerLogin.jsp" id="managercheck"><h1>Manager Log-in</h1></a>
        </nav>
    </div>
    <main>
        <div id="check">
            <h1 class="checkin">Employee <br>Check-in</h1>
            <h1 class="checkout">Employee <br>Check-out</h1>
        </div>
        <div id="clock" onload="est()">Time</div>
        <script>

        </script>
    </main>
    <footer>Copyright &copy; AnotherRandomGuy 2021</footer>
</body>

</html>

<script>
    function est() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        minutes = checkTime(minutes);
        if(hours>12) {
            hours = hours-12;
            document.getElementById('clock').innerHTML = hours + ":" + minutes + " PM";
        } else {
            document.getElementById('clock').innerHTML = hours + ":" + minutes + " AM";
        }
        setInterval(est, 500);
    }

    function checkTime(t) {
        if(t<10) {
            t="0"+t;
        }
        return t;
    }

    est();
</script>