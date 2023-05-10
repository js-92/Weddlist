<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Customer_Orders.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Your Orders</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Customer_Index.aspx">Home</a></li>
            <li class="active">Your Orders</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
    <br />
    <br />
    <br />
      <section id="manage-item-listing" class="manage-item-listing-main-block">
    <div class="container">
    <div class="manage-item-listing-block">
        <table>
          <tr class="top-heading-row">
            <th class="vendor-img">Customer Email</th>
            <th class="title">Event Date</th>
            <th class="address">Message</th>
            <th class="price">Status</th>
          </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
          <tr>
            <td class="title"><%# DataBinder.Eval(Container,"DataItem.customer_email") %></td>
            <th class="title"><%# DataBinder.Eval(Container,"DataItem.event_date") %></th>
            <td class="address"><%# DataBinder.Eval(Container,"DataItem.message ") %></td>
            <td class="price"><%# DataBinder.Eval(Container,"DataItem.status") %></td>
          </tr>
             </ItemTemplate>
            </asp:Repeater>
        </table>
      </div>
    </div>
  </section>
<!-- end manage item listing -->
</asp:Content>

