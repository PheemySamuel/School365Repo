<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="InsertPin.aspx.cs" Inherits="School365.Admin.Student.InsertPin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
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
     <hr />
    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button alert round" OnClick="submit_Click"/>
    <asp:GridView ID="allStudents" runat="server" AutoGenerateColumns="false">
        <Columns>             
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="StudentID" runat="server" Visible="false"  Text='<%#Bind("StudentID") %>'> ></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Surname">
                <ItemTemplate>
                    <asp:TextBox ID="Surname" runat="server" Visible="true" ReadOnly="true"  Text='<%#Bind("Surname") %>'> ></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Firstname">
                <ItemTemplate>
                    <asp:TextBox ID="Firstname" runat="server" ReadOnly="true" Text='<%#Bind("Firstname") %>'> ></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Othername">
                <ItemTemplate>
                    <asp:TextBox ID="Othername" runat="server" ReadOnly="true" Text='<%#Bind("Middlename") %>'>> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            
            <asp:TemplateField HeaderText="InvoiceNo">
                <ItemTemplate>
                    <asp:TextBox ID="InvoiceNo" runat="server" ReadOnly="true" Text='<%#Bind("InvoiceNumber") %>'>> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="MatricNo">
                <ItemTemplate>
                    <asp:TextBox ID="MatricNo" runat="server" ReadOnly="true" Text='<%#Bind("MatricNo") %>'>> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Pin">
                <ItemTemplate>
                    <asp:TextBox ID="Password" runat="server" Text='<%#Bind("Password") %>'> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>
</asp:Content>
