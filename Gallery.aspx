<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Album" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery</title>
   <link rel="stylesheet" type="text/css" href="stylesheet.css"/>  
        
</head>
<body>
    <!-- <body style="background-image:url(Images/background/068.JPG); opacity:0.4;"> -->
    <form id="galleryPage" runat="server">
        <div>
            <div id="mainHeading">
               <center><h1><b>Gallery</b></h1></center><br /><br />
        </div>
        <div id="navigation">
            <div id="list">
                <ul>
                    <li><a href="default.aspx">Home</a></li>
                    <!-- <li><a href="Booking.aspx">Booking</a></li>-->
                    <li><a href="Contact Us.aspx">Contact Us</a></li>
                </ul>
            </div>
        </div>
        <!--<div id="topIntro">added the intro tag so that the images take the spacing same as home page-->
        <table style="width:auto; top: 50px; height: 257px; left: auto; margin:10px;"><!--changing height from 257px; width 100%;-->
            <tr>
                <td class="style4"><div id="boxedItem">
                    <asp:Image ID="Image1" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/004.jpg" Width="300px" />
                </div></td>
                <td class="style2"><div id="boxedItem">
                    <asp:Image ID="Image11" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/010.jpg" Width="300px" />
                </div></td>
                <td><div id="boxedItem">
                    <asp:Image ID="Image2" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/012.jpg" Width="300px" />
             </div></td>
            </tr>
            <tr>

                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4"><div id="boxedItem">
                    <asp:Image ID="Image3" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/014.jpg" Width="300px" />
                </div></td>
                <td class="style2"><div id="boxedItem">
                    <asp:Image ID="Image8" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/015.jpg" Width="300px" />
                </div></td>
                <td><div id="boxedItem">
                    <asp:Image ID="Image7" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/016.jpg" Width="300px" />
                </div></td>
            </tr>
            <tr>

                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4"><div id="boxedItem">
                    <asp:Image ID="Image4" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/017.JPG" Width="300px" />
               </div></td>
                <td class="style2"><div id="boxedItem">
                    <asp:Image ID="Image9" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/0171.jpg" Width="300px" />
               </div></td>
                <td><div id="boxedItem">
                    <asp:Image ID="Image10" runat="server" Height="332px" 
                        ImageUrl="~/Images/gallery/018.JPG" Width="300px" />
                </div></td>
            </tr>
            <tr>

                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    
    <!--</div>-->
    </form>
</body>
</html>
