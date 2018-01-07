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
    <script type="text/javascript" src="js/bootstrap-table.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.js" ></script>
    <script type="text/javascript" src="js/bootstrap-table-zh-CN.js" ></script>
    <script type="text/javascript" src="js/departments.js" ></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js" ></script>

    <script>
    var url;
        function add() {
            $('#addUserModal').modal('show');
            $('#addUserModal').on('hide.bs.modal', function () {
            });
            url="insertsecu.do";
        }

//        修改
        function editUser(){
            var rows = $("#tb_departments").bootstrapTable('getSelections');
            console.log(rows);
            if (rows){
                $('#addUserModal').modal('show');
                $('#addUserModal').on('hide.bs.modal', function () {
                });
                $('#fo').form('load',rows[0]);
                url="updatesecu.do?securityid="+rows[0].securityid;
            }
        }
        //点击提交时
        $(function () {
            $("#submit").click(function(){
                var data=$('#fo').serialize();
                console.log(data);
                $.ajax({
                    url:url,
                    data:data,
                    dataType:'JSON',
                    method:'get',
                    success:function (data) {
                        $('#addUserModal').modal('hide');
                        $('#tb_departments').bootstrapTable('refresh');
    //                                $('input，textarea').value('');
    //                                $("#exampleModal").removeData("data");
    //                    clearForm($('#fm'));
                    }
                })
            });
        })
//删除
        function deleteUserList() {
            //获取所有被选中的记录
            var rows = $("#tb_departments").bootstrapTable('getSelections');
            if (rows.length== 0) {
                alert("请先选择要删除的记录!");
                return;
            }
            var ids = '';
            ids = rows[0].securityid;
            console.log(ids);
            deleteUser(ids);
        }
        function deleteUser(ids) {
            var msg = "您真的确定要删除吗？";
            if (confirm(msg) == true) {
                $.ajax({
                    url: "delsecu.do?securityid="+ids,
                    type: "post",
                    success: function (data) {
                        $("#tb_departments").bootstrapTable('refresh');
                    }
                });
            }
        }

    </script>

    <body>


    <div class="panel-body" style="padding-bottom:0px;">


        <div id="toolbar" class="btn-group">
            <button id="btn_add" type="button" class="btn btn-primary btn-lg" data-toggle="modal" onclick="add()">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
            <button id="btn_edit" type="button" class="btn btn-primary btn-lg" onclick="editUser();">
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
            </button>
            <button id="btn_delete" type="button" class="btn btn-primary btn-lg"  onclick="deleteUserList();">
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
            </button>

                <label class=" col-sm-1">名称</label>
                <div class="col-sm-2 " style="margin-left: -30px" >
                    <input type="text" class="form-control" placeholder="aa" >
                </div>
                <label class=" col-sm-1">名称</label>
                <div class="col-sm-2" style="margin-left: -30px" >
                    <input type="text" class="form-control" >
                </div>
                <div class="col-sm-2" style="margin-left: -30px" >
                    <button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
                </div>


        </div>




        <table id="tb_departments">
        </table>



    </div>
    <!-- 模态框示例（Modal） -->
        <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            用户信息
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form" id="fo">

                            <div class="form-group">
                                <label for="user_name" class="col-sm-3 control-label">姓名</label>
                                <div class="col-sm-9">
                                <input type="text" class="form-control" name="securityname" value="" id="user_name">
                            </div>
                            </div>
                            <div class="form-group">
                                <label for="address" class="col-sm-3 control-label">性别</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securitysex" value="" id="address">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="address" class="col-sm-3 control-label">年龄</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securityage" value="" id="age">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="address" class="col-sm-3 control-label">联系电话</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="securityphone" value="" id="phone">
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
