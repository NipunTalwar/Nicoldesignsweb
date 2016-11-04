using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

 
public partial class _Default : System.Web.UI.Page 
{
    static string name;
    
    
    protected void Page_Load(object sender, EventArgs e)
       {
       
        }



    protected void Button1_Click1(object sender, EventArgs e)
    {


       
        try
        {

            SqlConnection con = new SqlConnection();

            con.ConnectionString = "Data Source=RUPALI-PC;Initial Catalog=Qutation;Integrated Security=True";
            con.Open();

            SqlCommand cmd;
           // SqlDataReader dr;
           
            string date= DateTime.Now.Date.ToShortDateString();
            string str = "insert into NEW_CUSTOMER values('" + TXTFNAME.Text + "','" + TXTFIRMADD.Text + "','" + TXTNAME.Text + "','" + TXTADD.Text + "','" + TXTPHN.Text + "','" + TXTALPHN.Text + "','" + TXTMAIL.Text + "','" + TXTALTMAIL.Text + "','" + date+ "')";
            cmd = new SqlCommand();

            cmd.CommandText = str;
            cmd.Connection = con;
            
          int rs=  cmd.ExecuteNonQuery();


          if (rs == 1)
              Response.Write("sucessful");
          else
              Response.Write("unsucessful");

            //Label1.Text = "Data Saved";
            //cmd = new SqlCommand("select max(ID) from NEW_CUSTOMER", con);
            //dr = cmd.ExecuteReader();
            //string id = "";
            //while (dr.Read())
            //{
            //    id = dr[0].ToString();
            //   // Label2.Text = "Customer Id =" + id;
               
            //}

            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "alert", "<script>alert('Data is saved');</script>", false);
            reset();
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
         reset();
        }
        catch (Exception exx)
        {
            Response.Write(exx.Message);
        }
    }

    protected void reset()
    {

        TXTFNAME.Text = "";
        TXTFIRMADD.Text = "";
        TXTNAME.Text = "";
        TXTADD.Text = "";
        TXTPHN.Text = "";
        TXTALPHN.Text = "";
        TXTMAIL.Text = "";
        TXTALTMAIL.Text = "";
    }
    protected void txtaltmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("frshcustomer.aspx");
    }
}
