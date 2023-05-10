<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Manage_Customer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Manage Customers</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Admin_Index.aspx">Admin Index</a></li>
            <li class="active">Manage Customers</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- manage item listing -->
    <br /><br /><br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
  <section id="manage-item-listing" class="manage-item-listing-main-block">
    <div class="container">
      <div class="manage-item-listing-block">
        <table>
          <tr class="top-heading-row" style="align-text:center">
            <th class="vendor-img">Image</th>
            <th class="title">Name</th>
            <th class="address">Email</th>
            <th class="price">Phone</th>
            <th class="action-icons">Action</th>
          </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td class="vendor-img"><asp:Image ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.profile_pic") %>' width="167"  class="img-responsive" alt="vendor-img" Height="147" /></td>
                        <th class="title"><%# DataBinder.Eval(Container,"DataItem.first_name") %></th>
                        <td class="address"><%# DataBinder.Eval(Container,"DataItem.email") %></td>
                        <td class="price"><%# DataBinder.Eval(Container,"DataItem.phone") %></td>
                        <td class="action-icons">
                          <div class="table-editable-icon">
                              <asp:Button ID="Button1" runat="server" Text="View" class="btn btn-default" style="width:100px" OnClick="Button1_Click"  CommandArgument='<%# DataBinder.Eval(Container,"DataItem.Id") %>' />&nbsp;
                              <asp:Button ID="Button2" runat="server" Text="Delete" class="btn btn-default" style="width:100px" OnClick="Button2_Click" CommandArgument='<%# DataBinder.Eval(Container,"DataItem.Id") %>'/>
                          </div>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>  
        </table>
      </div>
    </div>
  </section>
<!-- end manage item listing -->
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

