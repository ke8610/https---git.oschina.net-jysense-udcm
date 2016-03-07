<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <div class="matter" id="matter_overflow" style="display: none;" value = "漫出用户统计">
<div class="eLabelControl5">
							
									&nbsp;
									<script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#example-multiple-selec').multiselect();
                                            });
                                        </script>
                                        <table class="table table-striped table-bordered table-hover" style="width: 90%;">
                                        	<caption>日常统计查询</caption>
                                        	<tr>
                                        		<td>1、请选择地区</td>
                                        		<td><select name="rids" class="dropdown" id="example-multiple-selec" multiple="multiple">
                                            <option value="6">锡林浩特（6）</option>
                                            <option value="5">集宁（5）</option>
                                            <option value="4">海拉尔（4）</option>
                                            <option value="3">乌兰浩特（3）</option>
                                            <option value="1">赤峰（1）</option>
                                            <option value="2">通辽（2）</option>
                                        </select></td>
                                        		<td><input class="btn btn-primary btn-xs " type="button" value="VLR漫出分析" onclick="vlrShow()">
							&nbsp;&nbsp;<input class="btn btn-primary btn-xs " type="button" value="MME漫出分析" onclick="mmeShow()"></td>
                                        	</tr>
                                        	<tr><td>2、请选择地区</td>
                                        		<td><select name="rids" class="dropdown" id="example-multiple-selected" multiple="multiple">
                                            <option value="6">锡林浩特（6）</option>
                                            <option value="5">集宁（5）</option>
                                            <option value="4">海拉尔（4）</option>
                                            <option value="3">乌兰浩特（3）</option>
                                            <option value="1">赤峰（1）</option>
                                            <option value="2">通辽（2）</option>
                                        </select></td>
                                        	<td><input class="btn btn-warning btn-xs " type="button" style="width:120px;" value="下载当日VLR报表" onclick="vlrReport()"></td>
                                        	</tr>
                                        	<tr>
                                        	<td>3、请选择日期</td>
                                        	<td>选择起始日期&nbsp;<input type="text" name="startDate" id="startDate" class="Wdate" style="width:100px" onClick="WdatePicker()">
							&nbsp;&nbsp;选择终止日期&nbsp;<input type="text" name="endDate" id="endDate" style="width:100px" class="Wdate" onClick="WdatePicker()"></td>
                                        	<td><input  type="button" style="width:120px;h" class="btn btn-warning btn-xs " value="下载历史VLR报表" onclick="vlrHisReport()"></td>
                                        	</tr>
                                        </table>
								<script type="text/javascript">
                                            $(document).ready(function() {
                                                $('#example-multiple-selected').multiselect();
                                            });
                                        </script>
								</div>

                <div class="widget">

                <div class="widget-head">
                </div>

                  <div class="widget-content" style="height:190px;line-height:100px;overflow:auto;overflow-x:hidden;">

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
</html>