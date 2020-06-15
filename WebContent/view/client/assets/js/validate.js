
function validate()
{
	var username = document.loginform.username;
	var password = document.loginform.password;
	if (username.value == null || username.value=="")
		{
		window.alert("Please enter your username! ");
		username.style.background='#f08080';
		username.focus();
		return false;
		}
	if (password.value == null || password.value=="")
		{
		window.alert("Please enter your password!");
		password.style.background='#f08080';
		password.focus();
		return false;
		}
	else if ((username.length <=0) && (password.length<=0))
		{
		swal({
			title:"Login failed",
			text:"Please enter your username and password!!!",
			icon:"info",
		});
		}
}
function validateRegister()
{ 
	var phone = document.registerform.phonenumber.value;
     var name = document.registerform.name.value;
     var email = document.registerform.email.value;
     var username = document.registerform.username.value; 
     var password = document.registerform.password.value;
     var conpassword = document.registerform.conpassword.value;
     
     
     if (phonenumber==null || phonenumber=="")
     { 
     alert("Phone can't be blank"); 
     return false; 
     }
     else if (name==null || name=="")
     { 
     alert("Full Name can't be blank"); 
     return false; 
     }
     else if (email==null || email=="")
     { 
     alert("Email can't be blank"); 
     return false; 
     }
     else if (username==null || username=="")
     { 
     alert("Username can't be blank"); 
     return false; 
     }
     else if(password.length<6)
     { 
     alert("Password must be at least 6 characters long."); 
     return false; 
     } 
     else if (password!=conpassword)
     { 
     alert("Confirm Password should match with the Password"); 
     return false; 
     } 
     }
