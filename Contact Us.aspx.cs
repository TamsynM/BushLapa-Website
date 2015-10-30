using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Added in function to send the email from the website to the owner
    protected void SendMail()
    {
        // Gmail Address to send the information to
        var fromAddress = "cherosky30.cw@gmail.com";
        // The persons email address who is making the query
        var toAddress = contactEmail.Text.ToString();
        //Password of your gmail address
        const string fromPassword = "dragon4u";
        // Passing the values and make a email format to display
        string subject = "Booking Enquiry";
        string body = "From: " + contactFirstName.Text + "" + contactLastName.Text + "\n";
        body += "Email: " + contactEmail.Text + "\n";
        body += "Subject: Booking Enquiry" + "\n";
        body += "Contact Number: \n" + contactNumber.Text + "\n";
        body += "Question: \n" + contactMessage.Text + "\n";
        body += "Breakfast required: \n" + breakfastCheckBoxList.SelectedItem + "\n";
        body += "Transport required: \n" + transportCheckBoxList.SelectedItem + "\n";

        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
        Response.Write("<script type=\"text/javascript\">alert('Thank you for your query, we will be in touch shortly');</script>");
    }

    //Function to state what happens when the Submit button is pressed.
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Run the sendmail function and clear all the boxes 
            SendMail();
            contactFirstName.Text = "";
            contactLastName.Text = "";
            contactEmail.Text = "";
            contactMessage.Text = "";
            breakfastCheckBoxList.ClearSelection();
            transportCheckBoxList.ClearSelection();
        }
        catch (Exception) { }
    }

}