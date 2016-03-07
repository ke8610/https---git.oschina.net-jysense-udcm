<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html style="height: 100%;">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Title and other stuffs -->
  <title>用户数据采集及挖掘分析系统</title>
  
<link rel="stylesheet" href="<%=basePath %>resources/docs/css/bootstrap-3.3.2.min.css" type="text/css">
<script type="text/javascript" src="<%=basePath %>resources/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>resources/docs/js/bootstrap-3.3.2.min.js"></script>
<script type="text/javascript" src="<%=basePath %>resources/docs/js/prettify.js"></script>
<link rel="stylesheet" href="<%=basePath %>resources/dist/css/bootstrap-multiselect.css" type="text/css">
<script type="text/javascript" src="<%=basePath %>resources/dist/js/bootstrap-multiselect.js"></script>
  
	<link href="<%=basePath %>resources/img/favicon.ico" rel="icon" type="image/x-icon">
  <!-- Stylesheets -->
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/font-awesome.css"> 
  <!-- jQuery UI -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/jquery-ui.css"> 
  <!-- Calendar -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/fullcalendar.css">
  <!-- prettyPhoto -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/prettyPhoto.css">  
  <!-- Star rating -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/rateit.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/bootstrap-datetimepicker.min.css">
  <!-- CLEditor -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/jquery.cleditor.css"> 
  <!-- Bootstrap toggle -->
  <link rel="stylesheet" href="<%=basePath %>resources/css/style/bootstrap-switch.css">
  <!-- Main stylesheet -->
  <link href="<%=basePath %>resources/css/style.css" rel="stylesheet">
  <!-- Widgets stylesheet -->
  <link href="<%=basePath %>resources/css/style/widgets.css" rel="stylesheet">   
  <link href="<%=basePath %>resources/css/style/index.css" rel="stylesheet">  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="<%=basePath %>resources/js/html5shim.js"></script>
  <![endif]-->
<link href="<%=basePath %>resources/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>resources/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>resources/easyui/jquery.easyui.min.js" type="text/javascript"></script>
  <!-- Favicon -->
  <link rel="shortcut icon" href="<%=basePath %>resources/img/favicon/favicon.png">
 
</head>

<body style="height: 100%;">

<!-- Header starts -->
  <header>
  	<div id="headInfo" class="ericsson_colorline"></div>
    <div class="container">
      <div class="row">
        <!-- Logo section -->
        <div class="logo_div">
          <div class="logo">
            <h1><a href="#"><span>用户数据采集及挖掘分析系统</span></a></h1>
          </div>
          <!-- Logo ends -->
        </div>
        <div class="user_div">
	        <ul class="nav navbar-nav pull-right">
		          <li class="dropdown pull-right user-ul">            
		            <a data-toggle="dropdown" class="dropdown-toggle" style="line-height: 46px;" href="#">
		              <i class="icon-user"></i> <%= request.getParameter("username") %> <b class="caret"></b>              
		            </a>
		            <ul class="dropdown-menu">
		              <li><a href="#"><i class="icon-cogs"></i> 设置</a></li>
		              <li><a href="<%=basePath %>index.jsp"><i class="icon-off"></i> 退出</a></li>
		            </ul>
		          </li>
		        </ul>
	        </div>
      </div>
    </div>
  </header>
