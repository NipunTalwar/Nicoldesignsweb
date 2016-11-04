<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="welcome.aspx.cs" Inherits="welcome" %>





<asp:Content ID="a" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="b" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <div class="menu">
    <section class="color-1">
    <p>
        <span class="welcome">Welcome Page</span>
        
        
        
        
        <table style="width: 30%; height: 89px;" align="center">
            <tr>
                <td>
    <asp:Button ID="registration" class="btn btn-1 btn-1e" runat="server" Text="Registration" Font-Bold="True" 
                        onclick="Button2_Click" Width="350px" />
                    </td>
              
              <td align="center">
                  <asp:Button ID="new_customer" class="btn btn-1 btn-1e" runat="server" onclick="Button3_Click" 
                      Text="New Customers Data" Font-Bold="True" Width="350px" />
                    </td>
            </tr>
     <tr>
     <td align="center">
         <asp:Button ID="mail_send" class="btn btn-1 btn-1e"  runat="server" Text="Mail Send Customers" 
             Font-Bold="True" Width="350px" onclick="Button1_Click"/>
     
     </td>

     <td align="center">
         <asp:Button ID="mail_response" class="btn btn-1 btn-1e"  runat="server" Text="Mail Response Customers" 
             Font-Bold="True" Width="350px" onclick="Button4_Click" />
     
     </td>

     </tr>
           
        </table>
        </p>
			</section>
    </div>

    </form>
    <div class="footer">
       <p>
       © All Rights Reserved | Design by <a href="#"> Nicol Software Technology Pvt. Ltd.</a>

       </p>
       
       </div>
</body>
</html>


</asp:Content>