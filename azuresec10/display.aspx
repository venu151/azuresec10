<%@ Page Title="" Language="C#" MasterPageFile="~/ourstyle.Master" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="azuresec10.display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 287px;
        height: 175px;
        position: absolute;
        top: 197px;
        left: 6px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td><h1>Display</h1>
            </td>
            
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource">
                    <Columns>
                        <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" ReadOnly="True" SortExpression="EmployeeId" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:azureDbConnectionString %>" DeleteCommand="DELETE FROM [FeedBackForm] WHERE [EmployeeId] = @original_EmployeeId AND [name] = @original_name AND [Email] = @original_Email AND [Rating] = @original_Rating" InsertCommand="INSERT INTO [FeedBackForm] ([EmployeeId], [name], [Email], [Rating]) VALUES (@EmployeeId, @name, @Email, @Rating)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:azureDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [FeedBackForm]" UpdateCommand="UPDATE [FeedBackForm] SET [name] = @name, [Email] = @Email, [Rating] = @Rating WHERE [EmployeeId] = @original_EmployeeId AND [name] = @original_name AND [Email] = @original_Email AND [Rating] = @original_Rating">
                    <DeleteParameters>
                        <asp:Parameter Name="original_EmployeeId" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Rating" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EmployeeId" Type="Int32" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Rating" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Rating" Type="Int32" />
                        <asp:Parameter Name="original_EmployeeId" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Rating" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
