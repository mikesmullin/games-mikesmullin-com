<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>Mike's Game Portal</title>
    <link rel="stylesheet" href="stylesheets/global.css">
  </head>
  <body>
    <nav>
      <ul class="left">
        <li><a href="index.html">Games</a></li>
      </ul>
      <ul class="right">
        <li><a href="register">Register</a></li>
        <li><a href="login">Login</a></li>
      </ul>
      <div class="clear"></div>
    </nav>
    <article>
      <h2>Please Login</h2>
      <form method="post" action="http://games-api.mikesmullin.com:3001/login">
        <div>
          <label>Username</label>
        </div>
        <div>
          <input type="text" name="user">
        </div><br>
        <div>
          <label>Password</label>
        </div>
        <div>
          <input type="password" name="pass">
        </div><br>
        <div>
          <input type="submit">
        </div>
      </form>
    </article>
    <script src="behaviors/global.js"></script>
  </body>
</html>