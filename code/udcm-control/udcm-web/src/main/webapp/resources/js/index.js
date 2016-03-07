/*var working = false;
$('.login').on('submit', function(e) {
  e.preventDefault();
  if (working) return;
  working = true;
  var $this = $(this),
    $state = $this.find('button > .state');
  $this.addClass('loading');
  $state.html('正在验证');
  
  
  setTimeout(function() {
    $this.addClass('ok');
    $state.html('登录成功');
    
    setTimeout(function() {
      $state.html('Log in');
      $this.removeClass('ok loading');
      working = false;
    }, 4000);
  }, 3000);
});*/


function jimmy(){
var j = document.getElementById("username");//用户名
var k = document.getElementById("pwd");//密码
if(j.value.length>5||k.value.length>5)
{alert("用户名或密码太长，请重新输入！");
j.value=""; k.value="";
j.focus();
return false;
}
else if(j.value==""||k.value=="")
{alert("用户名或密码不能为空!");
j.value=""; k.value="";
j.focus();
return false;
}
else{
}
}
