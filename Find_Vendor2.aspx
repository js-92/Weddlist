<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Find_Vendor2.aspx.cs" Inherits="_Default" %>

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

<!-- vendor profile -->
  <section id="vendor-profile-main-block" >
    <div class="container">
      <div class="section text-center">
        <h3 class="section-heading">Top Feature Vendor Profile In Your Area</h3>
      </div>
      <div class="row" style="margin-bottom:100px">
          <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
<%--       <a href='View_Vendor.aspx?Id=<%# DataBinder.Eval(Container,"DataItem.Id")%>' class="btn read-more">               --%>
        <div class="col-md-3 col-sm-6">
          <div class="vendor-profile-block" style="border:1px solid black;border-radius:4px;padding:5%">
            <div class="vendor-profile-img">
<%--              <a href='View_Vendor.aspx?Id=<%# DataBinder.Eval(Container,"DataItem.Id")%>' class="btn read-more">--%>
                <asp:Image ID="Image1" runat="server" class="img-responsive" alt="vendor-profile" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.upload_pic") %>' Width="263" Height="230" />
<%--              </a> --%>
              <div class="overlay-bg"></div>
              <div class="vendor-dtl">
                <h4 class="vendor-heading"><%# DataBinder.Eval(Container,"DataItem.catagory") %></h4>
                <div class="vendor-sub-heading"><%# DataBinder.Eval(Container,"DataItem.subcatagory") %></div>
              </div>
            </div>
            <div class="vendor-profile-dtl">
              <h4 class="vendor-profile-heading"><a href="#"><%# DataBinder.Eval(Container,"DataItem.name") %></a></h4>
              <b>Email: </b><h6><%# DataBinder.Eval(Container,"DataItem.email") %></h6>
                <b>Phone: </b><h6><%# DataBinder.Eval(Container,"DataItem.phone") %></h6>
                <a href='View_Vendor.aspx?Id=<%# DataBinder.Eval(Container,"DataItem.Id")%>' class="btn read-more">Hire Me</a>               
              <ul class="social-btns">
                <li><a class="btn facebook" href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a class="btn twitter" href="https://www.twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a class="btn google" href="https://www.plus.google.com/" target="_blank"><i class="fa fa-google"></i></a></li>
                <li><a class="btn linkedin" href="https://www.linkedin.com/" target="_blank"><i class="fa fa-linkedin"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
<%--       </a> --%>
              </ItemTemplate>
              <SeparatorTemplate>
                  <br />
              </SeparatorTemplate>
          </asp:Repeater>
      </div>
    </div>
  </section>
<!-- end vendor profile -->
</asp:Content>