<!-- Header ends -->
<!-- Main content starts -->
<div class="content">

  	<!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">导航</a></div>

        <!--- Sidebar navigation -->
        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
        <ul id="nav">
          <!-- Main menu with font awesome icon -->
          <li><a href="#" onclick="showSelf('matter')" class="open" ><i class="icon-home"></i> 首页</a>
            <!-- Sub menu markup 
            <ul>
              <li><a href="#">Submenu #1</a></li>sv
              <li><a href="#">Submenu #2</a></li>
              <li><a href="#">Submenu #3</a></li>
            </ul>-->
          </li>
          <li class="has_sub"><a href="#"><i class="icon-list-alt"></i>业务查询  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
              <li><a href="#" onclick="showSelf('matter_sel')">基本业务查询</a></li>
              <li><a href="#" onclick="showSelf('matter_overflow')">漫出用户统计</a></li>
              <li><a href="#" onclick="showSelf('matter_Dsel')">日常统计查询</a></li>
            </ul>
          </li>  
          <li class="has_sub"><a href="#" onclick="showSelf('matter_user');"><i class="icon-bar-chart"></i>用户管理</a>
          </li> 
          <li><a href="#" ><i class="icon-table"></i>系统设置<span class="pull-right"><i class="icon-chevron-right"></i></span></a>
          	<ul>
              <li><a href="#" onclick="showSelf('matter_setting')">筛选条件</a></li>
              <li><a href="#" onclick="showSelf('matter_pwd')">RID-地市对应关系</a></li>
              <li><a href="#" onclick="showSelf('matter_add')">vlraddr-地市对应关系</a></li>
            </ul>
          </li>
        </ul>
    </div>

    <!-- Sidebar ends -->

  	  	<!-- Main bar -->
  	<div class="mainbar">
      
	    <!-- Page heading -->
	    <div class="page-head">
	      <h2 class="pull-left" id="sort_left"><i class="icon-home"></i> 首页</h2>

        <!-- Breadcrumb -->
        <div class="bread-crumb pull-right">
          <a href="<%=basePath %>user/login"><i class="icon-home"></i> 首页</a> 
          <!-- Divider -->
          <span class="divider">/</span> 
          <a href="#" class="bread-current" id="sort_right">控制台</a>
        </div>

        <div class="clearfix"></div>

	    </div>
	    <!-- Page heading ends -->

	    <!-- Matter -->
	    
	    
	    <!-- 首页图表 -->
	    <div class="matter" style="display: ;" id="matter" value = "首页">
	    	<div class="chart_area">
						<!--<div class="chart_title">4G用户活跃区</div>-->
						<div class="chart_main" id="active_area"></div>
					</div>
					<div class="chart_area">
						<!--<div class="chart_title">4G用户数</div>-->
						<div class="chart_main" id="user_number"></div>
					</div>
					<div class="chart_area">
						<!--<div class="chart_title">4G终端类型</div>-->
						<div class="chart_main" id="terminal_type"></div>
					</div>
					<div class="chart_area">
						<!--<div class="chart_title">业务分布</div>-->
						<div class="chart_main" id="business_area"></div>
					</div>
		  </div>
	    
	    <!-- 漫出用户统计div -->
	    
	    	<%@include file="overflow_sel.jsp" %>
	    
	    <!-- 日常统计查询div -->
	    <%@include file="daily_sel.jsp" %>
	    <!-- vlraddr-地市对应关系div -->
	    <div class="matter" id="matter_add" style="height: 300px;display: none;" value = "vlraddr-地市对应关系">
	    	<div class="container">
                <div class="widget">
                <div class="widget-head">
                 <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="newuser('table')"
            plain="true">Add</a>
                </div>

                  <div class="widget-content" style="height: 350px;line-height:100px;overflow:auto;overflow-x:hidden;">
                  	<table class="table table-striped table-bordered table-hover" id="table">
                      <tbody>
                      	<tr>
                      	<th>#</th>
                          <th>Name</th>
                          <th>Location</th>
                          <th>Date</th>
                          <th>Type</th>
                          <th>Control</th>
                        </tr>
                        <tr>
                          <td>5</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                          <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table,this)">删除</a>
                          </td>
                        </tr>                                                            

                      </tbody>
                    </table>
                  </div>
                  
                  <div class="widget-foot">

                        <ul class="pagination pull-right">
                          <li><a href="#">Prev</a></li>
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">4</a></li>
                          <li><a href="#">Next</a></li>
                        </ul>
                     
                      <div class="clearfix"></div> 

                    </div>
                  
                </div>

              </div>
	    </div>
	    
	    <!-- 查看所有用户div -->
	    
	    <%@include file="user.jsp" %>
	    
	    <!-- 筛选条件div -->
	    <%@include file="filter_sel.jsp" %>
	    
	    <!-- RID-地市对应关系div -->
	    <div class="matter" id="matter_pwd" value = "RID-地市对应关系" style="height: 300px;display: none;">
	    	<div class="container">

                <div class="widget">

                <div class="widget-head">
                  <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="newuser('table_v2')"
            plain="true">Add</a>
                </div>

                  <div class="widget-content" style="height: 350px;line-height:100px;overflow:auto;overflow-x:hidden;">

                    <table class="table table-striped table-bordered table-hover" id="table_v2">
                      <tbody>
                      	<tr>
                          <th>#</th>
                          <th>Name</th>
                          <th>Location</th>
                          <th>Date</th>
                          <th>Type</th>
                          <th>Control</th>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                           <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v2,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v2,this)">删除</a>
                          </td>
                        </tr> 
                        <tr>
                          <td>4</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                           <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v2,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v2,this)">删除</a>
                          </td>
                        </tr> 
                        <tr>
                          <td>5</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                           <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v2,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v2,this)">删除</a>
                          </td>
                        </tr>                                                            

                      </tbody>
                    </table>
                  </div>
                    <div class="widget-foot">

                        <ul class="pagination pull-right">
                          <li><a href="#">Prev</a></li>
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">4</a></li>
                          <li><a href="#">Next</a></li>
                        </ul>
                     
                      <div class="clearfix"></div> 

                    </div>
                </div>

              </div>
	    </div>
	    
	    <!-- 基本业务查询div -->
	  <%@include file="basic_sel.jsp" %>
		<!-- Matter ends -->

    </div>

   <!-- Mainbar ends -->
   <div class="clearfix">
   </div>
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
            <!-- Copyright info -->
            <p class="copy">Copyright &copy; 2016 爱立信版权所有</p>
      </div>
    </div>
  </div>
