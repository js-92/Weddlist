<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Customer_Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Customer Profile</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Customer_Index.aspx">Home</a></li>
            <li class="active">Customer Profile</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- vendor profile -->
  <section id="vendor-profile" class="vendor-profile-main-page">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="vendor-pro-block">
            <div class="vendor-pro-info">
              <div class="row">
                <div class="col-md-5">
                  <div class="vendor-profile-img">
                     <asp:Image ID="Image1" runat="server" class="img-responsive" alt="vendor-img"/>
                  </div>
                </div>
                <div class="col-md-6" style="border:1px solid black;border-radius:4px;padding:5%">
                  <div class="vendor-pro-section">
                    <h4 class="vendor-pro-heading"><asp:Label ID="Label1" runat="server" Text="name"></asp:Label></h4>
                    <ul>
                      <b><li>Username:</b><br/> <asp:Label ID="Label2" runat="server" Text="uname"></asp:Label></li>
                      <li>
                       <b> Email: </b><br/><asp:Label ID="Label3" runat="server" Text="email"></asp:Label>
                      </li>
                      <li>
                        <b>Phone:</b><br/><asp:Label ID="Label4" runat="server" Text="phone"></asp:Label>
                      </li>
                      <li>
                    <b>Age:</b><br/> <asp:Label ID="Label5" runat="server" Text="phone"></asp:Label>
                      </li>
                      <li>
                        <b>Gender:</b><br/> <asp:Label ID="Label6" runat="server" Text="phone"></asp:Label>
                      </li> 
                      <li>
                       <b>Date Of Birth:</b><br/><asp:Label ID="Label7" runat="server" Text="phone"></asp:Label>
                      </li> 
                      <li>
                       <b> Alternate Phone Number:</b> <br/><asp:Label ID="Label8" runat="server" Text="phone"></asp:Label>
                      </li>
                      <li>
                        <b>State:</b><br/> <asp:Label ID="Label9" runat="server" Text="phone"></asp:Label>
                      </li>
                        <li>
                        <b>City:</b><br/> <asp:Label ID="Label10" runat="server" Text="phone"></asp:Label>
                      </li>
                        <li>
                        <b>Address:</b><br/> <asp:Label ID="Label11" runat="server" Text="phone"></asp:Label>
                      </li>    
                    </ul>
                      <br />
                      <div class="col-md-4">
                          <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-pink" style="height:50px; Width:125px" OnClick="Button1_Clicked"/>
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
<!-- end vendor profile -->
</asp:Content>

