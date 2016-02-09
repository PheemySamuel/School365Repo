<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="School365.Admin.Administrator.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br /><br />
    <hr />
    <div class="row">
        <div class="columns large-4" style="background-color: gainsboro">
            <p align="center">
                <asp:Label ID="faculty" runat="server" Text="0" Style="font-size: 103px; font-family: Castellar;"></asp:Label></p>
            <p align="center" style="font-family: 'Segoe UI'; font-size: x-large; color: black">Faculty</p>
        </div>
        <div class="columns large-4" style="background-color: gainsboro">
            <p align="center">
                <asp:Label ID="department" runat="server" Text="0" Style="font-size: 103px; font-family: Castellar;"></asp:Label></p>
            <p align="center" style="font-family: 'Segoe UI'; font-size: x-large; color: black">Department</p>
        </div>
        <div class="columns large-4" style="background-color: gainsboro">
            <p align="center">
                <asp:Label ID="courses" runat="server" Text="0" Style="font-size: 103px; font-family: Castellar;"></asp:Label></p>
            <p align="center" style="font-family: 'Segoe UI'; font-size: x-large; color: black">Courses</p>
        </div>


    </div>

    <div class="row">
        <div class="columns large-4" style="background-color: gainsboro">
            <p align="center">
                <asp:Label ID="StudentNo" runat="server" Text=" " Style="font-size: 103px; font-family: Castellar;"></asp:Label></p>
            <p align="center" style="font-family: 'Segoe UI'; font-size: x-large; color: black">Students</p>

        </div>
        <div class="columns large-4" style="background-color: gainsboro">
            <p align="center">
                <asp:Label ID="Lectures" runat="server" Text="0" Style="font-size: 103px; font-family: Castellar;"></asp:Label></p>
            <p align="center" style="font-family: 'Segoe UI'; font-size: x-large; color: black">Lectures</p>
        </div>
        <div class="columns large-4" style="background-color: gainsboro">
            <p align="center">
                <asp:Label ID="Admin" runat="server" Text="0" Style="font-size: 103px; font-family: Castellar;"></asp:Label></p>
            <p align="center" style="font-family: 'Segoe UI'; font-size: x-large; color: black">Admin</p>
        </div>

    </div>

</asp:Content>