</footer>
</div>
<!-- Content ends -->

<!-- Footer starts -->
	

<!-- Footer ends -->
<div id="dlg" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px;"
       closed="true" buttons="#dlg-buttons">
       <div class="ftitle">
           信息编辑
       </div>
       <form id="fm" method="post">
       <div class="fitem">
           <label>sid</label>
           <input name="AccountCode" class="easyui-validatebox" required="true" id="a" readonly="readonly"/>
       </div>
       <div class="fitem">
           <label>username</label>
           <input name="AccountName" class="easyui-validatebox" required="true" id="b"/>
       </div>
       <div class="fitem">
       	<label>password</label>
           <input name="AccountPwd" class="easyui-validatebox" required="true" id="c"/>
       </div>
       <div class="fitem">
           <label>manage</label>
           <input name="CreateTime" class="easyui-validatebox" required="true" id="d"/>
       </div>
       <input type="hidden" name="action" id="hidtype" />
       <input type="hidden" name="ID" id="Nameid" />
       </form>
   </div>
   <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="yugi.addRow()" iconcls="icon-save">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg').dialog('close')"
            iconcls="icon-cancel">取消</a>
    </div> 
<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
<!-- Main.css -->
 <link href="<%=basePath %>resources/css/index/main.css" rel="stylesheet">
<!-- main.js -->
<!-- <script src="<%=basePath %>resources/js/index/main.js"></script> -->
<!-- JS -->
<script language="javascript" type="text/javascript" src="<%=basePath %>resources/My97DatePicker/WdatePicker.js"></script>
<script src="<%=basePath %>resources/js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
<script src="<%=basePath %>resources/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="<%=basePath %>resources/js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
<script src="<%=basePath %>resources/js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
<!-- jQuery Flot -->
<script src="<%=basePath %>resources/js/excanvas.min.js"></script>
<script src="<%=basePath %>resources/js/jquery.flot.js"></script>
<script src="<%=basePath %>resources/js/jquery.flot.resize.js"></script>
<script src="<%=basePath %>resources/js/jquery.flot.pie.js"></script>
<script src="<%=basePath %>resources/js/jquery.flot.stack.js"></script>

