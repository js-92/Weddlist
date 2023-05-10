<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Customer_Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- page banner -->
  <section id="page-banner" class="page-banner bg-dark" style="background-image: url('images/banner-2.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Customer Dashboard</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Customer_Index.aspx">Home</a></li>
            <li class="active">Customer Dashboard</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- vendor dashboard -->
  <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="#" class="active btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="Find_Vendor2.aspx" class="btn btn-default"><span class="badge">Find Vendor</span></a></li>
        <li><a href="Ask_Quries.aspx" class="btn btn-default"><span class="badge">Ask Quries</span></a></li>
        <li><a href="Customer_Orders.aspx" class="btn btn-default"><span class="badge">Your Orders</span></a></li>
        <li><a href="Customer_Profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
      </ul>
      <div class="vendor-dashboard-block">
        <h3 class="vendor-dashboard-heading dashboard-heading">My Dashboard</h3>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-social"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">500</h2>
                  <div class="vendor-dashboard-text">Total Item Page Review</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-social"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">89</h2>
                  <div class="vendor-dashboard-text">Total Item Page Review</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-like"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">250</h2>
                  <div class="vendor-dashboard-text">Total Couple Inquiry</div>
                </div>
              </div>
            </div>
          </div> 
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-like"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">31</h2>
                  <div class="vendor-dashboard-text">Total Couple Inquiry</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="my-dashboard">
              <div class="col-xs-2">
                <i class="flaticon-file"></i>
              </div>
              <div class="col-xs-10">
                <div class="may-dashboard-dtl facts-block">
                  <h2 class="facts-number counter">215</h2>
                  <div class="vendor-dashboard-text">Total Listing Items</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <div class="my-progress-dashboard">   
              <h4 class="progress-bar-heading">Profile Completed</h4>
              <div class="progress-pie-chart clr-blue" data-percent="68">
                <div class="ppc-progress">
                  <div class="ppc-progress-fill"></div>
                </div>
                <div class="ppc-percents">
                  <div class="pcc-percents-wrapper">
                    <span class="clr-blue">%</span>
                    <div class="text">completed</div>
                  </div>
                </div>
              </div> 
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="your-plan-board">
              <div class="your-plan-board-heading">Your Plan</div>
              <h2 class="facts-number counter">60</h2>
              <div class="per-month">Per Month</div>
              <div class="expire-dtl">
                <div class="expire-dtl-heading">plan expire date</div>
                <div class="expire-date">August 11, 2017</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end vendor dashboard -->
</asp:Content>

