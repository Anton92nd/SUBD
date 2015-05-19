<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SUBD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 289px">
    
		<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
		</asp:GridView>
		<hr/>
    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Anton92ndConnectionString %>" SelectCommand="SELECT [name] as [Имя] FROM [exams$] ORDER BY [name]"></asp:SqlDataSource>
    
    	<asp:TextBox ID="FilterTextBox" runat="server"></asp:TextBox>
		<asp:Button ID="FilterButton" runat="server" OnClick="FilterButton_Click" Text="Фильтровать" />
    
    </div>
    </form>
</body>
</html>
