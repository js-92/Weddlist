<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="VendorRegister.aspx.cs" Inherits="_Default" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- register page -->
  <section id="register-page" class="register-main-block">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="register-block">
            <h4 class="register-heading text-center">Vendor Register</h4>
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </div>  
              <div class="form-group">  
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Name Of The Company"></asp:TextBox>
              </div>
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                      <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Catagory"></asp:Label>
                          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="CatogoryName" DataValueField="CatogoryName" AutoPostBack="True"></asp:DropDownList>
                          <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [CatogoryName] FROM [Category]"></asp:SqlDataSource>
                      </div>  
                      <div class="form-group"> 
                        <asp:Label ID="Label3" runat="server" Text="Subcatagory"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" > </asp:DropDownList>
                      </div>
                  </ContentTemplate>
              </asp:UpdatePanel>
              <div class="form-group">
                                  <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Services:"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="Include Meterials?"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" class="form-control" RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
              </div>  
              <div class="form-group"> 
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Number Of Staff"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Charge per Hour"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Text="Payment Type"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server"  class="form-control">
                    <asp:ListItem>Cheque</asp:ListItem>
                    <asp:ListItem>Cash</asp:ListItem>
                    <asp:ListItem>Upi</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
              </div>  
              <div class="form-group">
                  <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="First Deposite"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text="Notice Of Advance Booking:"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                    <asp:ListItem>Before 4 Hours</asp:ListItem>
                    <asp:ListItem>Before 24 Hours </asp:ListItem>
                    <asp:ListItem>Before 2 Days</asp:ListItem>
                    <asp:ListItem>Before  1 Week</asp:ListItem>
                    <asp:ListItem>Before 2 Week</asp:ListItem>
                </asp:DropDownList>
              </div> 
              <div class="form-group">   
                <asp:TextBox ID="TextBox9" runat="server" class="form-control" placeholder="Link Of Portfolio"></asp:TextBox>
                <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="TextBox11" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
                <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="Alternate Phone"></asp:TextBox>
              </div>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                       <div class="form-group"> 
                          <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                          <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" DataTextField="sname" DataValueField="sname" AutoPostBack="True"></asp:DropDownList>
                          <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [sname] FROM [state]"></asp:SqlDataSource>
                       </div>  
                       <div class="form-group"> 
                          <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                          <asp:DropDownList ID="DropDownList6" runat="server" class="form-control"></asp:DropDownList>
                         </div>
                  </ContentTemplate>
              </asp:UpdatePanel>   
              <div class="form-group"> 
                <asp:TextBox ID="TextBox13" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                <asp:TextBox ID="TextBox14" runat="server" class="form-control" placeholder="PIN"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="Upload Profile Picture:"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
              </div>   
              <div class="form-group">
                <asp:Label ID="Label10" runat="server" Text="Prefered Id"></asp:Label>
                <asp:DropDownList ID="DropDownList7" runat="server" class="form-control">
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>Pan Card</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Licence</asp:ListItem>
                    <asp:ListItem>Ration Card</asp:ListItem>
                </asp:DropDownList>
              </div> 
              <div class="form-group">
                <asp:Label ID="Label11" runat="server" Text="Upload Id"></asp:Label>
                <asp:FileUpload ID="FileUpload2" runat="server" class="form-control" />
                <asp:TextBox ID="TextBox15" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                <asp:TextBox ID="TextBox16" runat="server" class="form-control" placeholder="Re-Enter Password"></asp:TextBox>
              </div> 
                <div class="checkbox-dtl">
                  <input type="checkbox" value="None" id="checkbox2" name="check" />
                  <label for="checkbox2"></label>
                  <div class="terms-conditions">I agree to all <a href="#">terms &amp; Conditions</a></div>
                </div>
               <asp:Button ID="Button1" runat="server" Text="Register Now" class="btn btn-pink" OnClick="Button1_Click"/>
              <p class="sign-in text-center">
                Already have an account? <a href="#">Sign In</a>
              </p>
             <asp:Label ID="Label12" runat="server" Text="Registered Successfully" class="form-control" style="text-align:center" ForeColor="Green" Visible="False"></asp:Label>
             <asp:Label ID="Label13" runat="server" Text="Password Do Not Match" class="form-control" style="text-align:center" ForeColor="Red" Visible="False"></asp:Label>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end register page -->
<!-- end register page -->

</asp:Content>

