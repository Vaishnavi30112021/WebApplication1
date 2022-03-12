<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo2.aspx.cs" Inherits="WebApplication1.demo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h1>NEW CUSTOMER DETAILS</h1>
                </div>
            </div>

        </div>



        <div class="col">
            <h1>Contact Details</h1>
            <div class="a">
                <table cellpadding="2" class="auto-style1">

                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="col">
            <h1>Personal Details</h1>
            <div class="b">
                <table cellpadding="2" class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Age"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="container">

            <div class="text-center">

                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="SUBMIT" />

                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="CLEAR" />
            </div>
        </div>


    </form>
</body>

</html>
