<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Add_Admin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- page banner -->
  <section id="page-banner" class="page-banner bg-dark" style="background-image: url('images/banner-2.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Add Admin</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Admin_Index.aspx">Admin</a></li>
            <li class="active">Add Admin</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- guest list -->
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
  <section id="guest-list" class="guest-list-main-block">
    <div class="container">
      <div class="guest-list-block">
        <div class="row">
          <div class="col-md-5">
            <div class="create-task-block">
              <h4 class="create-task-heading">Add New Admin</h4>
              <div class="form-group">
                  <asp:Label ID="Label1" runat="server" Text="Your Id:"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                  <asp:Label ID="Label2" runat="server" Text="Your Password:"></asp:Label>
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                  <asp:Label ID="Label3" runat="server" Text="Add Admin Email:"></asp:Label>
                  <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                  <asp:Label ID="Label4" runat="server" Text="Add Admin Password:"></asp:Label>
                  <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" Text="Add Admin" class="btn btn-pink" OnClick="Button1_Click"/>
                  <asp:Label ID="Label5" runat="server" Text="Admin Added" ForeColor="Green" Visible="False"></asp:Label>
                  <asp:Label ID="Label6" runat="server" Text="Invalid Parameters" Visible="False" ForeColor="Red"></asp:Label>
              </div>
            </div>
          </div>
          <div class="col-md-7">
            <div class="to-do-list">
              <div class="panel-group faq-panel" id="accordion" role="tablist" aria-multiselectable="true">
                  <asp:Repeater ID="Repeater1" runat="server">
                      <ItemTemplate>
                          <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title to-do-list-heading">
                      <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <%# DataBinder.Eval(Container,"DataItem.email") %>
                        <span class="faq-btn faq-btn-plus hidden-xs"><i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                        <span class="faq-btn faq-btn-minus hidden-xs"><i class="fa fa-angle-double-up" aria-hidden="true"></i></span>
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body to-do-list-dtl">
                    </div>
                  </div>
                </div>
                      </ItemTemplate>
                  </asp:Repeater>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end to do list -->

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

