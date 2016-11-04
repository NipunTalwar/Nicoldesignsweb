using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Hosting;
using System.Threading.Tasks;
using System.Net.Mime;
using System.ComponentModel;
using System.Configuration;
using System.Net.Configuration;




public partial class sentmailform : System.Web.UI.Page
{
    static bool mailSent = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SELECTEDVALUES"] != null)
            {
                ArrayList selectedValues = (ArrayList)Session["SELECTEDVALUES"];


                foreach (string i in selectedValues)
                {
                    Response.Write(i);

                    txtto.Text = txtto.Text + i+",";


                }
                string emailstr = txtto.Text;
                emailstr=emailstr.Remove(emailstr.Length - 1, 1);
                txtto.Text = emailstr;


              
                
                
               


            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        

          var smtpsection = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
          
         
        
        
     

        SmtpClient smtpclient = new SmtpClient();

        smtpclient.DeliveryMethod = smtpsection.DeliveryMethod;
        smtpclient.EnableSsl = smtpsection.Network.EnableSsl;
        smtpclient.Host = smtpsection.Network.Host;
        smtpclient.Port = smtpsection.Network.Port;
        smtpclient.Credentials = new NetworkCredential(smtpsection.Network.UserName, smtpsection.Network.Password);



        MailMessage msg = new MailMessage();
        msg.From =new MailAddress( smtpsection.From);
        msg.Subject = txtsub.Text;
        msg.Body = txtdescription.Text;


        if (FileUpload1.HasFile)
        {
            msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
        }


        string emailstr = txtto.Text;


            string[] emails = emailstr.Split(',');
            foreach (string i in emails)
            {

                try
                {

                    msg.To.Add(new MailAddress(i.Trim()));



                    smtpclient.Send(msg);


                    

                }

                catch (Exception esc)
                {
                    
                }

            }
            Response.Write("<script language='javascript'>alert('sucessfull send.');<script>");
           
      
               
                 
                 
             
            }

        

        

    
        
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtto.Text = "";
        txtfrom.Text = "";
        txtsub.Text = "";
        txtdescription.Text = "";
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }




    private static void SendCompletedCallback(object sender, AsyncCompletedEventArgs e)
    {
        // Get the unique identifier for this asynchronous operation.
        String token = (string)e.UserState;

        if (e.Cancelled)
        {
            Console.WriteLine("[{0}] Send canceled.", token);
        }
        if (e.Error != null)
        {
            Console.WriteLine("[{0}] {1}", token, e.Error.ToString());
        }
        else
        {
            Console.WriteLine("Message sent.");
        }
        mailSent = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
}

 