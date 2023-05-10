<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">About Us</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Index.aspx">Home</a></li>
            <li class="active">About Us</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- about our weddlist -->
  <section id="about-our-weddlist" class="ptb120 why-choose-main-block">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="why-choose-img">
            <img src="images/why-choose.png" class="img-responsive" alt="why-choose">
          </div>
        </div>
        <div class="col-md-8">
          <div class="section">
            <div class="row">
              <div class="col-sm-5">
                <h3 class="section-heading">About Our Wedd<span>list</span></h3>
              </div>
              <div class="col-sm-7">
                <p class="section-sub-heading">You're one click away from your dream wedding Use wedlist to find, plan and book a perfect wedding! Our website brings over 20,000 reliable vendors from all over the world under one roof and makes it easy to find reputable vendors you can trust.</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <div class="why-block">
                <div class="why-icon">
                  <i class="flaticon-two-hearts"></i>
                </div>
                <h4 class="why-choose-heading">20 Year Experience</h4>
                <p>We make it easier than ever to stay organized through streamlined event outlines that come complete with timelines in advance.</p>
              </div>
              <div class="why-block">
                <div class="why-icon">
                  <i class="flaticon-food"></i>
                </div>
                <h4 class="why-choose-heading">1500+ Wedding Suppliers</h4>
                <p>Explore our comprehensive list of vendors with unique services, packages and prices  ranging from catering, photography, videography.</p>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="why-block">
                <div class="why-icon">
                  <i class="flaticon-valentine-day"></i>
                </div>
                <h4 class="why-choose-heading">100 Real Weddingse</h4>
                <p>The one-stop shop for your wedding preparations! Create a virtual wedding, connect directly with vendors.</p>
              </div>
              <div class="why-block">
                <div class="why-icon">
                  <i class="flaticon-wedding-day"></i>
                </div>
                <h4 class="why-choose-heading">Perfect Checklist</h4>
                <p>Search & filter based on regions, budget and reviews & ratings to quickly find the perfect vendor for your special day.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end about our weddlist -->
<!-- plan start main block -->
  <section id="plan-start-main-block" class="plan-start-main-block bg-grey">
    <div class="container">
      <div class="row">
        <div class="col-sm-5 pad-0">
          <div class="plan-discription">
            <h3 class="plan-heading">Your Wedding Planing Start Here</h3>
            <div class="plan-text-block">
              <p class="plan-sub-heading">We are here to make your wedding planning a breeze – wedlist is the ultimate platform for you to connect with vendors and make that special day even more perfect.</p>
              <p class="plan-sub-heading">Wedlist is a revolutionary wedding planning site that helps you keep track of your wedding budget, tasks, and even your guest list in one convenient place.</p>
            </div>
            <a href="#" class="btn btn-pink">Read More</a>
          </div>
        </div>
        <div class="col-sm-7">
          <div class="plan-start-block">
            <div class="row">
              <div class="col-sm-2 col-xs-3 pad-0">
                <div class="widget-icon">
                  <i class="flaticon-wedding-day"></i>
                </div>
              </div>
              <div class="col-sm-10 col-xs-9"> 
                <div class="section">
                  <h4 class="section-heading">Check List</h4>
                  <p class="section-sub-heading">No wedding is complete without its checklist. Capture everything from gifts to activities with our simple checklist feature—so you can have it all ready in time! _</p>
                </div>
              </div>
            </div>
          </div>
          <div class="plan-start-block">
            <div class="row"> 
              <div class="col-sm-2 col-xs-3 pad-0">
                <div class="widget-icon">
                  <i class="flaticon-love-talk"></i>
                </div>
              </div>
              <div class="col-sm-10 col-xs-9"> 
                <div class="section">
                  <h4 class="section-heading">Budget Planner</h4>
                  <p class="section-sub-heading">Organise your wedding with our simple budget planner. Withwedlist, you can plan easily within your given budget and never lose track of where you’re spending your hard-earned money.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="plan-start-block">
            <div class="row">
              <div class="col-sm-2 col-xs-3 pad-0">
                <div class="widget-icon">
                  <i class="flaticon-wedding-planning"></i>
                </div>
              </div>
              <div class="col-sm-10 col-xs-9"> 
                <div class="section">
                  <h4 class="section-heading">Guest List</h4>
                  <p class="section-sub-heading">Easily register guests for any style of wedding with wedlist's intuitive guest list system. Upload images or other information for events such as save-the-date or a photo booth—it's all here on wedlist!</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end plan start main block -->
