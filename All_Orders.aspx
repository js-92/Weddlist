<%@ Page Title="" Language="C#" MasterPageFile="~/VendorMasterPage.master" AutoEventWireup="true" CodeFile="All_Orders.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner bg-dark" style="background-image: url('images/banner-2.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Manage Orders</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Admin_Index.aspx">Admin</a></li>
            <li class="active">Manage Orders</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
    <br />
    <br />
    <br />s
        <section id="manage-item-listing" class="manage-item-listing-main-block">
    <div class="container">
        <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HeaderStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="True" HorizontalAlign="Center" style="text-align:center">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                        <asp:BoundField DataField="customer_email" HeaderText="Customer Email" SortExpression="customer_email"></asp:BoundField>
                        <asp:BoundField DataField="event_date" HeaderText="Event Date" SortExpression="event_date"></asp:BoundField>
                        <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message"></asp:BoundField>
                        <asp:BoundField DataField="vendor_email" HeaderText="Vendor Email" SortExpression="vendor_email"></asp:BoundField>
                        <asp:BoundField DataField="vendor_catagory" HeaderText="Vendor Catagory" SortExpression="vendor_catagory"></asp:BoundField>
                        <asp:BoundField DataField="vendor_subcatagory" HeaderText="Vendor Subcatagory" SortExpression="vendor_subcatagory"></asp:BoundField>
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"></asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                    <HeaderStyle BackColor="#ff4061" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                    <RowStyle ForeColor="#000066"></RowStyle>

                    <SelectedRowStyle BackColor="#ffffff" Font-Bold="True" ForeColor="black"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [orders] WHERE ([vendor_email] = @vendor_email)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [orders] WHERE [Id] = @original_Id AND (([customer_email] = @original_customer_email) OR ([customer_email] IS NULL AND @original_customer_email IS NULL)) AND (([event_date] = @original_event_date) OR ([event_date] IS NULL AND @original_event_date IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL)) AND (([vendor_email] = @original_vendor_email) OR ([vendor_email] IS NULL AND @original_vendor_email IS NULL)) AND (([vendor_catagory] = @original_vendor_catagory) OR ([vendor_catagory] IS NULL AND @original_vendor_catagory IS NULL)) AND (([vendor_subcatagory] = @original_vendor_subcatagory) OR ([vendor_subcatagory] IS NULL AND @original_vendor_subcatagory IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [orders] ([customer_email], [event_date], [message], [vendor_email], [vendor_catagory], [vendor_subcatagory], [status]) VALUES (@customer_email, @event_date, @message, @vendor_email, @vendor_catagory, @vendor_subcatagory, @status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [orders] SET [customer_email] = @customer_email, [event_date] = @event_date, [message] = @message, [vendor_email] = @vendor_email, [vendor_catagory] = @vendor_catagory, [vendor_subcatagory] = @vendor_subcatagory, [status] = @status WHERE [Id] = @original_Id AND (([customer_email] = @original_customer_email) OR ([customer_email] IS NULL AND @original_customer_email IS NULL)) AND (([event_date] = @original_event_date) OR ([event_date] IS NULL AND @original_event_date IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL)) AND (([vendor_email] = @original_vendor_email) OR ([vendor_email] IS NULL AND @original_vendor_email IS NULL)) AND (([vendor_catagory] = @original_vendor_catagory) OR ([vendor_catagory] IS NULL AND @original_vendor_catagory IS NULL)) AND (([vendor_subcatagory] = @original_vendor_subcatagory) OR ([vendor_subcatagory] IS NULL AND @original_vendor_subcatagory IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="original_customer_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_event_date" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_message" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_vendor_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_vendor_catagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_vendor_subcatagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_status" Type="String"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="customer_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="event_date" Type="String"></asp:Parameter>
                        <asp:Parameter Name="message" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_catagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_subcatagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="status" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" PropertyName="Text" Name="vendor_email" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="customer_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="event_date" Type="String"></asp:Parameter>
                        <asp:Parameter Name="message" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_catagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="vendor_subcatagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="status" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="original_customer_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_event_date" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_message" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_vendor_email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_vendor_catagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_vendor_subcatagory" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_status" Type="String"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
            </section>
</asp:Content>

