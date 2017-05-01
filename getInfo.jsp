<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Manager</title>
     <style>

         .adding{
             background-color: #4CAF50;
    color: white;
    padding: 14px 10px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
    
         }
         
         
         .layout{
             background-color: #4CAF50;
            color: white;
            padding: 14px 10px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 25%;
    
         }
         .label2 {
            font-size:21px; 
            font-weight: bold;
            padding: 10px 0px 0px 10px;
            color: #ffffff;
            font-family: 'JungleFeverRegular', Helvetica, sans-serif;
}
         .input1{
          bottom: 23px;
           padding: 5px 10px 5px 0px;
         
         }
         
         .input2{
              bottom: 23px;
           padding: 5px 12px 5px 0px;
         }
         
         .label3 {
           font-size: 35px;
        font-family: 'JungleFeverRegular', Helvetica, sans-serif;
	font-weight: bold;
	text-align: center;
	text-shadow: rgba(0, 0, 0, .2) 3px 3px 3px;
	/*text stroke*/
	-webkit-text-stroke: 1px #fff473;
               
         }
         
         .label1 {
           font-size: 35px;
           color: #ffffff;
           font-family: 'JungleFeverRegular', Helvetica, sans-serif;
              
               
         }
h2 {
          font-size: 65px;
	line-height: 40px;
	font-family: 'JungleFeverRegular', Helvetica, sans-serif;
	font-weight: bold;
	text-align: center;
	text-shadow: rgba(0, 0, 0, .2) 3px 3px 3px;
	/*text stroke*/
	-webkit-text-stroke: 2px #fff473;}
        
       .box {
     width: 32%;
      -webkit-stroke: 2px #fff473;
    height: 425px;
    
    box-sizing: border-box;
    border: 6px solid #fff473;
    border-radius: 3px;
    background-image: url("wooden-background-wallpaper-3.jpg");
    resize: auto;
    float:left;
    box-shadow: 30px 30px 150px #222;
    margin-right:  1.33%; 
   
       }
       p{
           font-size:18px; 
            font-weight: bold;
            padding: 0px 0px 0px 10px;
            color: #ffffff;
       }

       .name{
           font-size:18px; 
           font-weight: bold;
           padding: 0px 0px 0px 10px;
           color: #FF0000;
       }
       
       button {
    background-color: 	#FF0000;
    color: white;
    padding: 14px 10px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 7%;
    position: fixed;
    right: 5px;
     top: 5px;
     }
.adding:hover {
    opacity: .8;
}
     button:hover {
    opacity: .8;
}    

.layout:hover {
    opacity: .8;
    
}
     </style>
   
     </head>
    
     <body style="background-image:url(Boxes.jpg)">
     <c:set var="thewebapp"  value="${initParam.thewebapp}"/>   
    <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
     <center><h2>Avaliable Accounts</h2></center>
    <form method="link" action="logout.jsp">
     <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
        <button type="submit">Logout</button>
        
    
    </form>
    
    <form method="get" action="${thewebapp}" >
    <div class="box">
        <center><label  class="label1" ><b>ADD AN ACCOUNT</b></label><br /></center><br />
        <label  class="label2" >Enter Account Name:</label> 
        <input class="input1" type="text" placeholder="Account Name" name="accountName" required><br/><br />
         <label class="label2"><b> Password: </b></label> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input class="input2" type="text" placeholder="Enter Account Password" name="accountPassword" required ><br /><br />
         <center><input class="adding" type="submit" value="ADD"></center>
    </div>
    <input type="hidden" name="task" value="3">
    <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
    </form>
    
    
    <form method="get" action="${thewebapp}" >
    <div class="box">
         <center><label  class="label1" ><b>VIEW ACCOUNTS</b></label><br /></center>
         <p> Account #1: <br /> Name: ${myString}  &nbsp; &nbsp;&nbsp; Password: ${password} </p>
         <p> Account #2: <br />Name: ${myString1}  &nbsp; &nbsp;&nbsp;Password: ${password1}</p>
         <p> Account #3: <br />Name: ${myString2}  &nbsp; &nbsp;&nbsp;Password: ${password2} </p>
         <p> Account #4: <br />Name: ${myString3}  &nbsp; &nbsp;&nbsp;Password: ${password3}</p>
         <p> Account #5: <br /> Name: ${myString4} &nbsp; &nbsp;&nbsp; Password: ${password4}</p>
         
        <center><input class="adding" type="submit" value="View Accounts"></center>
        </div>
    <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
    <input type="hidden" name="task" value="2">
</form>
    
    <form method="get" action="${thewebapp}" >
    <div class="box">
        <center><label  class="label1" ><b>EDIT AN ACCOUNT</b></label><br /></center>
        <label class="label2">Account Number:</label>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="input1" type="number" min="1" max="5" name="accountNumber" required><br/><br />
        <label  class="label2" >Enter Account Name:</label> 
         <input class="input1" type="text" placeholder="Account Name" name="accountName" required><br/><br />
        <label class="label2"><b> Password: </b></label> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input class="input2" type="text" placeholder="Enter Account Password" name="accountPassword" required ><br /><br />
         <input type="hidden" name="task" value="4">
         <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
          <center><input class="adding" type="submit" value="Change"></center>
    </form>
    
    
    <form method="get" action="${thewebapp}">
    <center><label  class="label3" ><b>Delete An Account </b></label><br /></center><br />
    <label class="label2">Account Number:</label>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input class="input1" type="number" min="1" max="5" name="accountNumber" required><br/><br />
    <input type="hidden" name="task" value="5">
     <center><input class="adding" type="submit" value="Delete"></center>
    <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
    </form>
    
     
     </div>
    
    
     
     <form method="link" action="layout.jsp">
     <input type="hidden" name="sessionString" value="${requestScope.sessionString}">
         <center><input class="layout"  type="submit" value="Layout"></center> 
     </form>
 

    
   
        
    </body>
</html>

