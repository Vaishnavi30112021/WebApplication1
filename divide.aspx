<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="divide.aspx.cs" Inherits="WebApplication1.divide" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
    <div class="text-center">
    <h1>NEW CUSTOMER LOGIN DETAILS</h1>
        </div>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col">

                    <h2>Personal Details</h2>
                    <p>&nbsp;</p>

                    <asp:Label ID="lblName" runat="server" placeholder="Enter Your Name" Text="Name:"></asp:Label>

                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                    <br />
                    <br />


                    <asp:Label ID="lblAge" runat="server" placeholder="Enter Your Age" Text="Age:"></asp:Label>

                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                    <br />
                    <br />

                </div>


                <div class="col">
                    <h2>Contact Details</h2>
                    <p>&nbsp;</p>

                    <asp:Label ID="lblName1" runat="server" placeholder="Enter Your Name" Text="Name:"></asp:Label>

                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />


                    <asp:Label ID="lblcontact" runat="server" placeholder="Enter Your Age" Text="Contact:"></asp:Label>

                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />

                </div>
                  <div class="container-fluid">
            <div class="text-center">

                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="SUBMIT" />

                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="CLEAR" />
            </div>
        </div>

          </div>
        </div>

    </form>
</body>
</html>
