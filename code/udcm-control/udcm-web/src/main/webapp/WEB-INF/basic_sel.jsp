<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
<div class="matter" id="matter_sel" style="margin-left: 20px;padding-top: 20px;display: none;" value="基本业务查询" >
	    	<form name="frmlist" action="" method="post">
							<div class="flex-grid {layout: {type: 'flexGrid', hgap: 5, vgap: 5, columns: 5, rows: 3}}">
							
							<div class="eLabelControl5">
								<table class="table table-striped table-bordered table-hover" style="width: 90%;">
                    <caption>基本业务查询</caption>
                    <tr>
                    	<td style="width: 30%;">显示选项</td>
                    	<td><label><input type="radio" name="queryType" value="1" checked />2/3/4G用户数据 </label> &nbsp;&nbsp;
								<label><input type="radio" name="queryType" value="2" />PCRF数据 </label> &nbsp;&nbsp;
								<label><input type="radio" name="queryType" value="3" />VOLTE数据 </label></td>
                    </tr>
                    <tr>
                    	<td>请选择地区</td>
                    	<td><select name="rid" class="dropdown" id="example-multiple-select" multiple="multiple">
                                            <option value="6">锡林浩特（6）</option>
                                            <option value="5">集宁（5）</option>
                                            <option value="4">海拉尔（4）</option>
                                            <option value="3">乌兰浩特（3）</option>
                                            <option value="1">赤峰（1）</option>
                                            <option value="2">通辽（2）</option>
                                        </select></td>
                    </tr>
                    <tr>
                    	<td>请选择查询</td>
                    	<td><select class="form-control" name="sel" id="sel" onchange="javascript:doit();">
										
										<option value ="0">请选择查询条件</option>
										
										<option value ="1">根据MSISDN查询其用户数据</option>
										
										<option value ="2">固定组合业务查询</option>
 										 
										<option value ="3">'与'条件业务查询</option>
 										 
										<option value ="4">'或'条件业务查询</option>
 										 
										<option value ="5">根据APN查询用户</option>
 										 
										<option value ="6">根据手机终端(IMEI段前8位)查询用户(限签约EPS业务用户使用)</option>
										
										<option value ="7">手机终端分布图(限签约EPS业务用户)</option>
 										 
									</select></td>
                    </tr>
                    <tr><td colspan="2">
                    	<div name="a1" id="a1" style="display:none;">				
								<span>1. 根据MSISDN查询其用户数据&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MSISDN：</span>
								<input type="text" name="msisdn" id="msisdn" value="">&nbsp;&nbsp;<br><input type="button" style="margin-left: 500px;" class="btn btn-primary btn-xs " value="查询" onclick="dataQuery2()">
								<br><br>
								</div>
								<div name="a2" id="a2" style="display:none;">
								<span>2. 固定组合业务查询&nbsp;</span>
								&nbsp;&nbsp;&nbsp;
								
								<select class="form-control" name="settledService">
										<option value ="">组合条件选择</option>
										
										<option value ="(OBR@0 TYBVNFC OBR@-1) SRTYIOLM EpsRoamAllow@'FALSE'">2/3G国漫开启&4G国漫关闭</option>
 										 
										<option value ="EpsOdb@0 SRTYIOLM NAM@1">2/3G_GPRS关闭&4G业务激活</option>
 										 
										<option value ="OBR@2 SRTYIOLM EpsRoamAllow@'TRUE'">2/3G国漫关闭&4G国漫开启</option>
 										 
										<option value ="EpsOdb@1 SRTYIOLM NAM@0">2/3G_GPRS激活&4G业务关闭</option>
 										 
									</select>
								&nbsp;&nbsp;
								<br />
								<input type="button" class="btn btn-primary btn-xs" value="查询用户个数" style="margin-left: 500px;" onclick="countNumber(2)">
								&nbsp;&nbsp;<input type="button" class="btn btn-warning btn-xs" value="下载具体用户" onclick="listSubscribers(2)">
								<br><br>
								</div>
								<div name="a3" id="a3" style="display:none;">
								<span>3. '与'条件业务查询&nbsp;</span>
								&nbsp;&nbsp;&nbsp;　　　　　　　　
								　　　条件1：
								<select class="form-control" name="service1">
										<option value ="">条件1</option>
										
										<option value ="PRBT=1">彩铃开启</option>
 										 
										<option value ="SCHAR=4">在线</option>
 										 
										<option value ="OBR=2">2/3G国漫关闭</option>
 										 
										<option value ="NAM=1">gprs disable</option>
 										 
										<option value ="PDPCP=414">null gprs profile</option>
 										 
										<option value ="EpsProfileId!='xx'">4G用户</option>
 										 
										<option value ="EpsOdb=0">4G业务active</option>
 										 
										<option value ="EpsRoamAllow='TRUE'">4G国漫开启</option>
 										 
										<option value ="EpsMmeAddr!='xx'">4G活跃用户</option>
 										 
										<option value ="VLRADDR!='xx'">23G活跃</option>
 										 
										<option value ="SGSNNUM!='xx'">gprs</option>
 										 
										<option value ="MPTY=1">多方通话</option>
 										 
										<option value ="OBSSM=1">OBSSM</option>
 										 
										<option value ="ECT=1">显示呼叫迁移</option>
 										 
									</select>
								&nbsp;<br /><br />
								& &nbsp;条件2：
								<select class="form-control" name="service2">
										<option value ="">条件2</option>
										
										<option value ="PRBT=1">彩铃开启</option>
 										 
										<option value ="SCHAR=4">在线</option>
 										 
										<option value ="OBR=2">2/3G国漫关闭</option>
 										 
										<option value ="NAM=1">gprs disable</option>
 										 
										<option value ="PDPCP=414">null gprs profile</option>
 										 
										<option value ="EpsProfileId!='xx'">4G用户</option>
 										 
										<option value ="EpsOdb=0">4G业务active</option>
 										 
										<option value ="EpsRoamAllow='TRUE'">4G国漫开启</option>
 										 
										<option value ="EpsMmeAddr!='xx'">4G活跃用户</option>
 										 
										<option value ="VLRADDR!='xx'">23G活跃</option>
 										 
										<option value ="SGSNNUM!='xx'">gprs</option>
 										 
										<option value ="MPTY=1">多方通话</option>
 										 
										<option value ="OBSSM=1">OBSSM</option>
 										 
										<option value ="ECT=1">显示呼叫迁移</option>
 										 
									</select>
								&nbsp;
								　　　& &nbsp;条件3：
								<select class="form-control" name="service3">
										<option value ="">条件3</option>
										
										<option value ="PRBT=1">彩铃开启</option>
 										 
										<option value ="SCHAR=4">在线</option>
 										 
										<option value ="OBR=2">2/3G国漫关闭</option>
 										 
										<option value ="NAM=1">gprs disable</option>
 										 
										<option value ="PDPCP=414">null gprs profile</option>
 										 
										<option value ="EpsProfileId!='xx'">4G用户</option>
 										 
										<option value ="EpsOdb=0">4G业务active</option>
 										 
										<option value ="EpsRoamAllow='TRUE'">4G国漫开启</option>
 										 
										<option value ="EpsMmeAddr!='xx'">4G活跃用户</option>
 										 
										<option value ="VLRADDR!='xx'">23G活跃</option>
 										 
										<option value ="SGSNNUM!='xx'">gprs</option>
 										 
										<option value ="MPTY=1">多方通话</option>
 										 
										<option value ="OBSSM=1">OBSSM</option>
 										 
										<option value ="ECT=1">显示呼叫迁移</option>
 										 
									</select>
								&nbsp;&nbsp;
								<br />
								<input type="button" style="margin-left: 500px;" class="btn btn-primary btn-xs" value="查询用户个数" onclick="countNumber(0)">
								&nbsp;&nbsp;<input type="button" class="btn btn-warning btn-xs" value="下载具体用户" onclick="listSubscribers(0)">
								<br><br>
								</div>
								<div name="a4" id="a4" style="display:none;">
								<span>4. '或'条件业务查询&nbsp;</span>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								　　　　　　　　	   　条件1：
								<select class="form-control" name="service4">
										<option value ="">条件1</option>
										
										<option value ="PRBT=1">彩铃开启</option>
 										 
										<option value ="SCHAR=4">在线</option>
 										 
										<option value ="OBR=2">2/3G国漫关闭</option>
 										 
										<option value ="NAM=1">gprs disable</option>
 										 
										<option value ="PDPCP=414">null gprs profile</option>
 										 
										<option value ="EpsProfileId!='xx'">4G用户</option>
 										 
										<option value ="EpsOdb=0">4G业务active</option>
 										 
										<option value ="EpsRoamAllow='TRUE'">4G国漫开启</option>
 										 
										<option value ="EpsMmeAddr!='xx'">4G活跃用户</option>
 										 
										<option value ="VLRADDR!='xx'">23G活跃</option>
 										 
										<option value ="SGSNNUM!='xx'">gprs</option>
 										 
										<option value ="MPTY=1">多方通话</option>
 										 
										<option value ="OBSSM=1">OBSSM</option>
 										 
										<option value ="ECT=1">显示呼叫迁移</option>
 										 
									</select>
								&nbsp;
								<br /><br />|  &nbsp;&nbsp;条件2：
								<select class="form-control" name="service5">
										<option value ="">条件2</option>
										
										<option value ="PRBT=1">彩铃开启</option>
 										 
										<option value ="SCHAR=4">在线</option>
 										 
										<option value ="OBR=2">2/3G国漫关闭</option>
 										 
										<option value ="NAM=1">gprs disable</option>
 										 
										<option value ="PDPCP=414">null gprs profile</option>
 										 
										<option value ="EpsProfileId!='xx'">4G用户</option>
 										 
										<option value ="EpsOdb=0">4G业务active</option>
 										 
										<option value ="EpsRoamAllow='TRUE'">4G国漫开启</option>
 										 
										<option value ="EpsMmeAddr!='xx'">4G活跃用户</option>
 										 
										<option value ="VLRADDR!='xx'">23G活跃</option>
 										 
										<option value ="SGSNNUM!='xx'">gprs</option>
 										 
										<option value ="MPTY=1">多方通话</option>
 										 
										<option value ="OBSSM=1">OBSSM</option>
 										 
										<option value ="ECT=1">显示呼叫迁移</option>
 										 
									</select>
								&nbsp;　　
								|  &nbsp;&nbsp;条件３：
								<select class="form-control" name="service6">
										<option value ="">条件3</option>
										
										<option value ="PRBT=1">彩铃开启</option>
 										 
										<option value ="SCHAR=4">在线</option>
 										 
										<option value ="OBR=2">2/3G国漫关闭</option>
 										 
										<option value ="NAM=1">gprs disable</option>
 										 
										<option value ="PDPCP=414">null gprs profile</option>
 										 
										<option value ="EpsProfileId!='xx'">4G用户</option>
 										 
										<option value ="EpsOdb=0">4G业务active</option>
 										 
										<option value ="EpsRoamAllow='TRUE'">4G国漫开启</option>
 										 
										<option value ="EpsMmeAddr!='xx'">4G活跃用户</option>
 										 
										<option value ="VLRADDR!='xx'">23G活跃</option>
 										 
										<option value ="SGSNNUM!='xx'">gprs</option>
 										 
										<option value ="MPTY=1">多方通话</option>
 										 
										<option value ="OBSSM=1">OBSSM</option>
 										 
										<option value ="ECT=1">显示呼叫迁移</option>
 										 
									</select>
								&nbsp;&nbsp;
								<br />
								<input type="button" style="margin-left: 500px;" class="btn btn-primary btn-xs" value="查询用户个数" onclick="countNumber(1)">
								&nbsp;&nbsp;<input type="button" class="btn btn-warning btn-xs" value="下载具体用户" onclick="listSubscribers(1)">
								
								
								<br><br>
								</div>
								<div name="a5" id="a5" style="display:none;">
								<span>5. 根据APN查询用户&nbsp;</span>
								&nbsp;&nbsp;&nbsp;
								<input type="text" size="10" name="apnid1" id="apnid1" value="">&nbsp;
								&nbsp;&nbsp;
								&nbsp;&nbsp;
								<br />
								<input type="button" style="margin-left: 500px;" class="btn btn-primary btn-xs" value="查询用户个数" onclick="countNumber(3)">
								&nbsp;&nbsp;<input type="button" class="btn btn-warning btn-xs" value="下载具体用户" onclick="listSubscribers(3)">
								<br><br>
								</div>
								<div name="a6" id="a6" style="display:none;">
								<span>6. 根据手机终端(IMEI段前8位)查询用户(限签约EPS业务用户使用)&nbsp;</span>
								&nbsp;&nbsp;&nbsp;
								<input type="text" size="10" name="imei" id="imei" value="">&nbsp;
								&nbsp;&nbsp;
								&nbsp;&nbsp;
								<br>
									<input type="button" style="margin-left: 500px;" class="btn btn-primary btn-xs" value="查询用户个数" onclick="countNumber(4)">
								&nbsp;&nbsp;<input type="button" class="btn btn-warning btn-xs" value="下载具体用户" onclick="listSubscribers(4)">
								<br><br>
								</div>
								<div name="a7" id="a7" style="display:none;">
								<span>7. 手机终端分布图(限签约EPS业务用户)&nbsp;</span>
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;
								<br />
								<input type="button" style="margin-left: 500px;" class="btn btn-primary btn-xs" value="查询" onclick="mobileMapShow()">
								
								<br><br>
								</div>
                    	</td></tr>
								</table>
								 
								&nbsp;&nbsp;
								
									
                                        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#example-multiple-select').multiselect();
                                            });
                                        </script>
                                        &nbsp;&nbsp;
								
								
								
							</div>
								<div class="container">

                <div class="widget">

                <div class="widget-head">
                </div>

                  <div class="widget-content" style="height: 190px;line-height:100px;overflow:auto;overflow-x:hidden;">

                    <table class="table table-striped table-bordered table-hover" id="table_select">
                      <tbody>
                      	<tr>
                          <th>#</th>
                          <th>Name</th>
                          <th>Location</th>
                          <th>Date</th>
                          <th>Type</th>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                        </tr> 
                        <tr>
                          <td>4</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                        </tr> 
                        <tr>
                          <td>5</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
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
		  </div>
 </html>