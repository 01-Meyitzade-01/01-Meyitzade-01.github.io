
	<div class="login_box">		
 <div class="headline">Account Login</div>    
 {literal}    
<script language=javascript>
function checklogin() {   
  if (document.loginform.username.value=='') {
    alert("Please enter your username!");
    document.loginform.username.focus();
    return false;
  }
  if (document.loginform.password.value=='') {
    alert("Please enter your password!");
    document.loginform.password.focus();
    return false;
  }
  return true;
}
</script>
 {/literal}
<form method=post name=loginform onsubmit="return checklogin()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value=''>
<div style="margin:15px auto 6px;" align="center">
<input type=text name=username  value="Username" onclick="if(this.value='Username') this.value='';" onblur="if(this.value=='') this.value='Username';" class="user" style="margin-left:9px; margin-top:20px; width:204px;">
</div>
<div style="margin:15px auto;" align="center">
<input type=password name=password value="Password" onclick="if(this.value='Password') this.value='';" onblur="if(this.value=='') this.value='Password';" class="pass" style="margin-left:9px; width:204px;"></div>

<div style="clear:both;"></div>

<div align="left" style="margin-top:10px; margin-left:40px; position:absolute;"><a href="?a=forgot_password" class="linksw">password <br>recovery</a></div>

<div align="right" style="margin-right:27px; margin-top:10px;">
<input type=submit value="Login" class="sbmt"></div>
<div style="clear:both; height:10px;"></div>
</form>



</div>




