<%@ Page Language="C#" AutoEventWireup="true" CodeFile="our haircuts.aspx.cs" Inherits="our_haircuts" %>

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
         table{
             text-align:center;
             font-size:30px;
         }



       
       
                
      
                
        .links{
            
            margin-left:400px;
            text-align:center;
        }
        img{
            width:450px;
            height:320px;
            text-align:center;
        }
        table td{
            width:900px;
        }
        
          
       
        
          
           .a{
              width: 300px;
            height:300px;
            text-align:left;
            margin-top:35px;
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
                
               
                <li class="right"><a href="our credo.aspx"> Our credo</a>    </li>
                <li class="right"><a href="our hair products.aspx" > products </a>   </li>
                
                 
            </ul>


        </nav>
        </div>


       <table >  
           <tr>
                <td class="auto-style10"><a href="first page.aspx"> <img  class="a" src="pics/Thynk Unlimited Barbershop.png"  /></a>  </td>
           </tr>
            <tr>
                <td class="auto-style10">    </td>
                <td >
                    <h1 style="color:darkred"class="auto-style1" >  our haircuts    </h1>
                </td>
                <td>    </td>
              
            </tr>
           <tr>
               <td class="auto-style10"> </td>
               <td> <strong><label>these are some of the haircuts that we provide</label></strong></td></tr>
          
           <tr>
               <th class="auto-style10" >
                   <h3 class="auto-style9"> the buzz cut </h3> 
                 </th>
               <th>    <h3 class ="auto-style9"> the crew cut     </h3>      
               </th>
               
              
               
               <th ><h3 class="auto-style9">The French crop </h3> </th>


           </tr>
           
           <tr>     
                <td class="auto-style10">
                   
                     <a href="https://www.youtube.com/watch?v=VdUfzP_xD5I">  <img src ="pics/buzz cut.jpg" /> </a> 
                </td>
                <td>
                   
                    <a href="https://www.youtube.com/watch?v=PDmGbo_AGpw"> <img src="pics/crew cut.jfif"  /></a>
                </td>
               <td>
                  
                    <a href="https://www.youtube.com/watch?v=QsdG540PpnY">  <img src="pics/french crop.jpg" /> </a>
               </td>
           </tr>
           <tr>
                 <th class="auto-style10" >
                   <h3 class="auto-style9"> The side part </h3> 
                 </th>
               <th>    <h3 class ="auto-style9"> The slick back     </h3>      
               </th>
               
              
               
               <th ><h3 class="auto-style9">The undercut </h3> </th>
           </tr>
           <tr> 
               <td class="auto-style10">
                   <a href="https://www.youtube.com/watch?v=f95HcIGYDHk"><img src="pics/side part.jpg" /></a>
               </td>
               <td>
                   <a href="https://www.youtube.com/watch?v=g_Xc4sAQkV4"><img src="pics/the slick back.jpg"  /></a>
               </td>
               <td>
                   <a href="https://www.youtube.com/watch?v=Aar9mfk7O3Y"><img src="pics/long hair.jpg"  /></a>
               </td>
            
           </tr>
            </table>
           <table>
         
           </table>
             
            
              
          
    




    </form>
</body>
</html>
