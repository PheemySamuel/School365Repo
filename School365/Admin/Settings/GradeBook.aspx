<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GradeBook.aspx.cs" Inherits="School365.Admin.GradeBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="row">
        <div class="large-2 columns">
            <asp:TextBox ID="Minimum" runat="server" placeholder="Minimum"></asp:TextBox>
        </div>
         <div class="large-2 columns">
            <asp:TextBox ID="Maximum" runat="server" placeholder="Maximum"></asp:TextBox>
        </div>
        <div class="large-2 columns"> 
          <asp:TextBox ID="Value" runat="server" placeholder="Value"></asp:TextBox>      
        </div>
         <div class="large-2 columns"> 
          <asp:TextBox ID="Name" runat="server" placeholder="Grade Name"></asp:TextBox>      
        </div>

        <div class="large-2 columns">
            <asp:Button ID="InsertBtn" runat="server" Text="Insert" CssClass="button small" OnClick="InsertBtn_Click"></asp:Button>
        </div>       
    </div>

    <div class="row">
       <div class="large-7">
        <asp:GridView ID="allGrades" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Minimum" HeaderText="Minimum" />
                <asp:BoundField DataField="Maximum" HeaderText="Maximum" />
                <asp:BoundField DataField="Value" HeaderText="Value" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
            </Columns>
        </asp:GridView>
       </div>
    </div>
</asp:Content>
