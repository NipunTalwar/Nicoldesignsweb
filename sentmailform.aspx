<%@ Page Language="C#" AutoEventWireup="true" Masterpagefile="~/MasterPage.master" CodeFile="sentmailform.aspx.cs" Inherits="sentmailform"  %>


<asp:Content ID="a" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="b" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



<html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <form id="form1" runat="server">
     <div class="menu">
    <div style="height: 528px">
    <div style="height: 66px">
    &nbsp;<table align="center" style="height: 35px; width: 153px">
    <tr>
    <td class="style2">
       <span class="email_text"> EMAIL FORM</span></td>
    </tr>
    </table>
    
    </div>



    
        <table  align="center" style="width: 660px; color:#fff; height: 456px">
            <tr>
                <td class="style">
                    To</td>
                <td>
                    <asp:TextBox ID="txtto" runat="server" Height="32px" Width="494px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtto" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    </td>
               
            </tr>
            <tr>
                <td class="style">
                    From</td>
                <td>
                    <asp:TextBox ID="txtfrom" runat="server" Height="30px" Width="494px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtfrom" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    </td>
              
            </tr>
            <tr>
                <td class="style">
                    Subject</td>
                <td>
                    <asp:TextBox ID="txtsub" runat="server" Height="31px" Width="494px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtsub" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    </td>
       
            </tr>
                <tr>
                <td class="style">
                    Description
                    </td>
                <td>
                    <asp:TextBox ID="txtdescription" runat="server" Height="115px" TextMode="MultiLine" 
                        Width="494px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdescription" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    </td>
       
            </tr>
                <tr>
                <td class="style">
                    Image Browse</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="227px" />
                    </td>
       
            </tr>
                <tr>
                <td class="style">
                    </td>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Send" 
                        Height="25px" onclick="Button1_Click" Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Reset" 
                        Height="26px" onclick="Button2_Click" Width="79px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="25px" 
                        Text="Back" Width="71px" onclick="Button3_Click" 
                        PostBackUrl="~/welcome.aspx" />
                    &nbsp;
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" />
                    </td>
       
            </tr>

        </table>




    
    </div>

    </div>
    <div class="footer">
       <p>
       © All Rights Reserved | Design by <a href="#"> Nicol Software Technology Pvt. Ltd.</a>

       </p>
       
       </div>
    </form>
</body>
</html>

</asp:Content>