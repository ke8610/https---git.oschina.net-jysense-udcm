<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
<div class="matter" id="matter_setting" style="height: 300px;display: none;" value = "筛选条件">
	    	<div class="container">

                <div class="widget">

                <div class="widget-head"> 
                	<a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="newuser('table_v1')"
            plain="true">Add</a>
                </div>

                  <div class="widget-content" style="height: 350px;line-height:100px;overflow:auto;overflow-x:hidden;">

                    <table class="table table-striped table-bordered table-hover" id="table_v1">
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
                          <td>1</td>
                          <td>Ravi Kumar</td>
                          <td>India</td>
                          <td>23/12/2012</td>
                          <td>Paid</td>
                          <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v1,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v1,this)">删除</a>
                          </td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Parneethi Chopra</td>
                          <td>USA</td>
                          <td>13/02/2012</td>
                          <td>Free</td>
                          <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v1,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v1,this)">删除</a>
                          </td>
                        </tr>

                        <tr>
                          <td>3</td>
                          <td>Kumar Ragu</td>
                          <td>Japan</td>
                          <td>12/03/2012</td>
                          <td>Paid</td>
                          <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v1,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v1,this)">删除</a>
                          </td>
                        </tr>

                        <tr>
                          <td>4</td>
                          <td>Vishnu Vardan</td>
                          <td>Bangkok</td>
                          <td>03/11/2012</td>
                          <td>Paid</td>
                          <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v1,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v1,this)">删除</a>
                          </td>
                        </tr>

                        <tr>
                          <td>5</td>
                          <td>Anuksha Sharma</td>
                          <td>Singapore</td>
                          <td>13/32/2012</td>
                          <td>Free</td>
                          <td>
                              <a class="btn btn-xs btn-warning" onclick="yugi.modify(table_v1,this)">修改</a>&nbsp;
                              <a class="btn btn-xs btn-danger" onclick="yugi.del(table_v1,this)">删除</a>
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
 </html>