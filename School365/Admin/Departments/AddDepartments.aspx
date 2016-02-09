<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddDepartments.aspx.cs" Inherits="School365.Admin.Departments.AddDepartments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
   <div class="row">
        <div class="large-3 columns">
            <asp:TextBox ID="deptName" runat="server" placeholder="Department Name"></asp:TextBox>
        </div>
         <div class="large-3 columns">
            <asp:TextBox ID="deptCode" runat="server" placeholder="Department Code"></asp:TextBox>
        </div>
       <div class="large-6 columns">   
           <asp:DropDownList ID="AllFaculty" runat="server"></asp:DropDownList>   
            <asp:Button ID="InsertBtn" runat="server" Text="Insert" CssClass="button small" OnClick="InsertBtn_Click" style="float:right"></asp:Button>     
        </div>        
    </div>

</asp:Content>
