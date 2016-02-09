<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditCourses.aspx.cs" Inherits="School365.Admin.Courses.EditCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="row">
        <div class="large-4 columns">
            <asp:TextBox ID="CourseCode" runat="server" placeholder="Course Code"></asp:TextBox>
        </div>
         <div class="large-4 columns"  style="float:left">
            <asp:Button ID="GetStudent" runat="server" Text="Get Subjects" CssClass="button" OnClick="GetStudent_Click" />
        </div>
    </div>
    <div class="row">
        <div class="large-12 columns">
        <asp:GridView ID="allSubjects" runat="server" AutoGenerateColumns="false" >
           <Columns>             
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:TextBox ID="SubjectID" runat="server" Visible="false"  Text='<%#Bind("SubjectID") %>'> ></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="SubjectName">
                <ItemTemplate>
                    <asp:TextBox ID="SubjectName" runat="server"  Text='<%#Bind("SubjectName") %>'>> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>          

            <asp:TemplateField HeaderText="SubjectCode">
                <ItemTemplate>
                    <asp:TextBox ID="SubjectCode" runat="server"  Text='<%#Bind("SubjectCode") %>'>> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Active">
                <ItemTemplate>
                    <asp:TextBox ID="Active" runat="server"  Text='<%#Bind("Active") %>'>> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="SubjectValue">
                <ItemTemplate>
                    <asp:TextBox ID="SubjectValue" runat="server" Text='<%#Bind("SubjectValue") %>'> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

               <asp:TemplateField HeaderText="SubjectUnit">
                <ItemTemplate>
                    <asp:TextBox ID="SubjectUnit" runat="server" Text='<%#Bind("SubjectUnit") %>'> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Semester">
                <ItemTemplate>                   
                    <asp:TextBox ID="Semester" runat="server" Text='<%#Bind("Semester") %>'> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="SubjectLevel">
                <ItemTemplate>
                    <asp:TextBox ID="SubjectLevel" runat="server" Text='<%#Bind("SubjectLevel") %>'> </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        </asp:GridView>
            </div>
    </div>
    <div class="row">
        <div class="large-6 columns">
            <asp:Button ID="UpdateBtn" runat="server" Text="Update"  CssClass="button" style="float:right" OnClick="UpdateBtn_Click"/>
        </div>
    </div>
</asp:Content>
