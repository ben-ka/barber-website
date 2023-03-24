<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking appointments.aspx.cs" Inherits="Booking_appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
     html{
           font-family:sans-serif,serif,'AGA Arabesque';
       }
   .pic{
       background-image:url("pics/barbershop%20look%20-%20Edited%20(2).png" );
       background-repeat: no-repeat;
       background-size: cover;
       height:1500px;
       width:1500px;
      
      
        
   }
  .appointment{
      width:2400px;
      text-align:center;
      margin-top: 100px;
        color:cornflowerblue;
     
  }
  .font{
      font-size:38px;
        color:cornflowerblue;
  }
  .save{
      margin-left:1050px;
      margin-top:25px;
      font-size:38px;
      color:cornflowerblue;
  }
  .hours{
      margin-top:50px;
      font-size:30px;
      text-align:center;
      color:cornflowerblue;
      margin-left:800px;
      font-size:38px;
         
  }
    .labels{
           width:300px;
           height:40px;
            color:cornflowerblue;
           font-size:35px;
           width:600px;

          
          
           
        }
    .save2{
        margin-left:1100px;
         margin-top:25px;
        font-size:38px;
        color:cornflowerblue;
         width:100px;
    }



        .rows {
            height: 300px;
            margin-top:200px;
            margin-left:900px;
           color:cornflowerblue;
            font-size:38px;
        }
        .last{
            font-size:38px;
            margin-left:200px;
            margin-top:50px;
            color:cornflowerblue;
            width:350px;
            height:75px;
        }
        .link{
            font-size:36px;
             color:cornflowerblue;
            margin-top:1050px;
            margin-left:1000px;
        }
         .a{
              width: 300px;
            height:260px;
            text-align:left;
            float:left;
           margin-left:60px;
            border:none;
            margin-left:0px;
           
        }
        
         #section1{
              background-image: linear-gradient(to right, #4B0082, #FF1493);
         }
      


</style>
</head>
<body class="pic">
    
  <form id="form1" runat="server" >
       <table>
         <tr>
             <td><a href="first page.aspx"> <img  class="a" src="pics/Thynk Unlimited Barbershop.png"  /></a> </td>
         </tr>
     </table>
    
      <div class="appointment">
    <label class="font" for="appointment-date">Appointment Date: </label>
    <input class="font" type="date" id="appointment-date" name="appointmentDate" value="<%= Request.Form["appointmentDate"] %>"/>
</div>

<input class="save" type="submit" value="Select hour" name="btnSave" id="btnSave" />

<% if (Request.Form["appointmentDate"] != null) { %>
    <input type="hidden" name="selectedDate" value="<%= Request.Form["appointmentDate"] %>" />
    <div class="hours">
        <label for="available-hours">Available Hours:</label>
        <asp:DropDownList style="font-size:38px;color:cornflowerblue"  ID="ddlHours" runat="server"></asp:DropDownList>
    </div>
    <input type="hidden" name="selectedHour" value="<%= ddlHours.SelectedValue %>" />
      <% if (!string.IsNullOrEmpty(ddlHours.SelectedValue)) {%>
    <input class="save2" type="submit" value="next" name="HSave" id="HSave" />
      <% } %>
<% } %>

<% if (Request.Form["HSave"] != null) { %>
    <% if (ddlHours.SelectedValue != "Sorry, no hours available on this date") { %>
       <table class="rows">
    <tr>
        <td>
            <label class="labels">Enter name:</label>
            <input class="labels" type="text" id="txtName" name="txtName" />
        </td>
    </tr>
    <tr>
        <td>
            <label class="labels">Enter email:</label>
            <input class="labels" type="email" id="txtEmail" name="txtEmail" />
        </td>
    </tr>
            <tr>
        <td>
            <label class="labels">Enter phone:</label>
            <input class="labels" type="tel" id="phoneNum" name="phoneNum" />
        </td>
    </tr>
         
          
            
     <tr>   
         <td>   
           <button class="last" type="button" name="LastSave" onclick="window.location.href='first page.aspx'">Submit</button>

            </td>

     </tr>
    <tr>
        <td> 
          
        </td>    

    </tr>
</table>
      <% if (Request.Form["RSAve"]!=null) { %>
       <a  href="first page.aspx" class="link" ><label > back to home page</label></a>
       <% } %>
        
    <% } %>
<% } %>



  </form>
</body>

</html>
