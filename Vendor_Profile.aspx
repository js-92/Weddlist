<%@ Page Title="" Language="C#" MasterPageFile="~/VendorMasterPage.master" AutoEventWireup="true" CodeFile="Vendor_Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Vendor Profile</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Vendor Profile</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- vendor profile -->
  <section id="vendor-profile" class="vendor-profile-main-page" >
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="vendor-pro-block" >
            <div class="vendor-pro-info">
              <div class="row">
                <div class="col-md-5">
                  <div class="vendor-profile-img">
                      <asp:Image ID="Image1" runat="server" ImageUrl="images/vendor-profile/vendor-profile-1.jpg" alt="vendor-img" Height="220" Width="295" />
                  </div>
                    <ul class="social-btns" style="margin-top:15px">
                      <li><a class="btn facebook" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                      <li><a class="btn twitter" href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                      <li><a class="btn google" href="#" target="_blank"><i class="fa fa-google"></i></a></li>
                      <li><a class="btn linkedin" href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-6" style="border:1px solid black;border-radius:4px;padding:5%">
                  <div class="vendor-pro-section">
                    <h4 class="vendor-pro-heading"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
                    <div class="form-group">
                      <label>Age: </label><br />
                          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Gender: </label><br />
                          <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Date Of Birth: </label><br />
                          <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Name Of Company: </label><br />
                          <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Catagory: </label><br />
                          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>SubCatagory: </label><br />
                          <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Services: </label>
                          <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Include Meterial: </label><br />
                          <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Number Of Staff: </label><br />
                          <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Charge Per Hour: </label><br />
                          <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Payment Type: </label><br />
                          <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>First Deposite: </label><br />
                          <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Notice Of Advanced Booking: </label><br />
                          <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Link Of Portfolio: </label><br />
                          <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Email: </label><br />
                          <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Phone: </label><br />
                          <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Alternate Phone: </label><br />
                          <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>State: </label><br />
                          <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>City: </label><br />
                          <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Address: </label><br />
                          <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Pin: </label><br />
                          <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="form-group">
                      <label>Prefered Id: </label><br />
                          <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    </div> 
                      <div class="form-group">
                          <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-pink" style="width:125px" OnClick="Button1_Clicked"/>
                      </div>                                                
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
       </div>
      </div>
     </section>   
</asp:Content>

