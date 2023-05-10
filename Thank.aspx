<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Thank.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Thank page -->
	<section class="main-container">
		<div class="container text-center">
			<asp:Image ID="Image1" runat="server" Height="186px" ImageUrl="~/images/thank.png" Width="396px" />
            <br />
            <br />
			<div class="error-sub-heading">Registration Succesfully done.</div>
      <a href="Index.aspx" class="btn btn-pink">Back To Home</a> &nbsp;
		</div>
	</section>
<!-- Thank page -->
</asp:Content>

