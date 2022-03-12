<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project1.aspx.cs" Inherits="WebApplication1.Project1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Customer Details
        </h2>
        <div>
            <b>
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></b>
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            <br />
            <b>
                <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></b>
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        </div>
        <br />
        
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        
    </form>
</body>
</html>
