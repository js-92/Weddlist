<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegister.aspx.cs" Inherits="_Default" enableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- register page -->
  <section id="register-page" class="register-main-block">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="register-block">
            <h4 class="register-heading text-center">Customer Register</h4>
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Firstname"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Lastname"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
            </div>
             <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" class="form-control" >
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
             <div class="form-group">
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                     <ContentTemplate>
                         <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Email" OnTextChanged="CheckEmail" AutoPostBack="true"></asp:TextBox>
                         <asp:Label ID="Label4" runat="server" Text="Email Exists" Visible="False"></asp:Label>
                     </ContentTemplate>
                 </asp:UpdatePanel>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Alternate Phone"></asp:TextBox>
             </div>    
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="State" ></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sname" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [sname] FROM [state]"></asp:SqlDataSource>
                      </div>
                      <div class="form-group">
                          <asp:Label ID="Label3" runat="server" Text="City" ></asp:Label>
                          <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" ></asp:DropDownList>
                     </div>    
                  </ContentTemplate>
               </asp:UpdatePanel>              
             <div class="form-group">  
                <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
             </div >
             <div class="form-group">  
                <asp:TextBox ID="TextBox9" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
             </div>    
             <div class="form-group">  
                 <asp:FileUpload ID="FileUpload1" runat="server" />
             </div> 
             <div class="form-group">    
                <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="TextBox11" runat="server" class="form-control" placeholder="ReenterPassword" TextMode="Password"></asp:TextBox>
             </div>
                <div class="checkbox-dtl">
                  <input type="checkbox" value="None" id="checkbox2" name="check" />
                  <label for="checkbox2"></label>
                  <div class="terms-conditions">I agree to all <a href="#">terms &amp; Conditions</a></div>
                </div>
               <asp:Button ID="Button1" runat="server" Text="Register Now" class="btn btn-pink" OnClick="Button1_Click" />
              <p class="sign-in text-center">
                Already have an account? <a href="#">Sign In</a>
              </p>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end register page -->
<!-- end register page -->

</asp:Content>

