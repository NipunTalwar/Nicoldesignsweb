using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;

public partial class frshcustomer : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            FillGrid();   

        }


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con1"].ToString());
      
        string st = "";
        ArrayList selectedValues = new ArrayList();
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                if (chkRow.Checked)
                {

                    // st = st.Split(' ') + row.Cells[9].Text.ToString();//
                    st = row.Cells[10].Text;

                    selectedValues.Add(st);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into checked_data(Firm_Name,Firm_Add,Customer_Name,Customer_Add,Customer_Phone,Customer_Phone2,Customer_Mail,Customer_Mail2,Date) values(@firm_name,@firm_add,@Customer_name,@customer_address,@customer_phone,@customer_phone2,@customer_mail,@Customer_mail2,@date)", con);
                    cmd.Parameters.AddWithValue("@firm_name", row.Cells[4].Text.ToString());
                    cmd.Parameters.AddWithValue("@firm_add", row.Cells[5].Text.ToString());
                    cmd.Parameters.AddWithValue("@Customer_name", row.Cells[6].Text.ToString());
                    cmd.Parameters.AddWithValue("@customer_address", row.Cells[7].Text.ToString());
                    cmd.Parameters.AddWithValue("@customer_phone", row.Cells[8].Text.ToString());
                    cmd.Parameters.AddWithValue("@customer_phone2", row.Cells[9].Text.ToString());
                    cmd.Parameters.AddWithValue("@customer_mail", row.Cells[10].Text.ToString());
                    cmd.Parameters.AddWithValue("@customer_mail2", row.Cells[11].Text.ToString());
                    cmd.Parameters.AddWithValue("@date", row.Cells[12].Text.ToString());
                    cmd.ExecuteNonQuery();
                    con.Close();




                }
            }


        }



        Session["SELECTEDVALUES"] = selectedValues;
        Response.Redirect("sentmailform.aspx");
        //DataRow dr = ((DataTable)Session["select item"]).NewRow();
        //dr["email"] = st;//row.Cells[9].Text.ToString();
        Label1.Text = "<b>Selected EmpDetails: </b>" + st;
    }
    


    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //GridView1.PageIndex = e.NewPageIndex;

        //GridView1.DataSource = Session["val"];
        //GridView1.DataBind();


    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
      //  Response.Write("<script language='javascript'>alert('sucessfull deleted');<script>");

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con1"].ToString());
      
        int a;
        a = Convert.ToInt32( GridView1.Rows[e.RowIndex].Cells[3].Text);
        Response.Write(a);
          con.ConnectionString = "Data Source=RUPALI-PC;Initial Catalog=Qutation;Integrated Security=True";
          con.Open(); 
          SqlCommand cmd =new SqlCommand();
          cmd.CommandText = "delete from NEW_CUSTOMER where NewID='"+ a+"'";

          cmd.Connection = con;
        
        int rs= cmd.ExecuteNonQuery();


         if (rs == 1)
         {

             Response.Write("<script language='javascript'>alert('sucessfull deleted');<script>");
             FillGrid();
           
         }
        else
         {
             Response.Write("<script language='javascript'>alert('not sucessfull');<script>");
           
         }
         


          con.Close();
          

    }




    void FillGrid()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con1"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;

        con.Open();
        cmd = new SqlCommand("select * from NEW_CUSTOMER", con);
        dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    
       // CreateDataTable();

    
    }

    /*
    protected void CreateDataTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("email");
        Session["select item"] = dt;
    }
    */


}

