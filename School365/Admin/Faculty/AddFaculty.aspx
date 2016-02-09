<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddFaculty.aspx.cs" Inherits="School365.Admin.Faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="row">
        <div class="large-3 columns">
            <asp:TextBox ID="facultyName" runat="server" placeholder="Faculty Name"></asp:TextBox>
        </div>
         <div class="large-3 columns">
            <asp:TextBox ID="facultyCode" runat="server" placeholder="Faculty Code"></asp:TextBox>
        </div>
        <div class="large-3 columns">
            <asp:Button ID="InsertBtn" runat="server" Text="Insert" CssClass="button small" OnClick="InsertBtn_Click"></asp:Button>
        </div>
        <div class="large-3 columns">           
        </div>
    </div>
</asp:Content>
