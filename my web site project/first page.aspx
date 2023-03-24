<%@ Page Language="C#" AutoEventWireup="true" CodeFile="first page.aspx.cs" Inherits="first_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
        <style type="text/css">

            html{
                font-family:sans-serif;
           
         
            }
            ul{
                font-size:18px;
            }
            body{
                line-height:1;
                margin:0;
            }
            nav,header,footer{
                display:block;
            }
            nav{
                width:100%;
                margin:0;
            }
            nav ul{
                background-color:#FFDF00;
                overflow:hidden;
                margin:0;
                padding:0;
                display:block;

            }
             ul li{
              list-style:none;
              text-decoration:none;
              float:left;


                }
             li a{
                 display:block;
                 text-decoration:none;
                 min-height:18px;
                 text-align:center;
            
                 text-transform:uppercase;
                 color:black;
                 padding:20px;
             }

             .navbar{
                display:block;
                  width:100%;    
                }
             div.navbar li a:hover{
                 background-color:#0080ff;
                 color:white;
             }
             .right{
                 float:right;

             }
             li.dropdown{
                 display:none;

             }
             /*#######mobile check#########*/
             @media screen and (max-width: 840px) {
                  ul.navbar li{
                      display:none;
                 }
                
            
 
          ul.navbar  li.dropdown {
             display: block; 
             float:right;
       
            }
          ul.navbar.responsive li.dropdown{
              position:absolute;
              top:0;
              right:0;

          }
          ul.navbar.responsive  {
              position:relative;
          }
          ul.navbar.responsive li {
              display:inline;
              float:none;
          }
          ul.navbar.responsive a  {
              display:block;
              text-align:left;
          }


    table td.auto-style3 p{
        text-align:left;
    }
    .auto-style11 {
    margin-left: 0; 
    }
    .auto-style5 {
    font-size: 24px; 
    }
    .auto-style7 img {
    max-width: 100%; 
    height: auto;
    }
    .margin {
    margin-top: 50px; 
    }
        .order {
    margin-left: 0; 
    }
    }
      
      
            .auto-style3 {
                width:contain ;
            }
            .auto-style5 {
                width: contain;
                height: auto;
                text-align:center;
                color:darkred;
            }
            .auto-style6 {
                text-align: center;
                font-size:28px;
                color:darkred;
            }
            .auto-style7 {
                width: contain;
                text-align: center;
            }
      
            .auto-style11 {
                width: 300px;
                height:300px;
                float:left;
            
                border:none;
                margin-top:20px;
         
     
           
          
            }
            .margin{
                margin-top:100px;
            }
            .order{
                margin-left:400px;
                color:darkred;
                font-size:40px;
                margin-top:100px;
                height:200px;
                width:500px;
            }
            .container{
                 background: linear-gradient(to left,##ccffff,#00cccc);
            }
            </style>
</head>
<body style="background: linear-gradient(135deg, #dddddd, #aaaaaa); height: 119px">
    <form id="form1" runat="server">
        
             <nav  >
            <ul class="navbar" id="navigationPhone">
                 <li class="dropdown"><a href="javascript:void(0);" onclick="mobileDDl()">&#9776; </a></li>
               <li ><a href="registration to admin.aspx" > Admin login </a>   </li>
                <li ><a href="Booking appointments.aspx" > Order appointment</a>   </li>
                
               
                <li class="right"><a href="our credo.aspx"> Our credo</a>    </li>
                <li class="right"><a href="our haircuts.aspx" > Haircuts </a>   </li>
                 <li class="right"><a href="our hair products.aspx">  Products</a></li>                
            </ul>
        </nav>          
        <script>
            function mobileDDl()
            {
                var x = document.getElementById("navigationPhone");
                if (x.className === "navbar") {
                    x.className += " responsive";

                }
                else {
                    x.className="navbar"
                }




            }
        </script>
             
                      <table  class="auto-style3"> 

                            <td><a href="first page.aspx"> <img  class="auto-style11" src="pics/Thynk Unlimited Barbershop.png"  /></a> </td>
                      </table>
                       
                 <hr />
           
             
             <table> 
                 
            <tr>   
                    
                <td >
                    <div class="container">
                          <h1 class="auto-style5" > 
                        
                      <b>welcome to the barbershop</b>  
                   
                    </h1>
                    </div>
                  
                </td>
            </tr>
            <tr>  
                <td class="auto-style3">   
                    <p style="color:darkred"  class="auto-style6">
                
                        Welcome to ben's barbershop! We are a locally owned and operated business dedicated to providing our customers with the highest quality haircuts and grooming services.
                        Our experienced and talented team of barbers is committed to delivering a personalized and memorable experience for every customer.
                        In addition to traditional haircuts, we also offer hot towel shaves, beard trims, and other grooming services. Our comfortable and relaxed atmosphere is the perfect place to sit back and relax while we work our magic.
                        Come visit us today and see why we are the best barbershop in town. 
                        At our barbershop, we pride ourselves on offering top-notch haircuts and grooming services in a friendly and welcoming atmosphere. Our team of skilled barbers has years of experience and a passion for what they do, and it shows in the quality of their work. Whether you are looking for a classic haircut, a modern style, or something in between, we have got you covered. In addition to haircuts,. So why wait? Come visit us today and see for yourself why we are the go-to barbershop in town!
                    </p>




                   
                </td>
            </tr>
            <tr> 
              
               <td class="auto-style7">   <img src="pics/barbershop look.jpg" height="500" width="900" /> </td>
                
               </tr>
                 <tr>
                     <td>
                         
                           
                     </td>
                 </tr>
                   </table>  
           
            
           
            <hr />
               





      
    </form>
</body>
</html>
