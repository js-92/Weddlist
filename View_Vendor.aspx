<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="View_Vendor.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Vendor Details</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Admin_Index.aspx">Admin</a></li>
            <li class="active">Vendor Details</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- vendor profile -->
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <section id="vendor-profile" class="vendor-profile-main-page">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="vendor-pro-block">
            <div class="vendor-pro-info">
              <div class="row">
                <div class="col-md-5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [vendor] WHERE ([Id] = @Id)">
                          <SelectParameters>
                              <asp:QueryStringParameter QueryStringField="Id" Name="Id" Type="Int32"></asp:QueryStringParameter>
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                          <ItemTemplate>
                  <div class="vendor-profile-img">
                     <asp:Image ID="Image1" runat="server" class="img-responsive" alt="vendor-img" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.upload_pic") %>' Height="220" Width="295"/>
                      <ul class="social-btns" style="padding:10%">
                          <li><a class="btn facebook" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                          <li><a class="btn twitter" href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                          <li><a class="btn google" href="#" target="_blank"><i class="fa fa-google"></i></a></li>
                          <li><a class="btn linkedin" href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                      </ul>
                  </div>
                </div>
                <div class="col-md-6" style="border:1px solid black;border-radius:4px;padding:5%">
                  <div class="vendor-pro-section">
                              <h4 class="vendor-pro-heading"><asp:Label ID="Label1" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.name") %></asp:Label></h4>
                    <ul>
                      <li>
                      <b>Catagory: </b><br /><asp:Label ID="Label2" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.catagory") %></asp:Label>
                      </li>  
                      <li>
                      <b>SubCatagory: </b><br /><asp:Label ID="Label3" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.subcatagory") %></asp:Label>
                      </li>
                      <li>
                      <b>Phone: </b><br /><asp:Label ID="Label4" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.phone") %></asp:Label>
                      </li>
                      <li>
                       <b>Email: </b><br /><asp:Label ID="Label5" runat="server" Text="email"><%# DataBinder.Eval(Container,"DataItem.email") %></asp:Label>
                      </li>
                      <li>
                       <b> Gender: </b><br /><asp:Label ID="Label6" runat="server" Text="gender"><%# DataBinder.Eval(Container,"DataItem.gender") %></asp:Label>
                      </li> 
                      <li>
                        <b>Services: </b><br /><asp:Label ID="Label7" runat="server" Text="services"><%# DataBinder.Eval(Container,"DataItem.services") %></asp:Label>
                      </li> 
                      <li>
                       <b> Included meterials? </b><br /><asp:Label ID="Label8" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.include_meterials") %></asp:Label>
                      </li>
                      <li>
                        <b>Number Of Staff </b><br /><asp:Label ID="Label9" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.num_of_staff") %></asp:Label>
                      </li>
                        <li>
                        <b>Charge Per Hour: </b><br /><asp:Label ID="Label10" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.charge_per_hr") %></asp:Label>
                      </li>
                        <li>
                        <b>First Deposite: </b><br /><asp:Label ID="Label11" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.first_deposite") %></asp:Label>
                      </li>  
                         <li>
                        <b>State: </b><br /><asp:Label ID="Label12" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.state") %></asp:Label>
                      </li> 
                        <li>
                       <b> City: </b><br /><asp:Label ID="Label13" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.city") %></asp:Label>
                      </li> 
                         <li>
                       <b> Address:</b> <br /><asp:Label ID="Label14" runat="server" Text=""><%# DataBinder.Eval(Container,"DataItem.address") %></asp:Label>
                      </li>
                         <li>
                       <b> Pin: </b><br /><asp:Label ID="Label15" runat="server" Text=" "><%# DataBinder.Eval(Container,"DataItem.pin") %></asp:Label>
                      </li> 
                    </ul>
                    </ItemTemplate>
                </asp:Repeater>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<asp:Button ID="Button2" runat="server" Text="Hire" OnClick="Button2_Clicked" data-toggle="modal" data-target="#login-model" class="btn btn-pink" style="height:50px;width:100px;"></asp:Button>
 </ContentTemplate>
</asp:UpdatePanel> 
<!-- login popup -->
      <div class="modal fade login-model" id="login-model" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h5 class="modal-title text-center">Hire Vendor</h5>
            </div>
            <div class="modal-body login-model-body text-center">
                <div class="form-group">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
                    Your Email:<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Your Email" ></asp:TextBox>
                    Event Date:<asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    Message:<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                    Vendor Email:<asp:Label ID="Label16" runat="server" Text="" class="form-control"></asp:Label>
                    Vendor Catagory:<asp:Label ID="Label17" runat="server" Text="" class="form-control"></asp:Label>
                    Vendor Sub Catagory:<asp:Label ID="Label18" runat="server" Text="" class="form-control"></asp:Label>
                    </ContentTemplate></asp:UpdatePanel>
                </div>
                  <asp:Button ID="Button1" runat="server" Text="Hire" OnClick="Button1_Clicked" class="btn btn-pink" style="height:50px;width:100px;" />

     
            </div>            
          </div>
        </div>
      </div>
<!-- end login popup -->  
              
            </div>
                  </div>
                </div>
              </div>
            </div>   
  </section>
<!-- end vendor profile -->

</asp:Content>

