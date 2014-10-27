function check_new(new_pwd){
    var new_pwd=document.getElementById("password").value;
    var x=new_pwd.length;
    if(x==0||x<=5){
        document.getElementById("validatemsg").innerHTML="<label for='password' class='error'>Length of password must be more than 5</label>";
        document.getElementById("password").focus();
        document.getElementById("submit").disabled=true;
    }else{
        document.getElementById("validatemsg").innerHTML="";
        document.getElementById("submit").disabled=false;
    }
}
function check_confirmPassword()
{
    var pword=document.getElementById("password").value;
    var cpword=document.getElementById("confirm_password").value;
    if(pword!=cpword){
        document.getElementById("confmsg").innerHTML="<label for='password' class='error'>Please enter the same password as above</label>";
        document.getElementById("confirm_password").focus();
        document.getElementById("submit").disabled=true;
    }
    else{
        document.getElementById("confmsg").innerHTML="";
        document.getElementById("submit").disabled=false;
    }
}
function setUsername(desig){
    
    var alphaNumerics = "abcdefghijklmnopqrstuvwxyz1234567890";
    var id = "";
    
    for (var i = 0; i < 5; i++) 
    {
        id+=alphaNumerics.charAt(Math.floor(Math.random() * alphaNumerics.length));
    }  
    if(desig=="team"){
        document.getElementById("uname").value="T"+id;
        document.getElementById("username").value="T"+id;
    }
    else if(desig=="manager"){
        document.getElementById("uname").value="M"+id;
        document.getElementById("username").value="M"+id;
    }
}

function checkItemFor(){
    var item=document.getElementById("item").value;
    var item_type=document.getElementById("item_type").value;
    var price=document.getElementById("price").value;
    var des=document.getElementById("des").value;
    if(item==""||item_type==""||price==""||des==""){
        alert("All fields are required");
        return false;
    }
}
function meditcheck(){
    var t=document.getElementById("work").value;
    if(t==""){
        alert("Please select the work type");
        return false;
    }
    
}
function checkInfo()
{
    var name=document.getElementById("firstname").value;
    var designation=document.getElementById("designation").value;
    var username=document.getElementById("username").value;
    var email=document.getElementById("email").value;
    var phn=document.getElementById("phone").value;
    var gender=document.getElementById("gender").value;
    var pin=document.getElementById("pin").value;    
    var dob=document.getElementById("dob").value;
    var padd=document.getElementById("padd").value;
    var cadd=document.getElementById("cadd").value;
    var city=document.getElementById("city").value;
    var state=document.getElementById("state").value;
    var doj=document.getElementById("doj").value;
    var work=document.getElementById("work").value;
    if(name==""){
        alert("Name is required.");
        document.getElementById("firstname").focus();
        return false;
    }
    if(designation==""){
        alert("Designation is required.");
        document.getElementById("designation").focus();
        return false;
    }
    if(email==""){
        alert("E-Mail is required.");
        document.getElementById("email").focus();
        return false;
    }
    if(phone==""){
        alert("Phone Number is required.");
        document.getElementById("phone").focus();
        return false;
    }
    if(pin==""){
        alert("Pin Code is required.");
        document.getElementById("pin").focus();
        return false;
    }
    if(dob==""){
        alert("DOB is required.");
        document.getElementById("dob").focus();
        return false;
    }
    if(gender==""){
        alert("Gender is required.");
        document.getElementById("gender").focus();
        return false;
    }
    if(padd==""){
        alert("Permanent Address is required.");
        document.getElementById("padd").focus();
        return false;
    }
    if(cadd==""){
        alert("Correspondance Address is required.");
        document.getElementById("cadd").focus();
        return false;
    }
    if(state==""){
        alert("State Name is required.");
        document.getElementById("state").focus();
        return false;
    }
    if(city==""){
        alert("City Name is required.");
        document.getElementById("city").focus();
        return false;
    }
    if(doj==""){
        alert("Joining Date is required.");
        document.getElementById("doj").focus();
        return false;
    }
    if(work==""){
        alert("Select Working Area of employee");
        document.getElementById("work").focus();
        return false;
    }
    if(phn.length!=10){
        alert("Please enter a valid phone number");
        document.getElementById("phone").focus();
        return false;
    }
    if(pin.length!=6){
        alert("Please enter a valid pin code");
        document.getElementById("pin").focus();
        return false;
    }
}