using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Create the msg object to be sent
            MailMessage msg = new MailMessage();
            //Add your email address to the recipients
            msg.To.Add("info@volstruisvlei.co.za");
            //Configure the address we are sending the mail from
            MailAddress address = new MailAddress(contactEmail.Text.ToString());
            msg.From = address;
            //Append their name in the beginning of the subject
            msg.Subject = "Booking Enquiry";
            msg.Body = "Email: " + contactEmail.Text + "\n" + "Contact Number: \n" + contactNumber.Text + "\n" + "Transport required: \n" + transportCheckBoxList.SelectedItem + "\n"+ "Question: \n" + contactMessage.Text + "\n";

            //Configure an SmtpClient to send the mail.
            SmtpClient client = new SmtpClient("nicholson.aserv.co.za");
            client.EnableSsl = false; //only enable this if your provider requires it
            //Setup credentials to login to our sender email address ("UserName", "Password")
            NetworkCredential credentials = new NetworkCredential("info@volstruisvlei.co.za", "Bush4lapa#15");
            client.Credentials = credentials;

            //Send the msg
            client.Send(msg);

            //Display some feedback to the user to let them know it was sent
            Response.Write("<script type=\"text/javascript\">alert('Thank you for your query, we will be in touch shortly');</script>");

            //Clear the form
            contactFirstName.Text = "";
            contactLastName.Text = "";
            contactEmail.Text = "";
            contactMessage.Text = "";
            transportCheckBoxList.ClearSelection();
        }
        catch
        {
            //If the message failed at some point, let the user know
            Response.Write("<script type=\"text/javascript\">alert('Your message has not been sent, please try again');</script>");
        }
    }
}