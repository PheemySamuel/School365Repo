 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="School365.Admin.Student.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <style>
   body{
           padding-bottom:70px;
       }
        </style>
    <div>
    <nav class="top-bar docs-bar hide-for-small" data-topbar="">
            <ul class="title-area">
                <li class="name">
                    <h1>
                        <a href="#">
                            <img class="zurb-logo" src="">
                            <span>EDUCATION 365</span>
                        </a>
                    </h1>
                </li>
            </ul>

            <section class="top-bar-section">
                <ul class="right">
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/learn/features.html" class="">Students</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="http://foundation.zurb.com/learn/features.html">Students</a></li>
                            <li><a href="AddStudents.aspx">Upload Students</a></li>
                            <li><a href="Invoice.aspx">Add Students</a></li>
                            <li><a href="GenerateMatric.aspx">Generate Matric</a></li>
                            <li><a href="InsertPin.aspx">Insert Pin</a></li>
                            <li><a href="AddCourseForRegistered.aspx">Adjust Registered</a></li>
                            <li><a href="ScoreStudent.aspx">Score Student</a></li>
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/develop/getting-started.html" class=""> Departments</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="#">Department</a></li>
                            <li class="title">Frameworks</li>
                            <li><a class="" href="../Faculty/AddFaculty.aspx">Add Departments</a></li>          
                            <li class="spaced-divider">
                                <hr>
                            </li>
                            <li><a href="http://foundation.zurb.com/templates.html">Edit Departments</a></li>
                           
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <li><a class="" href="../Faculty/AddFaculty.aspx">Add Faculty</a></li>   
                    </li>
                    <li>
                        <li><a class="" href="../Results/Detailed.aspx">Results</a></li>   
                    </li>
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/support/support.html" class="">Courses</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="#">Add Courses</a></li>
                            <li><a href="../Courses/AddCourses.aspx">Add Courses</a></li>
                            <li><a href="../Courses/EditCourses.aspx">Edit</a></li>
                            
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href=#">Admin</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="#">Admin</a></li>
                            <li><a href="http://foundation.zurb.com/sites/docs/v/5.5.3/">Profile</a></li>
                            <li><a href="http://foundation.zurb.com/sites/docs"></a></li>
                            <li><a href="http://zurb.com/ink/docs.php">Emails Docs</a></li>
                            <li><a href="http://foundation.zurb.com/apps/docs">Apps Docs</a></li>
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="has-form">
                        <a href="../Administrator/Login.aspx" class="small button">Log Out</a>
                    </li>
                </ul>
            </section>
        </nav>
    </div>

    <fieldset>
    <legend>REGISTER</legend>
        <asp:Label ID="key" runat="server" Text=" " ></asp:Label>
    <div class="row">
      <div class="large-6 columns">        
          <asp:TextBox ID="surname" runat="server" placeholder="Surname"></asp:TextBox>
      </div>
        <div class="large-6 columns">        
          <asp:TextBox ID="firstname" runat="server" placeholder="Firstname"></asp:TextBox>
      </div>
        <div class="large-6 columns">        
          <asp:TextBox ID="othername" runat="server" placeholder="Othername"></asp:TextBox>
      </div>
    </div>

    <div class="row">
         <div class="large-4 columns">
        <label>Country</label>
        <asp:DropDownList ID="country" runat="server">            
            <asp:ListItem>Nigeria</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
      </div>
      <div class="large-4 columns">
        <label>State Of Origin</label>
        <asp:DropDownList ID="sor" runat="server">
                        <asp:ListItem>Abia</asp:ListItem>
                        <asp:ListItem>Adamawa</asp:ListItem>
                        <asp:ListItem>Akwa-Ibom</asp:ListItem>
                        <asp:ListItem>Anambra</asp:ListItem>
                        <asp:ListItem>Abuja</asp:ListItem>
                        <asp:ListItem>Bauchi</asp:ListItem>
                        <asp:ListItem>Bayelsa</asp:ListItem>
                        <asp:ListItem>Benue</asp:ListItem>
                        <asp:ListItem>Borno</asp:ListItem>
                        <asp:ListItem>Cross River</asp:ListItem>
                        <asp:ListItem>Delta</asp:ListItem>
                        <asp:ListItem>Ebonyi</asp:ListItem>
                        <asp:ListItem>Edo</asp:ListItem>
                        <asp:ListItem>Ekiti</asp:ListItem>
                        <asp:ListItem>Enugu</asp:ListItem>
                        <asp:ListItem>Gombe</asp:ListItem>
                        <asp:ListItem>Imo</asp:ListItem>
                        <asp:ListItem>Jigawa</asp:ListItem>
                        <asp:ListItem>Kaduna</asp:ListItem>
                        <asp:ListItem>Kano</asp:ListItem>
                        <asp:ListItem>Katsina</asp:ListItem>
                        <asp:ListItem>Kebbi</asp:ListItem>
                        <asp:ListItem>Kogi</asp:ListItem>
                        <asp:ListItem>Kwara</asp:ListItem>
                        <asp:ListItem>Lagos</asp:ListItem>
                        <asp:ListItem>Nassarawa</asp:ListItem>
                        <asp:ListItem>Niger</asp:ListItem>
                        <asp:ListItem>Ogun</asp:ListItem>
                        <asp:ListItem>Ondo</asp:ListItem>
                        <asp:ListItem>Osun</asp:ListItem>
                        <asp:ListItem>Oyo</asp:ListItem>
                        <asp:ListItem>Plateau</asp:ListItem>
                        <asp:ListItem>Rivers</asp:ListItem>
                        <asp:ListItem>Sokoto</asp:ListItem>
                        <asp:ListItem>Taraba</asp:ListItem>
                        <asp:ListItem>Yobe</asp:ListItem>
                        <asp:ListItem>Zamfara</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
      </div>
     
      <div class="large-4 columns">
        <div class="row collapse">
          <label>LGA</label>
          <div class="small-9 columns">
            
              <asp:TextBox ID="lga" runat="server" placeholder="Local Government Area"></asp:TextBox>
          </div>
          <div class="small-3 columns">
            
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="large-4 columns">        
          <asp:TextBox ID="email" runat="server" placeholder="Email Address"></asp:TextBox>
      </div>
        <div class="large-4 columns">        
          <asp:TextBox ID="phoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox>
      </div>
        <div class="large-4 columns"> 
                  
          <asp:DropDownList ID="sex" runat="server">
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>

     <div class="row">
         
      <div class="large-4 columns"> 
          <label>School</label>       
          <asp:DropDownList ID="school" runat="server" placeholder="School"></asp:DropDownList>
      </div>
        
        <div class="large-4 columns"> 
             <label>Major</label>       
         <asp:DropDownList ID="major" runat="server">
              
          </asp:DropDownList>
      </div>
         
        <div class="large-4 columns"> 
            <label>Minor</label>                  
          <asp:DropDownList ID="minor" runat="server">
              
          </asp:DropDownList>
      </div>
    </div>
     <div class="row">
         <div class="small-12 large-12 columns">
        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button" style="float:right; top: 0px; left: 0px;" OnClick="submit_Click" />
         </div>
     </div>

  </fieldset>
 
  
</asp:Content>