<!-- jQuery Notification - Noty -->
<script src="<%=basePath %>resources/js/jquery.noty.js"></script> <!-- jQuery Notify -->
<script src="<%=basePath %>resources/js/themes/default.js"></script> <!-- jQuery Notify -->
<script src="<%=basePath %>resources/js/layouts/bottom.js"></script> <!-- jQuery Notify -->
<script src="<%=basePath %>resources/js/layouts/topRight.js"></script> <!-- jQuery Notify -->
<script src="<%=basePath %>resources/js/layouts/top.js"></script> <!-- jQuery Notify -->
<!-- jQuery Notification ends -->

<script src="<%=basePath %>resources/js/sparklines.js"></script> <!-- Sparklines -->
<script src="<%=basePath %>resources/js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
<script src="<%=basePath %>resources/js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
<script src="<%=basePath %>resources/js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
<script src="<%=basePath %>resources/js/filter.js"></script> <!-- Filter for support page -->
<script src="<%=basePath %>resources/js/custom.js"></script> <!-- Custom codes -->
<script src="<%=basePath %>resources/js/charts.js"></script> <!-- Charts & Graphs -->

<script type="text/javascript" src="<%=basePath %>resources/js/echarts-all.js"></script>

<!-- 提示框部分代码 -->
 
<!-- Script for this page -->
<script type="text/javascript">
		$(document).ready(function(){
			initMap();
			initBarNumber();
			initTerminalPie();
			initBusinessPie();
		});
		function initMap(){
			var mapChart = echarts.init(document.getElementById('active_area'));
			var option = {
					title: {
				        text : '4G用户活跃数',
				        x:'center'
				    },
				    dataRange: {
				        show:false,
				        splitList: [
				        	{start: 150000},
				            {start: 100000,color:'red'},
				            {start: 50000, end: 100000,color:'#E09107'},
				            {start: 30000, end: 50000,color:'#A3E00B'},
				            {start: 10000, end: 30000,color:'#F4E001'},
				            {start: 0, end: 10000,color:'gray'},
				            {end:0}
				        ]
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: '{b}\n{c}'
				    },
				    series : [
				        {
				            mapType:'内蒙古',
				            type: 'map',
				            mapLocation:{x:'center',y:'center'},
				            data: [
				            	{name: '呼伦贝尔市',value: Math.round(Math.random()*30000)},
				                {name: '阿拉善盟',value: Math.round(Math.random()*30000)},
				                {name: '锡林郭勒盟',value: Math.round(Math.random()*30000)},
				                {name: '鄂尔多斯市',value: 32000},
				                {name: '赤峰市',value: 37500},
				                {name: '巴彦淖尔市',value: Math.round(Math.random()*30000)},
				                {name: '通辽市',value: 60000},
				                {name: '乌兰察布市',value: Math.round(Math.random()*30000)},
				                {name: '兴安盟',value: Math.round(Math.random()*30000)},
				                {name: '包头市',value: Math.round(Math.random()*30000)},
				                {name: '呼和浩特市',value: 145000},
				                {name: '乌海市',value: Math.round(Math.random()*30000)}
				            ]
				        }
				    ]
				};
			mapChart.setOption(option);
		}
		function initBarNumber(){
			var barChart = echarts.init(document.getElementById('user_number'));
			option = {
			    title : {
			        text: '4G用户数',
				    x:'center'
			    },
			    xAxis : [
			        {
			            type : 'category',
			            data : ['呼和浩特','通辽','赤峰','鄂尔多斯']
			        }
			    ],
			    yAxis : [{
			            type : 'value'
			        }],
			    series : [
			        {
			            name:'用户数',
			            type:'bar',
			            itemStyle: {
			                normal: {
			                    color: function(params) {
			                        // build a color map as your need.
			                        var colorList = [
			                          '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
			                           '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
			                           '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
			                        ];
			                        return colorList[params.dataIndex]
			                    },
			                    label: {
			                        show: true,
			                        position: 'top',
			                        formatter: '{b}\n{c}'
			                    }
			                }
			            },
			            barMaxWidth : '40',
			            data:[145000, 60000, 17500, 10000]
			        }
			    ]
			};
			barChart.setOption(option);
		}
		function initTerminalPie(){
			var pieChart = echarts.init(document.getElementById('terminal_type'));
			var option = {
					title: {
				        text : '4G终端类型',
				        x:'center'
				    },
				    legend: {
				        orient : 'vertical',
				        x : 'left',
				        y : 'center',
				        data:['iPhone6','iPhone6S','华为荣耀','小米','Sumsang','其他']
				    },
				    series : [
				        {
				            name:'4G终端类型',
				            type:'pie',
				            tooltip : {
						        trigger: 'item',
						        formatter: "{a} <br/>{b} : {c} ({d}%)"
						    },
						    itemStyle : {
				                normal : {
				                    label : {
				                    	show: true,
				                        position : 'inner',
				                        formatter : "{b}\n{d}%"
				                    },
				                    labelLine : {
				                        show : false
				                    }
				                }
				            },
				            radius : '65%',
				            center: ['50%', '50%'],
				            data:[
				                {value:200, name:'iPhone6'},
				                {value:50, name:'iPhone6S'},
				                {value:220, name:'Sumsang'},
				                {value:210, name:'小米'},
				                {value:200, name:'华为荣耀'},
				                {value:120, name:'其他'}
				            ]
				        }
				    ]
				};
			pieChart.setOption(option);
		}
		function initBusinessPie(){
			var pieChart = echarts.init(document.getElementById('business_area'));
			var option = {
					title: {
				        text : '业务分布',
				        x:'center'
				    },
				    legend: {
				        x : 'right',
				        y : 'bottom',
				        data:['2G','3G','2/3G','4G','VoLTE']
				    },
				    series : [
				        {
				            name:'业务分布',
				            type:'pie',
				            radius : [5, 110],
				            center : ['50%', '50%'],
				            roseType : 'area',
				            x: '50%',               // for funnel
				            max: 40,                // for funnel
				            sort : 'ascending',     // for funnel
				            data:[
				                {value:50, name:'2G'},
				                {value:9, name:'3G'},
				                {value:14, name:'2/3G'},
				                {value:23, name:'4G'},
				                {value:4, name:'VoLTE'}
				            ]
				        }
				    ]
				};
			pieChart.setOption(option);
		}
