<%@ Page Language="C#" AutoEventWireup="true" CodeFile="our credo.aspx.cs" Inherits="our_credo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
          html{
            font-family:sans-serif;
            text-align:center;
            color:darkred;
         
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
             padding:20px;
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
        .auto-style1 {
            text-align:left;
            margin-top:70px;
            font-size:30px;
        }
        .auto-style2{
            text-align:right;
        }
       
        
          .auto-style11 {
            margin-top:100px;
        }
        
       
           .links{
            
            margin-left:300px;
            text-align:center;
        }
        p{
            width:100%;
            font-size:28px;
            font-style:oblique;

        }
        table {
            font-size:28px;
            width:100%;
            margin-right:50px;
        }
        table tr[id="img"] td{
           
            margin:0;
           
            border-radius:50%;
        }
        tr[id="img"] img{
            width:500px;
            height:500px;
        }
          .a{
              width: 300px;
            height:300px;
            text-align:left;
           
            border:none;
            margin-left:0px;
           
            float:left;
           
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
                
               
              
                <li class="right"><a href="our haircuts.aspx" > Haircuts </a>   </li>
                 <li class="right"><a href="our hair products.aspx">  Products</a></li>
                 
            </ul>


        </nav>
        </div >
        <table >
            <tr>
                <td style="width:1200px">
                     <a href="first page.aspx"> <img  class="a" src="pics/Thynk Unlimited Barbershop.png" /> </a>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td><h1 class="auto-style1"> <i>our credo</i></h1></td>
            </tr>
        </table>
     
           
               
            
           
                      <p >At our barbershop, we believe that every person deserves to feel confident and look their best. That's why we are dedicated to providing top-notch grooming services that cater to the unique needs and preferences of each and every one of our clients. We are proud to offer a comfortable and welcoming space where our clients can relax and enjoy a high-quality grooming experience. Our skilled barbers are trained to listen to your needs, communicate openly, and provide expert advice to help you achieve your desired look. Whether you need a quick trim or a full grooming overhaul, we are here to help you feel and look your best. Our credo is simple: to provide the best possible grooming experience to each and every one of our clients.   </p>
              <table id="tb2">   
                  <tr>
                      <td>  

                      </td>
                      <td>
                          <label><strong> here are our top barbers: </strong></label>
                      </td>
                  </tr>
                  <tr id="img">
                      <td>  <img src="pics/barber 1.jpg"    /> </td>
                      <td>  <img src="pics/barber 2.jpg"   /></td>
                      <td>  <img src="pics/barber 3.jfif"   /></td>
                  </tr>
                  <tr id="names">
                      <td>  <label> john - 0598372846 </label></td>
                      <td> <label> micheal - 0530020672  </label> </td>
                      <td>  <label> david - 0565542702 </label>
                 </td>
                  </tr>



              </table>
                      
            
                
                
             
              
                    
                  
                
               
             
                



      

    </form>
</body>
</html>
