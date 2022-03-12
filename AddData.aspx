<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddData.aspx.cs" Inherits="WebApplication1.AddData" %>

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
            <div class="text-center">

                <h2>Customer Details</h2>
                <p>&nbsp;</p>

                <asp:Label ID="lblName" runat="server" placeholder="Enter Your Name" Text="Name:"></asp:Label>

                <asp:TextBox ID="txt1" runat="server" Width="229px"></asp:TextBox>
                <br />
                <br />


                <asp:Label ID="lblAge" runat="server" placeholder="Enter Your Age" Text="Age:"></asp:Label>

                <asp:TextBox ID="txt2" runat="server" Width="235px"></asp:TextBox>
                <br />
                <br />



                <asp:Button ID="btnInsert" class="btn btn-primary" runat="server" Text="Insert" OnClick="btnInsert_Click" />&nbsp;
            <asp:Button ID="btnUpdate" class="btn btn-primary" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp;
            <asp:Button ID="btnDelete" class="btn btn-primary" runat="server" Text="Delete" OnClick="btnDelete_Click" />&nbsp;
             <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Display" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustDBConnectionString1 %>" DeleteCommand="DELETE FROM [CustomerDetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CustomerDetails] ([Name], [Age]) VALUES (@Name, @Age)" ProviderName="<%$ ConnectionStrings:CustDBConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [Age] FROM [CustomerDetails]" UpdateCommand="UPDATE [CustomerDetails] SET [Name] = @Name, [Age] = @Age WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:Label ID="lblException" runat="server"></asp:Label>

        <br />

        &nbsp;&nbsp;&nbsp;
           
                  

                      <asp:Panel ID="Panel1" CssClass="container" runat="server">

                          <div class="row justify-content-center">


                              <div class="col-6">

                                  <table class="table table-bordered table-striped">
                                      <tr>
                                          <th>
                                              <asp:Label ID="Label5" runat="server" Text="Id"></asp:Label>
                                          </th>
                                          <th>
                                              <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
                                          </th>
                                          <th>
                                              <asp:Label ID="Label7" runat="server" Text="Age"></asp:Label>
                                          </th>
                                      </tr>
                                      <tr>
                                          <td class="p-0">
                                              <asp:TextBox ID="TextBox4" class="form-control rounded-0 " runat="server"></asp:TextBox>
                                          </td>
                                          <td class="p-0">
                                              <asp:TextBox ID="TextBox5" class="form-control rounded-0 " runat="server"></asp:TextBox>
                                          </td>
                                          <td class="p-0">
                                              <asp:TextBox ID="TextBox6" class="form-control rounded-0 " runat="server"></asp:TextBox>
                                          </td>
                                      </tr>
                                  </table>
                              </div>
                        </div>

                      </asp:Panel>

        <br />
    </form>
    <table>
        <tr>
            <td></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
</body>
</html>
