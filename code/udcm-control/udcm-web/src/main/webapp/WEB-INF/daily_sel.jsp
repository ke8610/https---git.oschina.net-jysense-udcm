<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <div class="matter" id="matter_Dsel" style="margin-left: 20px;padding-top: 20px; display: none;" value = "日常统计查询">
	    	<div class="eLabelControl5" style="border-bottom: 1px;">
									<script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#example-multiple-selecte').multiselect();
                                            });
                                        </script>
                                        <table class="table table-striped table-bordered table-hover" style="width: 90%;">
                                        	<caption>日常统计查询</caption>
                                        	<tr>
                                        		<td width="30%">请选择地址</td>
                                        		<td width=""><select name="rid" class="dropdown" id="example-multiple-selecte" multiple="multiple">
                                            <option value="6">锡林浩特（6）</option>
                                            <option value="5">集宁（5）</option>
                                            <option value="4">海拉尔（4）</option>
                                            <option value="3">乌兰浩特（3）</option>
                                            <option value="1">赤峰（1）</option>
                                            <option value="2">通辽（2）</option>
                                        </select></td>
                                        	</tr>
                                        	<tr>
                                        		<td>请选择起止日期</td>
                                        		<td>选择起始日期&nbsp;<input type="text" name="startDate" id="startDate" style="width:100px" class="Wdate" onclick="WdatePicker()">
							&nbsp;&nbsp;选择终止日期&nbsp;<input type="text" name="endDate" id="endDate" style="width:100px" class="Wdate" onclick="WdatePicker()"></td>
                                        	</tr>
                                        </table>
                                        <div style="float: right;margin-right: 10%;">
                                        	<input class="btn btn-primary btn-xs " type="button" value="查看" onclick="doStatistic()">
							&nbsp;&nbsp;<input class="btn btn-warning btn-xs " type="button" value="下载报表" onclick="downloadStatistic()"></div>
								</div> 
								
								<div class="container" style="margin-top: 50px;">

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
 </html>