<%@ Page Language="C#" AutoEventWireup="true" CodeFile="our hair products.aspx.cs" Inherits="our_hair_products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         html{
            font-family:sans-serif,serif;
            color:darkred;
            font-size:30px;
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
             padding:14px;
             text-transform:uppercase;
             color:black;
         }
         .navbar{
            display:flex;
               width:100%;    
            }
         div.navbar li a:hover{
             background-color:#0080ff;
             color:white;
         }
         .right{
             float:right;

         }

       
        .links{
            text-align:left;
            margin-left: 350px;
            width:1000px;
        }
        .par{
            text-align:center;
            font-size:30px;
        }
        .last{
            text-align:right;
            margin-left:350px;
        }
         .auto-style11 {
            margin-top: 100px;
        }
         .links{
            
            margin-left:300px;
            text-align:center;
        }
         td h1{
             text-decoration-style:double;
             color:darkred;
             font-style:italic;
             text-align:center;

         }
        .amazon{
            margin-top:60px;
            width:auto;
            text-align:center;

        }
        

        .auto-style12 {
            width:auto;
            text-align:center;
            
        }
        .a{
              width: 300px;
            height:300px;
            text-align:left;
            float:left;
            margin-top:35px;
            border:none;
            margin-left:0px;
           
        }

    </style>
</head>
<body style="background: linear-gradient(135deg, #dddddd, #aaaaaa);">    
    <form id="form1" runat="server">
            <div class="navbar" >   
             <nav >
            <ul >
               <li ><a href="registration to admin.aspx" > Admin login </a>   </li>
                <li ><a href="Booking appointments.aspx" > Order appointment</a>   </li>
                
               
                <li class="right"><a href="our credo.aspx"> Our credo</a>    </li>
                <li class="right"><a href="our haircuts.aspx" > Haircuts </a>   </li>
                
                 
            </ul>


        </nav>
        </div>
        
        <table>
            <tr>
                 <td><a href="first page.aspx"> <img  class="a" src="pics/Thynk Unlimited Barbershop.png"  /></a>  </td>
            </tr>

            <tr> <td class="auto-style12"> <h1>  <em> our products </em> </h1></td>
              
            </tr>
            <tr>
                <td class="auto-style12">
                    <p class="par" >In Ben's barbershop, we also sell hair texurizing products.Hair texturizing products are a must-have for anyone looking to add body, volume, and texture to their hair. Whether you have fine, flat hair and want to add some lift and bounce, or thick, curly hair that you want to tame and control, texturizing products can help you achieve the look you desire. Whether you prefer a light, airy hold or a stronger, more defined finish, there is a texturizing product that will suit your needs. Plus, with a wide range of formulas and scents to choose from, you can find a product that not only works wonders on your hair, but also smells great too! So why wait? Try a hair texturizing product today and discover the difference it can make!</p>
                </td>
            </tr>
            <tr>
          
               

            </tr>
            <tr><td class="auto-style12">
               <iframe width="1000" height="515" src="https://www.youtube.com/embed/PmTYoGhrt3M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="true"></iframe> 

                </td>
             

            </tr>
            </table>
                
                   <div class="auto-style12" style="margin-top:100px;"> 
                       <label><em>get our hair products for 50% off</em></label>
                   </div>
        <div class="auto-style12">
                                         <a href="https://www.amazon.com/Viking-Revolution-Salt-Spray-Hair/dp/B0B975F6TX/ref=sr_1_8?crid=1HZ5M24JR9T4S&keywords=hair+texturizing+products+for+men&qid=1671959064&sprefix=hair+texurizing+products+for+men%2Caps%2C182&sr=8-8"> <img src="pics/first sea salt spray.jpg" height="300" width="300" /> </a>   </td>
                           <a href="https://www.amazon.com/Extreme-Natural-Ingredients-Definition-Products/dp/B08XDVNRHX/ref=sr_1_2_sspa?crid=2VJ97Z1W1JIPB&keywords=clay+for+men&qid=1671959588&sprefix=clay+for+men%2Caps%2C196&sr=8-2-spons&psc=1&smid=AL9E73CQX80N2&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTUc0RjA3NklUU1RPJmVuY3J5cHRlZElkPUEwMDY1Njc3MkkyT0NQSVRGSVlEMSZlbmNyeXB0ZWRBZElkPUEwOTAwMjU3MzExODNZMENKRlpSSyZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU="><img src="pics/hair clay.jpg" height="300" width="300" /></a>

        </div>
                       
                 
                           
                   
               
                
                  
            
          
       
    </form>
</body>
</html>
