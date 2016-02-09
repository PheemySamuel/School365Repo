<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditDepartment.aspx.cs" Inherits="School365.Admin.Departments.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
     <div class="row">
        <div class="large-4 columns">
            <asp:TextBox ID="DepartmentCode" runat="server" placeholder="Department Code"></asp:TextBox>
        </div>
         
         <div class="large-4 columns"  style="float:left">
            <asp:Button ID="GetStudent" runat="server" Text="Get Department" CssClass="button" OnClick="GetStudent_Click" />
        </div>
    </div>
    <div class="row">
        <div class="large-4 columns"></div>
        <div class="large-4 columns">
            <asp:GridView ID="allDepartment" runat="server" AutoGenerateColumns="false">
                <Columns>
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:TextBox ID="DepartmentID" runat="server" Visible="false" Text='<%#Bind("DepartmantID") %>'></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>

                    <asp:TemplateField HeaderText="Department Name">
                       <ItemTemplate>
                           <asp:TextBox ID="DepartmentName" runat="server" Text='<%#Bind("DepartmentName") %>'></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>

                     <asp:TemplateField HeaderText="Department Code">
                       <ItemTemplate>
                           <asp:TextBox ID="DepartmentCode" runat="server" Text='<%#Bind("DepartmentCode") %>'></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>
                    <asp:TemplateField>
                       <ItemTemplate>
                           <asp:TextBox ID="FacultyName" runat="server" Visible="false" Text='<%#Bind("FacultyName") %>'></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>
                     
                </Columns>
            
            </asp:GridView>
        </div>
        <div class="large-4 columns" style="float:left"> 
            <br />
            <label id="facultyLbl">Select Faculty</label>           
            <asp:DropDownList ID="FacultyDetail" runat="server">

            </asp:DropDownList>       
        </div>
    </div>
    <div class="row">
        <div class="large-6 columns">        
            <asp:Button ID="UpdateStudents" runat="server" Text="Update Department" CssClass="button" style="float:right" OnClick="UpdateStudents_Click" />       
        </div>
    </div>

</asp:Content>
