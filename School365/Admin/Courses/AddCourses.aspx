<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCourses.aspx.cs" Inherits="School365.Admin.Courses.AddCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="large-4 columns">
            <asp:FileUpload ID="uploadCSV" runat="server" />
            <asp:Button ID="submit" runat="server" CssClass="button" Text="Insert Subjects" OnClick="submit_Click" />
        </div>
        <div class="large-4 columns">
        </div>
    </div>

    <div class="row">
        <div class="large-2 columns">
            <br />
            <asp:TextBox ID="SubjectName" runat="server" placeholder="Subject Name" />
        </div>
        <div class="large-2 columns">
            <br />
            <asp:TextBox ID="SubjectCode" runat="server" placeholder="Subject Code" />
        </div>
        <div class="large-2 columns">
            <asp:Label id="SubValLbl" runat="server">Subject Value</asp:Label>
            <asp:DropDownList ID="SubjectValue" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="large-1 columns">
            <asp:Label id="SubUnit" runat="server">Unit</asp:Label>
            <asp:DropDownList ID="SubjectUnit" runat="server">
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem>R</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="large-2 columns">
            <asp:Label id="actLbl" runat="server">Active</asp:Label>
            <asp:DropDownList ID="Active" runat="server">
                <asp:ListItem>TRUE</asp:ListItem>
                <asp:ListItem>FALSE</asp:ListItem>
            </asp:DropDownList>
        </div> 
        <div class="large-1 columns">
            <asp:Label id="SemLbl" runat="server">Semester</asp:Label>
            <asp:DropDownList ID="Semester" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="large-2 columns">
            <asp:Label id="subLbl" runat="server">Subject Level</asp:Label> 
            <asp:DropDownList ID="SubjectLevel" runat="server">
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>200</asp:ListItem>
                <asp:ListItem>300</asp:ListItem>
                <asp:ListItem>400</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="large-12 columns">
            <asp:Button ID="insertBtn" runat="server" CssClass="button" Text="Insert" style="float:right" OnClick="insertBtn_Click"/> 
        </div>
    </div>
</asp:Content>
