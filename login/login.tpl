{include file="header.tpl"}

<div id="main-other">
	<div id="sub-other">
        <div class="other-head">
            <h5>Log In Your Account</h5>
            <img src="images/borderr.png">
        </div>



<div class="loginbg">

{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}


{if $frm.say eq 'invalid_login'}

Your login or password or turing image code is wrong. Please check this information.
{/if}

<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value='{$frm.follow}'>
<input type=hidden name=follow_id value='{$frm.follow_id}'>

            <div class="loginboxes">
            	<div class="infobox-one">
                    <div class="info-box-tittle">
                        <p>Your Username</p>
                    </div>
                    <div class="infotype">
                        <input type="text" placeholder="Username" name=username value='{$frm.username|escape:"html"}' name="name">
                    </div>
             	</div>
                <div class="infobox-one">
                    <div class="info-box-tittle">
                        <p>Your Password</p>
                    </div>
                    <div class="infotype">
                        <input type="password" placeholder="Password" name=password value=''>
                    </div>
             	</div>
				{if $userinfo.validation_enabled == 1}
				<div class="infobox-one">
                    <div class="info-box-tittle">
              <p><img src="?a=show_validation_image&{$userinfo.session_name}={$userinfo.session_id}&rand={$userinfo.rand}"></p>
                    </div>
                    <div class="infotype">
                        <input type=text name=validation_number class=inpts size=30>
                    </div>
             	</div>
				{/if}
                <div class="for-log">
                	<div class="forgot-pass">
                    	<a href="?a=forgot_password">Forgot Password ?</a>
                    </div>
                    <div class="sendl">
                    	<input type="submit" value="LOG IN">
                    </div>
                </div>
            </div>


</div>
		</div>
	</div><!-- end contentTopContainer -->
{include file="footer.tpl"}
