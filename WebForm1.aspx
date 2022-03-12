<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           

            <table cellpadding="2" class="auto-style1">
                <tr>
                    <td>
                        
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click" />
                    </td>
                </tr>
            </table>
            
        </div>
        
       
    </form>
</body>
</html>
