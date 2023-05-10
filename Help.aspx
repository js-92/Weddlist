<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Help</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Index.aspx">Home</a></li>
            <li class="active">Help</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
  <section id="help-page" class="help-page-main-block">
    <div class="container">
      <div class="help-service-main-block">
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="contact-us-block help-service-block">
              <div class="contact-us-icon"> 
                <img src="images/contact-us/contact-icon-1.png" class="img-responsive" alt="contact-icon">
              </div>
              <div class="contact-us-dtl text-center">
                <h6 class="contact-heading">Our Address</h6>
                <div class="contact-sub-heading">824 Sindhubhavan , Ahmedabad, India</div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="contact-us-block help-service-block">
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
            <div class="contact-us-block help-service-block">
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
      </div>
      <div class="help-faq-block">
        <div class="row">
          <div class="col-md-6">
            <div class="panel-group faq-panel" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      How do I RSVP for the wedding?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                  <div class="panel-body">
                    <p>Provide clear instructions on how guests can RSVP to your wedding, whether it's through a form on your website or through another platform.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                      Can I make special requests for accommodations?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="panel-body">
                     <p>Let your guests know if they can make special requests, such as dietary restrictions or accessibility accommodations, and how they can do so.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                      How do I access the wedding registry?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="panel-body">
                     <p>If you have a wedding registry, make sure to include a link or instructions on how guests can access it.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                      Is there transportation available to the wedding venue?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                  <div class="panel-body">
                     <p>Let your guests know if transportation will be provided to the wedding venue, or if they need to arrange their own transportation.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel-group faq-panel" id="accordion2" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne-tw" aria-expanded="true" aria-controls="collapseOne-tw">
                     How do I become a vendor for the wedding?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseOne-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne-tw">
                  <div class="panel-body">
                    <p>If you're accepting vendor applications, provide information on how vendors can apply to be a part of your wedding.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo-tw" aria-expanded="true" aria-controls="collapseTwo-tw">
                      What is the timeline for vendor payments?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseTwo-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo-tw">
                  <div class="panel-body">
                     <p>Let vendors know when they can expect to receive payment for their services and any deadlines they need to meet.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree-tw" aria-expanded="true" aria-controls="collapseThree-tw">
                      What are the guidelines at the wedding venue?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseThree-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree-tw">
                  <div class="panel-body">
                     <p>Provide clear guidelines for vendors on when they can set up and tear down their equipment, as well as any rules or restrictions for the wedding venue.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour-tw">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour-tw" aria-expanded="true" aria-controls="collapseFour-tw">
                      Is point of contact for vendors on the day of the wedding?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFour-tw" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour-tw">
                  <div class="panel-body">
                     <p>Provide a point of contact for vendors to reach out to if they have any questions or issues on the day of the wedding.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="pt80">
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

</asp:Content>

