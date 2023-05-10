<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Answer_Queries.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner bg-dark" style="background-image: url('images/banner-2.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Answer Queries</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Admin_Index.aspx">Admin</a></li>
            <li class="active">Answer Queries</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
    <br />
    <br />
    <br />
    <section id="manage-item-listing" class="manage-item-listing-main-block">
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="5" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="True" style="text-align:center">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="Customer Name" SortExpression="customer_name"></asp:BoundField>
            <asp:BoundField DataField="customer_email" HeaderText="Customer Email" SortExpression="customer_email"></asp:BoundField>
            <asp:BoundField DataField="vendor_catagory" HeaderText="Vendor Catagory" SortExpression="vendor_catagory"></asp:BoundField>
            <asp:BoundField DataField="query" HeaderText="Query" SortExpression="query"></asp:BoundField>
            <asp:BoundField DataField="answer" HeaderText="Answer" SortExpression="answer"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

        <HeaderStyle BackColor="#FF4061" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

        <RowStyle ForeColor="#000066"></RowStyle>

        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Black"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [queries] WHERE [Id] = @original_Id AND (([customer_name] = @original_customer_name) OR ([customer_name] IS NULL AND @original_customer_name IS NULL)) AND (([customer_email] = @original_customer_email) OR ([customer_email] IS NULL AND @original_customer_email IS NULL)) AND (([vendor_catagory] = @original_vendor_catagory) OR ([vendor_catagory] IS NULL AND @original_vendor_catagory IS NULL)) AND (([query] = @original_query) OR ([query] IS NULL AND @original_query IS NULL)) AND (([answer] = @original_answer) OR ([answer] IS NULL AND @original_answer IS NULL))" InsertCommand="INSERT INTO [queries] ([customer_name], [customer_email], [vendor_catagory], [query], [answer]) VALUES (@customer_name, @customer_email, @vendor_catagory, @query, @answer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [queries]" UpdateCommand="UPDATE [queries] SET [customer_name] = @customer_name, [customer_email] = @customer_email, [vendor_catagory] = @vendor_catagory, [query] = @query, [answer] = @answer WHERE [Id] = @original_Id AND (([customer_name] = @original_customer_name) OR ([customer_name] IS NULL AND @original_customer_name IS NULL)) AND (([customer_email] = @original_customer_email) OR ([customer_email] IS NULL AND @original_customer_email IS NULL)) AND (([vendor_catagory] = @original_vendor_catagory) OR ([vendor_catagory] IS NULL AND @original_vendor_catagory IS NULL)) AND (([query] = @original_query) OR ([query] IS NULL AND @original_query IS NULL)) AND (([answer] = @original_answer) OR ([answer] IS NULL AND @original_answer IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_customer_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_customer_email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vendor_catagory" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_query" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_answer" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customer_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="customer_email" Type="String"></asp:Parameter>
            <asp:Parameter Name="vendor_catagory" Type="String"></asp:Parameter>
            <asp:Parameter Name="query" Type="String"></asp:Parameter>
            <asp:Parameter Name="answer" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customer_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="customer_email" Type="String"></asp:Parameter>
            <asp:Parameter Name="vendor_catagory" Type="String"></asp:Parameter>
            <asp:Parameter Name="query" Type="String"></asp:Parameter>
            <asp:Parameter Name="answer" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_customer_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_customer_email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vendor_catagory" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_query" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_answer" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
                
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
        </section>
</asp:Content>

