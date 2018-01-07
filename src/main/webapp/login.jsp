<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/19
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>

<style>
    .admin_login{width:800px;height:auto;margin:10% auto 0 auto;padding:40px;background: red;}
</style>
<script>
    $(".submita").click(function(){
        location.href="/callery.jsp"
    })
</script>
<body>

<div class="admin_login" >
    <form class="form-horizontal">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label"  >用户名：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="name" placeholder="请输入用户名"  />
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">密码：</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="password" placeholder="请输入密码"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-8">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">记住密码
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-6 col-sm-10">
                <button type="submit" class="btn btn-default " id="submita">登陆</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
