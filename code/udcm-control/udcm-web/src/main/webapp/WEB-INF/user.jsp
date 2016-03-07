<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <div class="matter" id="matter_user" style=" display: none;" value = "查看所有用户" >
<div class="container">
                <div class="widget">
                <div class="widget-head">
                 <a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="newuser('table_user')"
            plain="true">Add</a>
                </div>
                  <div class="widget-content" style="height: 350px;line-height:100px;overflow:auto;overflow-x:hidden;">
                  	<table class="table table-striped table-bordered table-hover" id="table_user">
                      <tbody>
                      	<tr>
                      	<th>sid</th>
                          <th>username</th>
                          <th>password</th>
                          <th>manager</th>
                          <th>Control</th>
                        </tr>                                                         

                      </tbody>
                    </table>
                  </div>
                  
                  <div class="widget-foot" style="margin-top: 10px;">

                        <ul class="pagination pull-right">
                          <li><a href="#">Prev</a></li>
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">4</a></li>
                          <li><a href="#">Next</a></li>
                        </ul>
                     
                    </div>
                  
                </div>
</div>
              </div>
              </html>