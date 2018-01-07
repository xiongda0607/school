    <%--
      Created by IntelliJ IDEA.
      User: Administrator
      Date: 2017/12/20
      Time: 15:49
      To change this template use File | Settings | File Templates.
    --%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <title>Title</title>
    </head>
    <link rel="stylesheet" href="css/bootstrap-table.css" />
    <link rel="stylesheet" href="css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/auth.js" ></script>
    <script type="text/javascript" src="js/bootstrap-table.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap-table-zh-CN.js" ></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js" ></script>

        <script>


        </script>



    <body>


        <div id="toolbar" class="btn-group">

            <button id="btn_add" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addAuth" >
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
            <button id="btn_edit" type="button" class="btn btn-primary btn-lg" >
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
            </button>
            <button id="btn_delete" type="button" class="btn btn-primary btn-lg"  >
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
            </button>
        </div>
        <table id="tb_auth">
        </table>



    </div>
    <!-- 模态框示例（Modal） -->
        <div class="modal fade" id="addAuth" tabindex="-1" role="dialog" >
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title" id="myModalLabel">
                            信息
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form" id="fo">

                            <div class="form-group">
                                <label for="authname" class="col-sm-3 control-label">模块</label>
                                <div class="col-sm-9">
                                <input type="text" class="form-control" name="securityname" value="" id="authname">
                            </div>
                            </div>
                            <div class="form-group">
                                <label for="pid" class="col-sm-3 control-label">父节点</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securitysex" value="" id="pid">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="amark" class="col-sm-3 control-label">备注</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securityage" value="" id="amark">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="path" class="col-sm-3 control-label">路径</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securityphone" value="" id="path">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="bottonauth" class="col-sm-3 control-label">控制按钮</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securityphone" value="" id="bottonauth">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                        </button>
                        <button type="submit" class="btn btn-primary" id="submit">
                            提交
                        </button><span id="tip"> </span>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>

    </body>
    </html>
