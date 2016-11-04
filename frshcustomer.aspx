<%@ Page Language="C#" AutoEventWireup="true"Masterpagefile="~/MasterPage.master" CodeFile="frshcustomer.aspx.cs" Inherits="frshcustomer" %>


<asp:Content ID="a" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="b" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <div style="height: 82px">
    
        <table style="width:1000px; background:#fff; height: 43px;" align="center">
       
            <tr>
                <td class="style1">
                    
           <span class="email_text">COUSTOMER INFORMATION FOR MAIL</span></td>
            </tr>
        </table>
    
    </div>
    <div style="height: 457px">
    
        <table style="width: 1000px; height: 230px;" align="center">
        
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Font-Bold="True" Height="118px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="694px" 
                        onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowdeleting="GridView1_RowDeleting">
                        <Columns><asp:TemplateField HeaderText="Click For Mail"><ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" 
                                oncheckedchanged="CheckBox1_CheckedChanged" Text="mail" /> </ItemTemplate> </asp:TemplateField>
                            
                            <asp:TemplateField></asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        CommandName="Delete">Delete</asp:LinkButton>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" BorderWidth="20px" Font-Bold="True" 
                            ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <br />
                </td>
     

            </tr>

            <tr>
            <td align="right">
                <asp:Button ID="mail" runat="server" Text="Mail " Font-Bold="True" 
                    Height="23px" Width="71px" onclick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="back" runat="server" Font-Bold="True" Height="23px" 
                    Text="Back" Width="73px" onclick="Button4_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
          
            </tr>
          
        </table>
    
    </div>
    </form>

</body>
</html>
</asp:Content>