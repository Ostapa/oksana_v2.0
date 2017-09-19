using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Oksana_4._5._2
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendEmail_Click(object sender, EventArgs e)
        {
            string clientName = fName.Text + lName.Text;
            string phone = telNum.Text;
            string comments = commentTxt.Text;

            SmtpClient smtpClient = new SmtpClient("127.0.0.1", 25);

            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("oksana@sellwithoksana.com");
                MailAddress toAddress = new MailAddress("o.hamarnyk@gmail.com");
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Test";
                smtpClient.EnableSsl = false;

                // SET UseDefaultCredentials to false BEFORE setting Credentials - we all have 'ugh' moments
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("oksana@sellwithoksana.com", "L9cum*81");


                smtpClient.Send(message);
                //statusLabel.Text = "Email sent.";
            }
            catch (Exception ex)
            {
                commentTxt.Text = "Coudn't send the message!" + ex.Message;
            }
        }
    }
}