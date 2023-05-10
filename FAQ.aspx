<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">FAQ</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Index.aspx">Home</a></li>
            <li class="active">FAQ</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!--  faq -->    
  <section class="main-container">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="search-block">
            <form>
              <input type="search" class="form-control" id="search" placeholder="Search Here..."/>
              <a href="#"><i class="fa fa-search"></i></a>
            </form>
          </div>
          <div class="faq-nav-list">
            <h6 class="faq-nav-heading">Categories</h6>
            <ul>
              <li><a href="#">Wedding Venue</a></li>
              <li><a href="#">Wedding Cakes</a></li>
              <li><a href="#">Wedding Catering</a></li>
              <li><a href="#">Wedding Dresses</a></li>
              <li><a href="#">Transport</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-9">
          <div class="faq-block">
            <div class="panel-group faq-panel" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h6 class="panel-title question-heading">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      Which Payment Methods Are Supported?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                  <div class="panel-body">
                    <p>Credit and debit cards: Most payment processors support major credit and debit cards, such as Visa, Mastercard, American Express, and Discover.</p>

<p>PayPal: PayPal is a popular payment method that many people use to pay for goods and services online.</p>

<p>Apple Pay and Google Pay: These are digital wallets that allow customers to make payments using their mobile devices.</p>

<p>Bank transfers: Some payment processors allow customers to make payments through bank transfers or wire transfers.</p>

<p>Cryptocurrencies: Some payment processors are starting to support cryptocurrencies such as Bitcoin and Ethereum as a payment method.</p>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                       Can I cancel or refund my subscription?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="panel-body">
                    <p>Whether or not you can cancel or refund your subscription will depend on the specific terms and conditions of your wedding website subscription. However, many wedding website providers offer cancellation and refund policies to their customers.</p>

<p>If you're considering canceling or refunding your subscription, it's important to review the terms and conditions of your subscription to see what your options are. Some wedding website providers may allow you to cancel your subscription at any time, while others may require you to give notice before canceling. Similarly, some providers may offer full or partial refunds for canceled subscriptions, while others may not offer refunds at all.</p>

<p>If you're unsure about the terms and conditions of your subscription, you should contact the customer support team of your wedding website provider for more information. They can provide you with details on the cancellation and refund policies for your subscription, as well as help you cancel your subscription if necessary.</p>
                       </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                     What is the schedule for the wedding day?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="panel-body">
                    
The schedule for the wedding day will vary depending on your specific wedding plans and preferences, but here is a general outline of what a wedding day schedule might look like:

Before the Ceremony:

Hair and makeup appointments for the bridal party
Getting dressed and taking photos
Final preparations at the ceremony and reception venues
Ceremony:

Guests arrive and are seated
Wedding party processional
Exchange of vows and rings
Recessional
Cocktail Hour:

Guests move to a separate location for drinks and hors d'oeuvres while the wedding party takes photos
Reception:

Guests are seated for dinner
First dance and other special dances (father/daughter, mother/son, etc.)
Toasts and speeches
Dinner service
Cake cutting
Dancing and other entertainment
Bouquet and garter toss (if included)
Late Night:

Late-night snacks and drinks
Dancing and entertainment continue
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour">
                  <h6 class="panel-title question-heading">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                     How can I showcase my work on the wedding website?
                      <span class="btn btn-default faq-btn faq-btn-minus hidden-xs"><i class="fa fa-minus"></i></span>
                      <span class="btn btn-default faq-btn faq-btn-plus hidden-xs"><i class="fa fa-plus"></i></span>
                    </a>
                  </h6>
                </div>
                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                  <div class="panel-body">
                    <p> Portfolio section: Many wedding websites have a portfolio section where vendors can showcase their work. This might include photos, videos, or examples of previous projects you've worked on.</p>

<p>Featured vendor section: Some wedding websites have a featured vendor section where they highlight different vendors and their work. This can be a great way to get more exposure and reach new clients.</p>

<p>Blog posts: If the wedding website has a blog section, you may be able to contribute guest posts that showcase your work or provide helpful tips and advice related to your area of expertise.</p>

<p>Social media integration: Some wedding websites allow you to integrate your social media profiles, such as Instagram or Pinterest, so that visitors to the website can see your latest work and get a sense of your style and approach.</p>

<p>Testimonials and reviews: Including testimonials and reviews from previous clients can be a great way to showcase your work and build credibility with potential clients.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end faq -->   

</asp:Content>

