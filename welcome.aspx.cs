using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //   Response.Write(@"<script language='javascript'>alert('sucessfull send.');</script>");
           
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration_form.aspx");
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("frshcustomer.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("mail_frwrded_customer.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}