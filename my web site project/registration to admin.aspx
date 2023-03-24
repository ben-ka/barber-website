<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration to admin.aspx.cs" Inherits="registration_to_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

         .rows {
            height: 300px;
            
            margin-left:900px;
           color:darkred;
            font-size:38px;
        }
        .labels {
            width: 300px;
            height: 40px;
            color: darkred;
            font-size: 35px;
            width: 600px;
        }
         .last{
            font-size:38px;
            margin-left:200px;
            margin-top:50px;
            color:darkred;
            width:200px;
            height:50px;
        }
         .error{
             font-size:22px;
             margin-left:1050px;
             color:red;
         }
         .h1{
             text-align:center;
             color:darkred;
             font-size:50px;
            background:linear-gradient(#ffe866,#ccad00) ;

         }
           .a{
              width: 300px;
            height:300px;
            text-align:left;
            float:left;
           
            border:none;
            margin-left:0px;
           
        }




    </style>
    
</head>
<body style="background: linear-gradient(135deg, #dddddd, #aaaaaa);">
    <form id="form1" runat="server">
        <h1 class="h1"><em>admin login</em></h1>
        <table>
            <tr>
                 <td><a href="first page.aspx"> <img  class="a" src="pics/Thynk Unlimited Barbershop.png"  /></a>  </td>
            </tr>
        </table>
        <table class="rows">
           
    <tr>
        <td>
            <label class="labels"> username:</label>
            <input class="labels" type="text" id="txtUserName" name="txtUsername" />
        </td>
    </tr>
    <tr>
        <td>
            <label class="labels">password:</label>
            <input class="labels" type="password" id="txtPassword" name="txtPassword" />
        </td>
    </tr>
          
           <tr>
               <td>
                   <input type="submit" class="last" name="signIn" value="sign in" id="signIn"/> 
                  
                 </td> 

           </tr>
            
          
            
     <tr>   
         <td> 
           
             </td>
         </tr>
</table>
       <%
           string username = "", password = "", query = "", name = "";
           bool isRegistered = false, isFalse = false;

           if (Request.Form["signIn"] != null)
           {
               if (Request.Form["txtUsername"] != null)
               {
                   username = Request.Form["txtUsername"];
               }

               if (Request.Form["txtPassword"] != null)
               {
                   password = Request.Form["txtPassword"];
               }

               query = "SELECT * FROM tblAdmin WHERE adminUsername='" + username + "' AND adminPassword='" + password + "'";
               DBFunctions.RunQuery(query);
               System.Data.DataTable dt = DBFunctions.RunQuery(query);




               if (dt.Rows.Count > 0)
               {
                   isRegistered = true;
                   string query2 = "SELECT adminName FROM tblAdmin WHERE adminUsername='" + username + "' AND adminPassword='" + password + "'";
                   DBFunctions.RunQuery(query2);
                   System.Data.DataTable dk = DBFunctions.RunQuery(query2);
                           name = dk.Rows[0]["adminName"].ToString();
                           Session["AdminName"] = name;
               }
               else
               {
                   isFalse = true;
               }
           }
%>

<% if (isRegistered == true)
   { %>
   <script>
       window.location.href = "admin.aspx";
   </script>
<%} %>

<% if (isFalse == true)
   { %>
   <label class="error"> The username or password are incorrect. Please try again.</label>   
<%} %>

                  
                 
    </form>
</body>
</html>