function getobject(obj){return document.getElementById(obj);}
function show(objid) {getobject(objid).style.display='';}
function hidden(objid) {getobject(objid).style.display='none';}
function doit(){
var sel_val=getobject('sel').value;
if (sel_val==1) {show('a1');hidden('a2');hidden('a3');hidden('a4');hidden('a5');hidden('a6');hidden('a7');}
if (sel_val==2) {show('a2');hidden('a1');hidden('a3');hidden('a4');hidden('a5');hidden('a6');hidden('a7');}
if (sel_val==3) {show('a3');hidden('a1');hidden('a2');hidden('a4');hidden('a5');hidden('a6');hidden('a7');}
if (sel_val==4) {show('a4');hidden('a1');hidden('a2');hidden('a3');hidden('a5');hidden('a6');hidden('a7');}
if (sel_val==5) {show('a5');hidden('a1');hidden('a2');hidden('a3');hidden('a4');hidden('a6');hidden('a7');}
if (sel_val==6) {show('a6');hidden('a1');hidden('a2');hidden('a3');hidden('a4');hidden('a5');hidden('a7');}
if (sel_val==7) {show('a7');hidden('a1');hidden('a2');hidden('a3');hidden('a4');hidden('a5');hidden('a6');}
}
var sourcetable;
var lastNode = "";
function showSelf(selfDivName){
	var title = document.getElementById("sort_left");
	var content = getobject(selfDivName).getAttribute("value");
	title.innerHTML= content;
	var right = document.getElementById("sort_right");
	right.innerHTML =content;
	if(lastNode==""){
		hidden('matter');
	}else{
		hidden(lastNode);
	}
	show(selfDivName);
	lastNode = selfDivName;
	
	//改变sourcetable状态
	if(selfDivName == "matter_pwd"){
		sourcetable = document.getElementById("table_v2");
	}else if(selfDivName == "matter_setting"){
		sourcetable = document.getElementById("table_v1");
	}else if(selfDivName == "matter_add"){
		sourcetable = document.getElementById("table");
	}else if(selfDivName == "matter_user"){
		sourcetable = document.getElementById("table_user");
		$.ajax({
			url :"<%=basePath %>user/getAllUser",  //后台处理程序  
            type:"post",    //数据发送方式  
            async:false,  
            dataType:"json",
			error: function(){  
                alert("服务器没有返回数据，可能服务器忙");  
               },success: function(json){
            	   var node_table_delete = document.getElementById('table_user');
        		   var node_tbody_delete = node_table_delete.getElementsByTagName("tbody")[0];
        		   for(var i = node_tbody_delete.children.length;i > 1;i--){
        			   node_tbody_delete.removeChild(node_tbody_delete.getElementsByTagName("tr")[1]);
        		   }
        		   
            	   for(var i=0;i<json.length;i++){
            		   var node_table = document.getElementById('table_user');
            		   var child = node_table.getElementsByTagName("tbody")[0];
            		   
            		   var node_tr = document.createElement('tr');
            		   var node_sid = document.createElement('td');
            		   var node_username = document.createElement('td');
            		   var node_passwprd = document.createElement('td');
            		   var node_manager = document.createElement('td');
            		   var node_control = document.createElement('td');
            		   var node_a1 = document.createElement('a');
            		   var node_a2 = document.createElement('a');
            		   node_a1.setAttribute("onclick", "yugi.modify(table_user,this)");
            		   node_a1.setAttribute("class", "btn btn-xs btn-warning");
            		   node_a2.setAttribute("onclick", "yugi.del(table_user,this)");
            		   node_a2.setAttribute("class", "btn btn-xs btn-danger");
            		   
            		   var node_sid_text = document.createTextNode(json[i].sid);
            		   var node_username_text = document.createTextNode(json[i].username);
            		   var node_passwprd_text = document.createTextNode(json[i].password);
            		   var node_manager_text = document.createTextNode(json[i].manager);
            		   
            		   var node_a1_text = document.createTextNode('修改');
            		   var node_a2_text = document.createTextNode('删除');
            		   
            		   node_sid.appendChild(node_sid_text);
            		   node_username.appendChild(node_username_text);
            		   node_passwprd.appendChild(node_passwprd_text);
            		   node_manager.appendChild(node_manager_text);
            		   node_a1.appendChild(node_a1_text);
            		   node_a2.appendChild(node_a2_text);
            		   
            		   
            		   child.appendChild(node_tr);
            		   node_tr.appendChild(node_sid);
            		   node_tr.appendChild(node_username);
            		   node_tr.appendChild(node_passwprd);
            		   node_tr.appendChild(node_manager);
            		   node_tr.appendChild(node_control);
            		   node_control.appendChild(node_a1);
            		   var node_control_text = document.createTextNode("  ");
            		   node_control.appendChild(node_control_text);
            		   node_control.appendChild(node_a2);
            		   
            	   }
               }
		})
	}else if(selfDivName == "matter_sel"){
		sourcetable = document.getElementById("table_select");
	}
}

