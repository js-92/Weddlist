<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Contact Us</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Index.aspx">Home</a></li>
            <li class="active">Contact Us</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- contact us -->
  <section class="main-container">
    <div class="container">
      <div class="section text-center">
        <h3 class="section-heading">Weddlist Contact Details</h3>
        <p class="section-sub-heading">Sed ut perspiciatis unde omnis iste natus error</p>
      </div>
      <div class="row">
        <div class="col-md-4 col-sm-6">
          <div class="contact-us-block">
            <div class="contact-us-icon"> 
              <img src="images/contact-us/contact-icon-1.png" class="img-responsive" alt="contact-icon">
            </div>
            <div class="contact-us-dtl text-center">
              <h6 class="contact-heading">Our Address</h6>
              <div class="contact-sub-heading">824 Shindhubhavan, Ahmedabad, India</div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="contact-us-block">
            <div class="contact-us-icon"> 
              <img src="images/contact-us/contact-icon-2.png" class="img-responsive" alt="contact-icon">
            </div>
            <div class="contact-us-dtl text-center">
              <h6 class="contact-heading">Call Us</h6>
              <a href="tel:#">+(00) 123 456 78 OR</a>
              <a href="tel:#">+(00) 123 456 78</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="contact-us-block">
            <div class="contact-us-icon"> 
              <img src="images/contact-us/contact-icon-3.png" class="img-responsive" alt="contact-icon">
            </div>
            <div class="contact-us-dtl text-center">
              <h6 class="contact-heading">Mail Us</h6>
              <a href="mailto:#">Info@Weddlist.com</a>
              <a href="mailto:#">Support@Weddlist.com</a>
            </div>
          </div>
        </div>
      </div>
      <div class="mt100">
        <div class="section text-center">
          <h3 class="section-heading">Feel Free To Contact Us</h3>
          <p class="section-sub-heading">Sed ut perspiciatis unde omnis iste natus error</p>
        </div>
        <div class="contact-form form-group">
            <div class="row">
              <div class="col-sm-6">
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="YOUR NAME *" ></asp:TextBox>
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="YOUR PHONE " ></asp:TextBox>
              </div>
              <div class="col-sm-6">
                  <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="YOUR EMAIL ADDRESS *" ></asp:TextBox>
                  <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="SUBJECT" ></asp:TextBox>
              </div>
            </div>
              <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="YOUR MESSAGE *" TextMode="MultiLine"></asp:TextBox>
            <div class="message-button text-center">
                <asp:Button ID="Button1" runat="server" Text="SEND MESSAGE" class="btn btn-default" style="border-color:#FF4061;" OnClick="Button1_Clicked"  />
            </div>
        </div>
      </div>
    </div>
  </section>
<!-- end contact us -->

</asp:Content>