<!-- call out -->
  <section id="call-out" class="call-out-main-block">
    <div class="parallax" style="background-image: url('images/bg/call-out-parr.jpg');">
      <div class="overlay-bg"></div>
      <div class="container text-center">
        <div class="call-out-dtl">
          <h2 class="call-out-heading">Are you trying our planning tools ?</h2>
          <a href="#" class="btn btn-pink">Start Planning Today</a>
        </div>
      </div>
    </div>
  </section>
<!-- end call out -->
<!-- why choose block -->
  <section id="why-choose" class="why-choose-main-block ptb120">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="section">
            <div class="row">
              <div class="col-md-4 col-sm-4">
                <h3 class="section-heading">Why Choose Weddlist</h3>
              </div>
              <div class="col-md-8 col-sm-8">
                <p class="section-sub-heading">You're one click away from your dream wedding.Use wedlist to find, plan and book a perfect wedding! Our website brings over 20,000 reliable vendors from all over the world under one roof and makes it easy to find reputable vendors you can trust.</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <div class="why-choose-block">
                <div class="row">
                  <div class="col-xs-3">
                    <div class="why-choose-icon">
                      <img src="images/about-us-2/why-ch-icon-bg.png" class="img-responsive" alt="icon">
                      <i class="flaticon-heart-with-arrow"></i>
                    </div>
                  </div>
                  <div class="col-xs-9">
                    <div class="why-choose-dtl">
                      <h4 class="why-choose-heading">20 Years Experience</h4>
                      <p class="why-choose-sub-heading">We make it easier than ever to stay organized through streamlined event outlines that come complete with timelines in advance.</p>
                      <a href="#" class="btn read-more">Read More</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="why-choose-block">
                <div class="row">
                  <div class="col-xs-3">
                    <div class="why-choose-icon">
                      <img src="images/about-us-2/why-ch-icon-bg.png" class="img-responsive" alt="icon">
                      <i class="flaticon-food"></i>
                    </div>
                  </div>
                  <div class="col-xs-9">
                    <div class="why-choose-dtl">
                      <h4 class="why-choose-heading">1500+ Wedding Suppliers</h4>
                      <p class="why-choose-sub-heading">Explore our comprehensive list of vendors with unique services, packages and prices  ranging from catering, photography, videography.</p>
                      <a href="#" class="btn read-more">Read More</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="why-choose-block">
                <div class="row">
                  <div class="col-xs-3">
                    <div class="why-choose-icon">
                      <img src="images/about-us-2/why-ch-icon-bg.png" class="img-responsive" alt="icon">
                      <i class="flaticon-valentine-day"></i>
                    </div>
                  </div>
                  <div class="col-xs-9">
                    <div class="why-choose-dtl">
                      <h4 class="why-choose-heading">100 Real Weddings</h4>
                      <p class="why-choose-sub-heading">The one-stop shop for your wedding preparations! Create a virtual wedding, connect directly with vendors.</p>
                      <a href="#" class="btn read-more">Read More</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="why-choose-block">
                <div class="row">
                  <div class="col-xs-3">
                    <div class="why-choose-icon">
                      <img src="images/about-us-2/why-ch-icon-bg.png" class="img-responsive" alt="icon">
                      <i class="flaticon-wedding-day"></i>
                    </div>
                  </div>
                  <div class="col-xs-9">
                    <div class="why-choose-dtl">
                      <h4 class="why-choose-heading">Perfect Checklist</h4>
                      <p class="why-choose-sub-heading">Search & filter based on regions, budget and reviews & ratings to quickly find the perfect vendor for your special day.</p>
                      <a href="#" class="btn read-more">Read More</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="weddlist-img">
            <img src="images/about-us-2/weddlist.png" class="img-responsive" alt="weddlist img">
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end why choose -->
<!-- how it work -->
  <section id="how-it-work" class="parallax how-it-main-block" style="background-image: url('images/bg/testimonial-bg.jpg');">
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="section text-center">
        <h3 class="section-heading">How It Works</h3>
        <p class="section-sub-heading">Planning your dream wedding with ease</p>
      </div>
      <div class="col-sm-4">
        <div class="how-it-block text-center">
          <div class="how-it-icon">
            <i class="flaticon-wedding-location"></i>
          </div>
          <h4 class="how-it-heading">1.Find The Vendor</h4>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="how-it-block text-center">
          <div class="how-it-icon">
            <i class="flaticon-wedding-planning"></i>
          </div>
          <h4 class="how-it-heading">2.Compare The Proposal</h4>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="how-it-block text-center">
          <div class="how-it-icon">
            <i class="flaticon-heart-with-arrow"></i>
          </div>
          <h4 class="how-it-heading">3.Hire The Right Vendor</h4>
        </div>
      </div>
    </div>
  </section>
<!-- end how it work -->

</asp:Content>

