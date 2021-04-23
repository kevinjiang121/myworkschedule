<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>myworkscedule - Home</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}$/css/myworkschedule.css" />
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
    <div class = "login">
        <h1>Manager Login</h1>
        <form action id="login">
            <label for="e-mail"><b>Email</b></label><br>
            <input type="text" name="email" placeholder="Email..." id="e-mail" required>
            <br><br>
            <label for="passd" ><b>Password</b></label><br>
            <input type="password" name="password" placeholder="Password..." id="passd" required>
            <br><br>
            <button type="submit" id="create" onClick = "funcCaller()" value="Submit">Login</button>
        </form>
    </div>
</main>
<footer>Copyright &copy; AnotherRandomGuy 2021</footer>
</body>

</html>