<%@ Page Language="C#" AutoEventWireup="true"Masterpagefile="~/MasterPage.master"  CodeFile="registration_form.aspx.cs" Inherits="_Default" %>


<asp:Content ID="a" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="b" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <form id="form1" runat="server">
    <div class="menu">
    <div>
    &nbsp;&nbsp;
    <table style="height: 41px; width: 352px" align="center" bgcolor="White">
    <tr>
    <td class="style8" >
        <span class="style12">&nbsp; NE</span>W&nbsp; CUS<span class="style11">TOME</span>R&nbsp; <span class="style10">FORM </span></td></tr>
    </table>

    </div>
    <div style="width: 1186px">
    
        <table class="style1">
            <tr>
            <td>
            </td>
            <td class="style3">
            </td>
            </tr>
            <tr>
                <td class="style6" align="left">
                    &nbsp;
                    FIRM NAME</td>
                <td class="style3">
                    <asp:TextBox ID="TXTFNAME"  runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TXTFNAME" ErrorMessage="DON'T EMPTY" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TXTFNAME" ErrorMessage="*" 
                        ValidationExpression="[a-zA-Z ]*$" ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
            </tr>

             <tr>
                <td class="style6" align="left">
                    &nbsp;
                    FIRM&nbsp; ADDRESS</td>
                <td class="style3">
                    <asp:TextBox ID="TXTFIRMADD" runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TXTFIRMADD" ErrorMessage="DON'T EMPTY" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td class="style6" align="left">
                    &nbsp;
                    CUSTOMER NAME</td>
                <td class="style3">
                    <asp:TextBox ID="TXTNAME" runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TXTNAME" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TXTNAME" ErrorMessage="*" 
                        ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style6"align="left">
                    &nbsp;
                    CUSTOMER ADDRESS</td>
                <td class="style3">
                    <asp:TextBox ID="TXTADD" runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TXTADD" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" align="left">
                    &nbsp; CUSTOMER DOT NO.</td>
                <td class="style3">
                    <asp:TextBox ID="TXTPHN" runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TXTPHN" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TXTPHN" ErrorMessage="*" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>

             <tr>
                <td class="style6" align="left">
                    &nbsp;
                    ALTERNATE PHONE NO.</td>
                <td class="style3">
                    <asp:TextBox ID="TXTALPHN" runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TXTALPHN" ErrorMessage="DON'T EMPTY" 
                        ValidationGroup="a">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TXTALPHN" ErrorMessage="*" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" align="left">
                    &nbsp;
                    CUSTOMER E-MAIL</td>
                <td class="style3">
                    <asp:TextBox ID="TXTMAIL" runat="server" Width="370px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TXTMAIL" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TXTMAIL" ErrorMessage="*" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

               <tr>
                <td class="style6" align="left">
                    &nbsp;
                    ALTERNATE E-MAIL</td>
                <td class="style3">
                    <asp:TextBox ID="TXTALTMAIL" runat="server" Width="370px" 
                        ontextchanged="txtaltmail_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtaltmail" ErrorMessage="DON'T EMPTY">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtaltmail" ErrorMessage="*" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
            <td>
                &nbsp;</td>
           
            <td class="style3">
            </td>
            </tr>
            <tr>
                <td class="style7" align="center">
                    <asp:Button ID="submit" runat="server" onclick="Button1_Click1" Text=" SUBMIT" 
                        Width="90px" Font-Bold="True" Height="26px" />
                &nbsp;
                    <asp:Button ID="show_data" runat="server" Font-Bold="True" Text="Show Data" 
                        Width="90px" onclick="Button4_Click" CausesValidation="False" />
                </td>
                <td class="style5" align="center">
                    <asp:Button ID="Reset" runat="server" onclick="Button2_Click" Text="RESET" 
                        Width="96px" Font-Bold="True" Height="26px" />
                &nbsp;
                    <asp:Button ID="back" runat="server" Font-Bold="True" Height="26px" 
                        onclick="Button3_Click" Text="Back" Width="96px" 
                        CausesValidation="False"  />
                </td>
            </tr>
            <tr>
            <td>
            </td>
            <td class="style3">
            </td>
            </tr>
        </table>
    
    &nbsp;</div>
   <table  align="center">
  
  <tr>
  <td class="style9">
 
        &nbsp;
    
             </td>

              </tr>
             </table>
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