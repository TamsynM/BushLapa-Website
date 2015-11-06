using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
using System.Configuration;

public partial class Contact_Us : System.Web.UI.Page
{
    OdbcDataAdapter odbcda;
    //SqlDataAdapter sqlda;
    DataSet ds;
    string str;
    DataTable dt;
    OdbcCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            using (OdbcConnection connection = new OdbcConnection(ConfigurationManager.ConnectionStrings["MySQLConnStr"].ConnectionString))
            {
                connection.Open();
                using (OdbcCommand command = new OdbcCommand("SELECT booked_dates FROM confirmed_dates", connection))
                using (OdbcDataReader dr = command.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        Response.Write(dr["booked_dates"].ToString() + "<br />");
                        // Calendar1_DayRender;

                    }

                    //end of original statement
                    dr.Close();
                }
                connection.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
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

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        try
        {
            using (OdbcConnection connection2 = new OdbcConnection(ConfigurationManager.ConnectionStrings["MySQLConnStr"].ConnectionString))
            {
                connection2.Open();
                using (OdbcCommand command2 = new OdbcCommand("SELECT booked_dates FROM confirmed_dates", connection2))
                using (OdbcDataReader dr2 = command2.ExecuteReader())
                {
                    while (dr2.Read())
                    {
                        //Test to show calendar  
                        str = "SELECT booked_dates FROM confirmed_dates";
                        com = new OdbcCommand(str, connection2);
                        odbcda = new OdbcDataAdapter(com);
                        dt = new DataTable();
                        odbcda.Fill(dt);

                        DateTime occasionDate;

                        if (dt.Rows.Count > 0)
                        {
                            for (int i = 0; i < dt.Rows.Count; i++)
                            {
                                occasionDate = Convert.ToDateTime(dt.Rows[i]["booked_dates"]);
                                if (e.Day.Date == occasionDate)
                                {
                                    e.Cell.BackColor = System.Drawing.Color.Red;
                                }
                            }
                        }

                    }

                    //end of original statement
                    dr2.Close();
                }
                connection2.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
    }
}