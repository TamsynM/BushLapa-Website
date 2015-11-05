<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
	  <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"> <!-- TM - Added this line to include a page icon -->
    <title>Contact Us</title>
</head>
<body>
    <form id="contactUs" runat="server">
        <div id="mainHeading">
                <center><h1>Contact Us</h1></center><br /><br />
        </div>
        
        <div id="navigation">
                <div id="list">
                    <ul>
                        <li><a href="default.aspx">Home</a></li>
                        <li><a href="Gallery.aspx">Gallery</a></li>
                       <!-- <li><a href="Booking.aspx">Booking</a></li>-->
                    </ul>
                </div>
        </div>
              
        <div id="topIntro">
            <br /> <br />
             <table style="width:100%; font-size:16.0pt;  font-family: Nyala; font-weight: bold; text-align:center; ">
                 <tr>    
                     <td>
                        <u> First night on arrival:</u> <br /><br />
                Potjie Kos, Rooster koek/ fresh baked bread, salad, jam and cheese. <br /><br />
                <u>Camp fire breakfast after the first night sleep over:</u> <br /><br />
               Farm style breakfast on the fire: <br />
                Bacon, Eggs, sausage, mushrooms, tomato, and freshly baked bread and jam.<br /><br />


                <u>Second night dinner:</u><br /><br />
                Braai packs consisting of 2x Lamb chops and wors will be available for sale at the price of the quotation and confirmation of the booking. <br />  <br /> 
                <u>OR YOU MAY CHOOSE TO ORDER</u> <br /><br />
                Whole fish/snoek (any seasonal fish) can be arranged and booked for you to put on the braai - available on order and on the confirmation for the second night. Wood will be supplied.
                Cleaning of the LAPA on departure for Volstuisvlei staff.<br /><br />
                Please note, due to our venue being completely private we are able to be flexible with bookings or arrangements to suit each situation; this can be accommodated and arranged on the initial confirmation of the booking.<br /><br />
                <u>Accommodation fees:</u> <br />
                R700.00 per head per night; Inclusive of the 2 meals: Dinner and breakfast.<br />
                Please send you booking and related confirmation thereof to: charlotte@telkomsa.net<br />

                     </td>
                 </tr>
                 </table>
         </div>
       
        <div id="contactForm"> 
             <asp:Panel ID="ContactUsPanel" runat="server" DefaultButton="btnSubmit">
                <p>Contact Us using the below form</p>
                <p>Name: <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                ControlToValidate="contactFirstName" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactFirstName" runat="server" Width="250px" /><br />
                
                Surname: <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                ControlToValidate="contactLastName" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactLastName" runat="server" Width="250px" /><br />
                
                Email: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="contactEmail" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactEmail" runat="server" Width="250px" />
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="contactEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                ValidationGroup="save" /><br />
                
                Contact Number: <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                ControlToValidate="contactNumber" ValidationGroup="save" /><br />
                <asp:TextBox ID="contactNumber" runat="server" Width="400px" /><br /> <br />

                Transport Required: <asp:CheckBoxList ID="transportCheckBoxList" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                </asp:CheckBoxList><br />

                Additional Information: <br />
                <asp:TextBox ID="contactMessage" runat="server" 
                TextMode="MultiLine" Rows="10" Width="400px" />
                </p>
                
                <p>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="save" />
                </p>
            </asp:Panel>
               
        </div>
        <br />
        <div id="copyright;">&copy Brandon Gregory, Seth Luther and <a href="https://about.me/TamsynMurphy">Tamsyn Murphy</a> </div>
    </form>
            
    </body>
</html>
