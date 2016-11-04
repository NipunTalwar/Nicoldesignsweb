<%@ Page Language="C#" AutoEventWireup="true" Masterpagefile="~/MasterPage.master" CodeFile="mail_frwrded_customer.aspx.cs" Inherits="mail_frwrded_customer" %>



<asp:Content ID="a" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="b" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <div style="height: 466px">
    
        <table style="width:38%; height: 76px;" align="center">
            <tr>
                <td class="style1">
                    <strong>Customer&nbsp; Response&nbsp; Mail</strong></td>
               
            </tr>
       
        </table>
    
        <table style="width:53%; height: 244px;" align="center">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Height="179px" Width="424px">
                         <Columns><asp:TemplateField HeaderText="Response"><ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" /> </ItemTemplate> </asp:TemplateField>
                            
                            <asp:TemplateField></asp:TemplateField>
                            
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            
            </tr>
        <tr>
        <td align="center">
            <asp:Button ID="submit" runat="server" Text="Submit" Font-Bold="True" 
                onclick="Button1_Click" />
        &nbsp;&nbsp;
            <asp:Button ID="back" runat="server" Text="Back" Font-Bold="True" 
                onclick="Button2_Click" />
        </td>
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>