<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>myworkscedule - Home</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    <style>
        main {
            padding: .5rem;
            text-align: center;
        }

        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap');
    </style>
</head>

<body>
    <div class="header">
        <nav>
            <ul class="navigation">
                <li><a href="index.jsp" style="text-decoration: none; color: white">Call A Manager</a></li>
                <li><a href="index.jsp" style="text-decoration: none; color: white"><span id="main_head">MyWorkSchedule</span></a></li>
                <li><a href="index.jsp" style="text-decoration: none; color: white">View Calendar</a></li>
            </ul>
            <h1 id="managercheck">Manager Log-in</h1>
        </nav>
    </div>
    <main>
        <h1 class="checkin">Employee Check-in</h1>
        <h1 class="checkout">Employee Check-out</h1>
    </main>
    <footer>Copyright &copy; AnotherRandomGuy 2021</footer>
</body>

</html>