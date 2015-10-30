<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
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
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="Gallery.aspx">Gallery</a></li>
                       <!-- <li><a href="Booking.aspx">Booking</a></li>-->
                    </ul>
                </div>
        </div>
              
        <div id="topIntro">
            <br /> <br />
            <p style="font-size:16.0pt;  font-family: Nyala; font-weight: bold;">
                <span>Choices our menu will be as follows:<br />
                    First night on arrival:<br />
                    Potjie Kos, Rooster koek/ fresh baked bread, salad, jam and cheese.<br />
                    (All will be prepared by the Hosts).<br />
                    Camp fire Breakfast after the first night sleep over: <br />
                    Farm style breakfast on the fire. (Prepared by hosts)<br />
                    Bacon, Eggs. Sausage, mushrooms, tomato, and fresh baked bread and jam.<br /><br />
                    
                    Second night dinner:<br />
                    	Braai packs consisting of 2x Lamb chops and wors will be available for sale at the price of the quotation and confirmation of the booking.<br />    

                    OR YOU MAY CHOOSE TO ORDER <br />
                    	Whole fish/snoek (any seasonal fish) can be arranged and booked for the braai, on order and on the confirmation for the second night. <br />
                    You have to braai them yourselves.<br /><br />
                    
                    Costing<br />
                    Cost will be R700.00 per head per night. Inclusive of the 2 meals dinner and breakfast.<br /><br />
                    
                    
                    Cell: 082 460 7810 (kindly send a sms as the cell reception is not good). We will reply back to you.<br />
                    Booking confirmation has to be send to charlotte@telkomsa.net<br />
                    We hope to make this a very enjoyable, fun filled and relaxing time for you. <br />
                    We look forward to you visit to this beautiful side of the world. <br />
                    	Web site in progress<br />
                    	Pictures available on request.<br />
                    Gielie and Charlotte Visser<br />
                    Volstruisvlei LAPA<br /><br />
                </span>
            </p>
         </div>

        <div id="contactForm"> <!-- TM - Created contact form including message box area -->
            <!--<table style="width:100%; margin-left: 122px;"> TM - took this out so that the table can be aligned to the left of the page-->
            
            <!-- TM Testing another version of this form, please don't delete.
            <table>
                <tr>
                    <td class="auto-style1"><asp:Label ID="contactName" runat="server" Text="* Name:" Width="150px"></asp:Label></td>
                    <td><asp:TextBox ID="nameTxt" runat="server" Width="150px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="contactSurnameLBL" runat="server" Text="* Surname:" Width="150px"></asp:Label></td>
                    <td><asp:TextBox ID="surnameTxt" runat="server" Width="150px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="contactEmailLBL" runat="server" Text="Email:" Width="150px"></asp:Label> </td>
                    <td><asp:TextBox ID="emailTxt" runat="server" Width="150px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="contactContactNumberLBL" runat="server" Text="* Contact Number:" Width="150px"></asp:Label> </td>
                    <td><asp:TextBox ID="contactNumberTxt" runat="server" Width="150px"></asp:TextBox></td>
                </tr> -->
                <!--TM - Added this section for the checkboxes -->  
                <!--<tr>
                    <td class="auto-style1"><asp:Label ID="transportNeededLbl" runat="server" Text="Transport Needed:" Width="150px"></asp:Label> </td>
                    <td class="auto-style1">                 
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem Value="Quad Bike">Quad Bike 0</asp:ListItem>
                        <asp:ListItem>Quad Bike 1</asp:ListItem>
                        <asp:ListItem>Quad Bike 2</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="breakfastNeededLbl" runat="server" Text="Breakfast Needed:" Width="150px"></asp:Label> </td>
                    <td class="auto-style1">              
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        <asp:ListItem>Farm-style Breakfast</asp:ListItem>
                        <asp:ListItem>Whole Fish or Snoek</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr> -->
                <!-- TM - End of section added -->
                <!--<tr>
                    <td class="auto-style1"><asp:Label ID="contactMessageLbl" runat="server" Text="Additional Information:" Width="150px"></asp:Label> </td>
                    <td><textarea ID="messagetxt" runat="server" rows="4" cols="50"></textarea></td>
                </tr>
                
            </table> -->
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

                Breakfast Required: <asp:CheckBoxList ID="breakfastCheckBoxList" runat="server">
                <asp:ListItem>Farm-style Breakfast</asp:ListItem>
                <asp:ListItem>Whole Fish or Snoek</asp:ListItem>
                </asp:CheckBoxList> <br />

                Transport Required: <asp:CheckBoxList ID="transportCheckBoxList" runat="server">
                <asp:ListItem>Quad Bike 0</asp:ListItem>
                <asp:ListItem>Quad Bike 1</asp:ListItem>
                <asp:ListItem>Quad Bike 2</asp:ListItem>
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
    </form>
            
    </body>
</html>