var url;
        var type;
        var lasttable;
        //新建用户函数
        function newuser(table) {
            $("#dlg").dialog("open").dialog('setTitle', 'New User');
            $("#fm").form("clear");
            url = "UserManage.aspx";
            document.getElementById("hidtype").value="submit";
        }
        function edituser() {
            var row = $("#dg").datagrid("getSelected");
            if (row) {
                $("#dlg").dialog("open").dialog('setTitle', 'Edit User');
                $("#fm").form("load", row);
                url = "UserManage.aspx?id=" + row.ID;
            }
        }
        function saveuser() {
        	var vals = [a.value, b.value, c.value, d.value, "<a class='btn btn-xs btn-warning' onclick='yugi.modify(table,this)'>修改</a>&nbsp;<a class='btn btn-xs btn-danger' onclick='yugi.del(table,this)'>删除</a>"];
                    var tr = table.insertRow(table.tBodies[0].rows.length);
                    for (var i = 0; i < yugi.col; i++) {
                    var td = tr.insertCell(tr.cells.length);
                    td.innerHTML = vals[i];
                      }
        	javascript:$('#dlg').dialog('close');
            $("#fm").form("submit", {
                url: url,
            });
        }
        
        
            var yugi = {
            col: 5,
            addRow: function() {
                
                $.ajax({
            		type : "POST",
            		url : "<%=basePath %>user/saveUser",
            		dataType : "json",
            		data : { 'username' :b.value,'password':c.value,'manager':d.value},
            		error: function(){  
            			alert("请求失败");
                    },
            		success : function(json) {
            			var vals = [json[0].sid, b.value, c.value, d.value,
            		                "<a class='btn btn-xs btn-warning' onclick='yugi.modify(table,this)'>修改</a>&nbsp;<a class='btn btn-xs btn-danger' onclick='yugi.del(table,this)'>删除</a>"];
            		                var tr = sourcetable.insertRow(sourcetable.tBodies[0].rows.length);
            		                for (var i = 0; i < yugi.col; i++) {
            		                    var td = tr.insertCell(tr.cells.length);
            		                    td.innerHTML = vals[i];
            		                }
            		                javascript:$('#dlg').dialog('close');
            		}
            	});
            },
            modify: function(table, row) {
                var r = row.parentElement.parentElement,
                    c = r.cells;
                if (/.*修改.*/g.test(row.innerHTML)) {
                    for (var i = 1; i < c.length - 1; i++) {
                        var ci = c[i];
                        var txt = document.createElement("input");
                        txt.type = "text";
                        txt.value = ci.innerHTML;
                        ci.innerHTML = "";
                        ci.appendChild(txt);
                    }
                    row.innerHTML = "保存";
                } else {
                    for (var i = 1; i < c.length - 1; i++) {
                        var ci = c[i];
                        ci.innerHTML = ci.children[0].value;
                    }
                    $.ajax({
                		url :"<%=basePath %>user/updateUser",  //后台处理程序  
                        type:"post",    //数据发送方式
                        async:false,
                        data:{'sid':c[0].innerHTML,'username':c[1].innerHTML,'password':c[2].innerHTML,'manager':c[3].innerHTML},
                        dataType:"json",
            			error: function(){  
            				alert("修改失败");
                           },
                        success: function(json){
                        	
                           }
                	});
                    row.innerHTML = "修改";
                }
            },
            del: function(table, row) {
            	if(confirm("你确认要执行该操作吗")){
            		var ind = row.parentElement.parentElement.rowIndex;
         		    var node_body = table.getElementsByTagName("tbody")[0];
         		    var node_tr = node_body.getElementsByTagName("tr")[ind];
         		    var node_td = node_tr.getElementsByTagName("td")[0];
                	$.ajax({
                		type : "POST",
                		url : "<%=basePath %>user/deleteUserById",
                		dataType : "json",
                		data : { 'sid' :node_td.innerHTML},
                		error: function(){  
                			alert("操作失败");
                        },
                		success : function(data) {
                 		    console.log(node_td.innerHTML);
                        	sourcetable.tBodies[0].deleteRow(ind);
                		}
                	});
            	}else{
            	    
            	}
                
            }
        }
</script>

</body>
</html>