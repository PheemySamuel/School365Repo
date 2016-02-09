<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Navigate.aspx.cs" Inherits="School365.Admin.Results.Navigate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="large-4 columns">
            <asp:DropDownList ID="allResult" runat="server">
                <asp:ListItem>Detailed</asp:ListItem>
                <asp:ListItem>MasterMarkSheet</asp:ListItem>
                <asp:ListItem>Summary</asp:ListItem>
            </asp:DropDownList>           
        </div>
        <div class="large-4 columns">
            <asp:DropDownList ID="SubComb" runat="server">
                
            </asp:DropDownList>  
        </div>
        <div class="large-4 collums">
            <asp:Button id="navigate" runat="server" CssClass="button" Text="Navigate" OnClick="navigate_Click" />
        </div>
    </div>
</asp:Content>
