<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="storeProcedure.aspx.cs" Inherits="WebApplication1.storeProcedure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />

    <%--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
        <div class="col-lg-4"></div>
        <div class="container col-lg-4">
            <%--<div class="text-center">--%>
                <h1>Employee Details</h1>
            
            <div class="col-md-4"></div>
                <table cellpadding="2" class="w-100 col-md-4">
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
                            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSalary" runat="server" Text="Salary"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblContact" runat="server" Text="Contact"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" Height="39px" Text="SUBMIT" Width="89px" OnClick="btnSubmit_Click" />
                          
                            <asp:Button ID="btnModify" class="btn btn-primary" runat="server" Height="39px" Text="MODIFY" Width="89px" OnClick="btnModify_Click" />
                       
                            <asp:Button ID="btnDelete" class="btn btn-primary" runat="server" Height="39px" Text="DELETE" Width="89px" OnClick="btnDelete_Click" />
                          
                            <asp:Button ID="btnView" class="btn btn-primary" runat="server" Height="39px" Text="VIEW" Width="89px" OnClick="btnView_Click" />
                        </td>
                    </tr>
                </table>
             <div class="col-md-4"></div>
                <asp:Label ID="lbl5" runat="server"></asp:Label>



                <asp:Label ID="lblException" runat="server"></asp:Label>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeDetailsSPConnectionString1 %>" DeleteCommand="DELETE FROM [Emp_Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Emp_Table] ([Name], [City], [Salary], [Contact]) VALUES (@Name, @City, @Salary, @Contact)" ProviderName="<%$ ConnectionStrings:EmployeeDetailsSPConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Name], [City], [Salary], [Contact] FROM [Emp_Table]" UpdateCommand="UPDATE [Emp_Table] SET [Name] = @Name, [City] = @City, [Salary] = @Salary, [Contact] = @Contact WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Salary" Type="Int32" />
                        <asp:Parameter Name="Contact" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Salary" Type="Int32" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:Panel ID="Panel1" runat="server">


                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>
                                <asp:Label ID="lbl6" runat="server" Text="Id"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="lbl7" runat="server" Text="Name"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="lbl8" runat="server" Text="Age"></asp:Label>
                            </th>
                        </tr>
                        <tr>
                            <td class="p-0">
                                <asp:TextBox ID="txt5" class="form-control rounded-0 " runat="server"></asp:TextBox>
                            </td>
                            <td class="p-0">
                                <asp:TextBox ID="txt6" class="form-control rounded-0 " runat="server"></asp:TextBox>
                            </td>
                            <td class="p-0">
                                <asp:TextBox ID="txt7" class="form-control rounded-0 " runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>

            <div class="col-md-4"></div>
        </div>
    </form>
    <script src="jquery.slim.min.js"></script>
    <script src="umd/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>
