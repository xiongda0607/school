$(function(){
    //获取左侧菜单
    var url = 'ztreequery.do';　　　　　　　　　　//末尾的.json代表后台返回的数据是json格式的数据，但是也可以用dataType属性来定义
    $.ajax({
        cache: false,
        type: "post",
        url: url,
        dataType:"json",  //返回的数据类型[也可以在上面请求的地址后面直接加上".json"]
        success: function(data) {
            console.log(data);
            $.each(data,function(idx,item){
                if(item.pid==0){
                    var ss="<li class=\"admin-parent\"><a class='am-cf' data-am-collapse='{target: \"#collapse-nav"+item.aid+"\"}'><i class='am-icon-line-chart' aria-hidden='true'></i>\"+item.aname+\"<span class='am-icon-angle-right am-fr am-margin-right'></span></a></li>";
                    $("#ul").append(ss);
                }
            });
            $.each(data,function(idx,item){
                if(item.pid!=0){
                    var aa="<li><a href='"+item.path+"'>"+item.aname+"</a></li>";
                    $("#li_"+item.pid).append(aa);
                }
            });
        }
    //     <li class="admin-parent">
    //
    // <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
    //     <li><a href="html/chart_line.html" class="am-cf"> 折线图</span></a></li>
    // <li><a href="html/chart_columnar.html" class="am-cf"> 柱状图</span></a></li>
    // <li><a href="html/chart_pie.html" class="am-cf"> 饼状图</span></a></li>
    // </ul>
    // </li>
    });
});