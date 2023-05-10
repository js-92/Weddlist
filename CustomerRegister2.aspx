<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegister2.aspx.cs" Inherits="_Default" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Customer Register</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Index.aspx">Home</a></li>
            <li class="active">Customer Register</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- couple profile -->
  <section id="couple-profile" class="couple-profile-main-page">
    <div class="container">
      <div class="row">
        <div class="col-md-6">  
          <div class="couple-profile-main-block">
            <div class="upload-profile-block mrgn-bottom-30">
              <h3 class="couple-profile-heading">Upload Profile Photo</h3>
              <div class="row">
                <div class="col-md-5 col-sm-4">
                  <div class="upload-img">
                      <img id="imgpreview" src="" class="img-responsive" style="height:165px;width:213px" />
                          <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
                          <script type="text/javascript">
                              function showpreview(input) {

                                  if (input.files && input.files[0]) {

                                      var reader = new FileReader();
                                      reader.onload = function (e) {
                                          $('#imgpreview').css('visibility', 'visible');
                                          $('#imgpreview').attr('src', e.target.result);
                                      }
                                      reader.readAsDataURL(input.files[0]);
                                  }
                              }
                           </script> 
                  </div>
                </div>
                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="col-md-7 col-sm-8">
                  <div class="upload-img-btn">
                      <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" onchange="showpreview(this)"  accept="image/png, image/gif, image/jpeg" />
                  </div>
                </div>
              </div>
            </div>
            <div class="couple-profile-block mrgn-bottom-30">
              <h3 class="couple-profile-heading">Customer Profile</h3>
                  <div class="form-group row">
                    <div class="col-sm-4"><label>First Name*</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Last Name*</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Age</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></div> 
                  </div>  
                  <div class="form-group row">
                    <div class="col-sm-4"><label>Gender</label></div> 
                    <div class="col-sm-8"><asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList></div> 
                  </div> 
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Date Of Birth</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Date"></asp:TextBox></div> 
                  </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Email</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="Email" OnTextChanged="CheckEmail" AutoPostBack="true" ></asp:TextBox><asp:Label ID="Label1" runat="server" Text="Email Exists" Visible="False" ForeColor="Red"></asp:Label></div> 
                  </div>
                         </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Phone</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox></div> 
                  </div> 
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Alternate Phone</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox></div> 
                  </div>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    <div class="form-group row">
                    <div class="col-sm-4"><label>State</label></div> 
                    <div class="col-sm-8">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sname" AutoPostBack="true"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [sname] FROM [state]"></asp:SqlDataSource>
                    </div> 
                  </div> 
                    <div class="form-group row">
                    <div class="col-sm-4"><label>City</label></div> 
                    <div class="col-sm-8">
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="true"></asp:DropDownList></div> 
                  </div> 
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Address</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox></div> 
                  </div> 
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Username</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox></div> 
                  </div> 
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Password</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="Password"></asp:TextBox></div> 
                  </div> 
                    <div class="form-group row">
                    <div class="col-sm-4"><label>Re-enter Password</label></div> 
                    <div class="col-sm-8"><asp:TextBox ID="TextBox11" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    </div> 
                  </div> 
                 <div class="form-group row">
                      <div class="col-sm-4"></div> 
                    <div class="col-sm-8">
                        <asp:Label ID="Label2" runat="server" Text="Password Do Not Match" Visible="False"  Font-Size="Medium" Height="30px" Font-Italic="False" EnableViewState="True" EnableTheming="True" BorderStyle="Double" ForeColor="Red" BorderColor="Black"></asp:Label>
                    </div> 
                  </div> 

                     <div class="form-group row">
                        <div class="col-sm-offset-4 col-sm-8"><asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-pink" OnClick="Button1_Click"/></div> 
                  </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end vendor profile -->
</asp:Content>

