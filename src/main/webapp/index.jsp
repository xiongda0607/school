<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/19
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="js/jquery.min.js" ></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->
<link rel="stylesheet" href="css/amazeui.css" />
<link rel="stylesheet" href="css/core.css" />
<link rel="stylesheet" href="css/menu.css" />
<link rel="stylesheet" href="css/admin.css" />
<link rel="stylesheet" href="css/page/typography.css" />
<link rel="stylesheet" href="css/page/form.css" />
<link rel="stylesheet" href="css/component.css" />

<link href="css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
<script src="js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS -->
<script src="js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDIN JS -->
<script type="text/javascript" src="js/amazeui.min.js"></script>
<script type="text/javascript" src="js/blockUI.js" ></script>
<script>
        var url = 'ztreequery.do';　　　　　　　　　　//末尾的.json代表后台返回的数据是json格式的数据，但是也可以用dataType属性来定义

        $.ajax({
            cache: false,
            type: "post",
            url: url,
            dataType:"json",  //返回的数据类型[也可以在上面请求的地址后面直接加上".json"]
            success: function(data) {
                $.each(data,function(idx,item){
                    if(item.pid==0){
                        var ss="<li class=\"admin-parent\"><a class='am-cf' data-am-collapse='{target: \"#collapse-nav"+item.aid+"\"}'><i class='am-icon-birthday-cake' aria-hidden='true'></i>&nbsp;&nbsp;&nbsp;"+item.aname+"<span class='am-icon-angle-right am-fr am-margin-right'></span></a></li>";
                        var aa="<ul class='am-list am-collapse admin-sidebar-sub am-in' id=\"collapse-nav"+item.aid+"\"></ul>";
                        $("#ul").append(ss);
                        $("#ul").append(aa);
                    }
                });
                //根据父节点得到子节点的名字
                $.each(data,function(idx,item){
                    if(item.pid!=0){
                        var vv="<li class='a'><a href='#' sb='"+item.path+"' class=\"am-cf\">"+item.aname+"</span></a></li>";
                        $("#collapse-nav"+item.pid).append(vv);
                    }
                });
                    $(".a").click(function(){
                        var title=$(this).text();
                        var path=this.outerHTML;
                        var lash = path.lastIndexOf("sb=");
                        var path2=path.substring(lash+4);
                        var lash2 = path2.indexOf("\"");
                        var url=path2.substring(0,lash2);
                        var aatab=$("#tabs").children();//获取到所以的子节点
                        var f = true;
                        var g;
                        var aapanel=$("#panel").children();//获取所以面板
                        $.each(aapanel,function (i,panelobj) {
                            $(panelobj).removeClass("active");
                        })
                        $.each(aatab,function (i,tabobj) {
                            $(tabobj).removeClass("active");
                            var tabobjtext=$(tabobj).text();
                            if(tabobjtext==title){
                                f=false;
                                g=tabobj;
                            }
                        })
                        if(!f){
                            $(g).tab("show");
                            $("#"+title).addClass("active")
                            return;
                        }
                        var yy=" <li  role=\"presentation\" class=\"active\" ><a href=\"#"+title+"\" aria-controls=\""+title+"\" role=\"tab\" data-toggle=\"tab\"  aria-expanded='true'>"+title+"<span class=\"glyphicon glyphicon-remove tab_close\" aria-hidden=\"true\"></span></a></li>";
                        $("#tabs").append(yy);
                        var qq="<div role=\"tabpanel\" class=\"tab-pane active\" id=\""+title+"\">";
                        qq+="<iframe style=\"height: 100%;width: 100%\" src='"+url+"' ></iframe></div>"
                        $("#panel").append(qq)
                        //点击×按钮的时候就会关闭
                        $(".tab_close").click(function (){
                            var  parent=$(this).parent();//得到这个图标的父类 也就是tab
                            $(parent).parent().remove();
                            var href=parent.attr("href");
                            var tabcontent=$(href);
                            tabcontent.remove();
//                            parent.previousSibling()
                        })

                    });

            }
        });





</script>
            <body>


            <!-- BEGIN SECTION -->
            <!-- BEGIN HEADER -->
            <header class="header white-bg" >
                <h1>laowangshishabi</h1>
            </header>
            <section id="container">

                <!-- END HEADER -->


                <!-- BEGIN SIDEBAR 侧滑栏 -->
                <aside>

                    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas" >
                        <div class="am-offcanvas-bar admin-offcanvas-bar">
                            <ul class="am-list admin-sidebar-list" id="ul">
                                <li><a href="index.html"><span class="am-icon-home"></span>&nbsp;&nbsp;&nbsp;导航栏</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>

                 <%--center--%>
                    <div class="admin-content" id="center" >
                        <%--tab--%>
                        <div id="tab" style="height: 45px;background-color:#bad7df ;">
                            <ul class="nav nav-pills" id="tabs" role="tablist">
                                <%--<li class="active"><a href="#identifier" data-toggle="tab">首页</a></li>--%>
                                    <li id="tabli" role="presentation" class="active"><a  href="#home" aria-controls="home" role="tab" data-toggle="tab">首页</a></li>
                            </ul>

                        </div>
                  <%--面板--%>
                        <div id="panel" class="tab-content"  style="height: 100%;background-color:#b2ee7a ;">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <iframe  style="height: 100%;width: 100%" src="security.jsp"></iframe>
                            </div>
                        </div>
                    </div>
            </section>


            </body>
            <script>


            </script>

            </html>