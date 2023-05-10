<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Find_Vendor.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Find Vendor</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Customer_Index.asspx">Home</a></li>
            <li class="active">Find Vendor</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- category listing -->
  <section class="main-container">
    <div class="container" >
      <div class="refine-search">
        <h4 class="refine-search-heading">Find Vendor</h4>
      
          <div class="form-group">
            <div class="row">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate> 
              <div class="col-md-3 col-sm-6">
                <div class="select-category-dropdown dropdown">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sname" class="form-control" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [sname] FROM [state]"></asp:SqlDataSource>
                </div>
              </div>
              <div class="col-md-3 col-sm-4">
                <div class="select-category-dropdown dropdown">
                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
                </div>
              </div>
              <div class="col-md-3 col-sm-4">
                <div class="select-category-dropdown dropdown">
                    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CatogoryName" DataValueField="CatogoryName"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [CatogoryName] FROM [Category]"></asp:SqlDataSource>
                </div>
              </div>  

                   
              <div class="col-md-3 col-sm-6">
                <div class="select-category-dropdown dropdown">
                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
                </div>
              </div><br />

                    </ContentTemplate>
                </asp:UpdatePanel> 

              <div class="col-md-12 col-sm-6" style="padding:1.5% 0% 0% 42%">
                    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-pink" style="width:30%" OnClick="Button1_Clicked" />
              </div>  
                   
            </div>
          </div>
      </div>
    </div>
</section>
  <section id="manage-item-listing" class="manage-item-listing-main-block" style="padding:0 0 150px">
    <div class="container">
        <div class="manage-item-listing-block">
        <table>
          <tr class="top-heading-row">
            <th class="vendor-img">Image</th>
            <th class="title">Name</th>
            <th class="address">Email</th>
            <th class="price">Price</th>
            <th class="action-icons">Action</th>
          </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>  
          <tr>
            <td class="vendor-img"><asp:Image ID="Image1" runat="server" width="165" class="img-responsive" alt="vendor-img" Height="145" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.upload_pic") %>' /></td>
            <th class="title"><%# DataBinder.Eval(Container,"DataItem.name") %></th>
            <td class="address"><%# DataBinder.Eval(Container,"DataItem.email") %></td>
            <td class="price"><%# DataBinder.Eval(Container,"DataItem.charge_per_hr") %></td>
            <td class="action-icons">
              <div class="table-editable-icon">
                <asp:Button ID="Button2" runat="server" Text="View"  class="btn btn-default" style="width:100px" OnClick="Button2_Clicked" CommandArgument='<%# DataBinder.Eval(Container,"DataItem.Id")%>'/>&nbsp;
              </div>
            </td>
          </tr> 
                 </ItemTemplate>
            </asp:Repeater>
        </table>
            </div>
        </div>
        </section>        
</asp:Content>

