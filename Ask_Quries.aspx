<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Ask_Quries.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Ask Queries</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Customer_Index.aspx">Home</a></li>
            <li class="active">Ask Queries</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- add listing main block -->
  <section id="add-listing" class="add-listing-main-block">
    <div class="container">
      <div class="add-listing-block">
        <div class="row" style="margin-top:5%">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
                    <div class="col-md-6" style="margin-left:5%">
          <h4 class="new-add-listing-heading">Ask Queries</h4>
            <div class="new-add-listing">
              <div class="form-group">
                <form id="add-listing-form-2">
                  <div class="add-listing-form-2">
                    <div class="form-group">
                      <label>Your Name <span>*</span></label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Your Email<span></span></label>
                        <asp:Label ID="Label3" runat="server" Text="" CssClass="form-control"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Vendor Catagory<span></span></label>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="CatogoryName" DataValueField="CatogoryName"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [CatogoryName] FROM [Category]"></asp:SqlDataSource>
                    </div>  
                    <div class="form-group">
                      <label>Query<span></span></label>
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                      <div class="form-group">
                          <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-pink" OnClick="Button1_Clicked"/>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

 <div class="col-md-5">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
       
           <h4 class="new-add-listing-heading">Your Queries</h4>
            <div class="add-listing-sidebar">
         <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
              <div class="form-group" style="border-bottom:1px solid gray">
                  <div class="form-group">
                    <label>Your Query</label>
                    <div class="select-jewellery-dropdown dropdown">
                        <asp:Label ID="Label1" runat="server" Text="" CssClass="form-control"><%# DataBinder.Eval(Container,"DataItem.query") %></asp:Label>
                    </div>
                  </div> 
                  <div class="form-group">
                    <label>Answer</label>
                    <div class="select-jewellery-dropdown dropdown">
                        <asp:Label ID="Label2" runat="server" Text="" CssClass="form-control"><%# DataBinder.Eval(Container,"DataItem.answer") %></asp:Label>
                    </div>
                  </div> 
              </div>
            </div>
           </ItemTemplate>
          </asp:Repeater>
          </div>
        </div>

                </ContentTemplate>
            </asp:UpdatePanel>
      </div>
    </div>
  </section>
<!-- end add listing main block -->

</asp:Content>

