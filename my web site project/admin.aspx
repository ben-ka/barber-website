<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
   <style>
       .hello{
    font-size:40px;
    color:darkred;
    width:fit-content;
    float:right;
    margin-right:100px;
}
.font{
font-size:38px;
color:darkred;
}
.appointment{
width:2400px;
text-align:center;
margin-top: 200px;
color:darkred;

}
.heading{
    text-align:center;
    color:darkred;
    font-size:80px;
    margin-top:30px;
}
.save{
    text-align:center;
    font-size:36px;
    color:darkred;
    margin-left:1150px;
    margin-top:75px;
}
.table{
    width:1600px;
    margin-top:100px;
    margin-left:400px;
    font-size:30px;
    color:darkred;
    grid-row-gap:300px;
}
.rows{
    margin:auto;
    text-align:left;
    font-size:30px;
    margin-top:100px;
  

}

h2{
     text-align:center;
    color:darkred;
    font-size:50px;
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
   </style>
    
</head>
    
<body style="background: linear-gradient(135deg, #dddddd, #aaaaaa);">
      <% 
    string name = "";
    if (Session["AdminName"] != null)
    {
        name = Session["AdminName"].ToString();
    }
    %>
    <table>
        <tr>
            <td><a href="first page.aspx"> <img  class="a" src="pics/Thynk Unlimited Barbershop.png"  /></a></td>
            <td style="width:1000%"><label class="hello"> <i> Welcome <%= name %>   </i></label></td>
        </tr>
    </table>
    <div class="container"> 
       
       
          <h1 class="heading"> <em>admin page</em>   </h1>
        <h2><em> here you can see your appointments, block them and clear them.</em>    </h2>
    </div>
  
    <form id="form1" runat="server">
   


           <div class="appointment">
    <label class="font" for="chooseDate">choose Date: </label>
    <input class="font" type="date" id="chooseDate" name="chooseDate" />
   
    </div>
         <input class="save" type="submit" value="select" id="dateSubmit" name="dateSubmit" />

        <%
             string date="", query;
        if (Request.Form["dateSubmit"]!=null)
        {
            date = Request.Form["chooseDate"];
        }
        query = $"SELECT hour, name, email,phone FROM tblOrder WHERE dateID = (SELECT ID FROM tblDates WHERE dateInp = '{date}')";
        DataTable dt = DBFunctions.RunQuery(query);

            %>
        <%if (Request.Form["dateSubmit"]!=null)
            { %>

           
        <table  cellpadding="0"
               cellspacing="20"
            class="table">
    <tr>
        <th class="rows">Hour</th>
        <th class="rows">Name</th>
        <th class="rows" >Email</th>
        <th  >Phone</th>
    </tr>
    
  <% for (int i = 0; i < dt.Rows.Count; i++) { %>
    <% DataRow row = dt.Rows[i]; %>
    <tr class="rows">
        <td class="rows"><%= row["hour"] %></td>
        <td class="rows"><%= row["name"] %></td>
        <td class="rows"><%= row["email"] %></td>
        <td class="rows"><%= row["phone"] %></td>
        <td>
                 <form method="post">
                <input type="hidden" name="hour" value="<%= row["hour"] %>" />
                <input type="hidden" name="chooseDate" value="<%= Request.Form["chooseDate"] %>"/>
                <input type="submit" name="block" value="block appointment"/>
            </form>

        </td>
        <td>
             <form method="post">
                <input type="hidden" name="hour1" value="<%= row["hour"] %>" />
                <input type="hidden" name="chooseDate1" value="<%= Request.Form["chooseDate"] %>"/>
                <input type="submit" name="clear" value="clear appointment"/>
            </form>
        </td>

      

    </tr>
<% } %>

     <% } %>
               <%if (Request.Form["block"]!=null)
              {
                       string hour = Request.Form["hour"];
                 string dateInp = Request.Form["chooseDate"];
                    BlockAppointment(hour, dateInp);
              }%>
              <%if (Request.Form["clear"]!=null)
              {
                       string hour = Request.Form["hour1"];
                 string dateInp = Request.Form["chooseDate1"];
                    ClearAppointment(hour, dateInp);
              }%>
</table>




    </form>

</body>
</html>
