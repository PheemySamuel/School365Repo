<%@ Page Title="" Language="C#" MasterPageFile="~/Students/Students.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="School365.Student.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    
    <div class="row">  
        <fieldset>
     <legend>LOGIN</legend> 
       <asp:Label ID="errorDisplay" runat="server" Text=" " style="color:darkred;font-style:italic;font-size:small;font-weight:700"/>        
      <div class="large-4 columns">        
          <asp:TextBox ID="invoiceNum" runat="server" placeholder="INVOICE NUMBER"></asp:TextBox>
          <asp:TextBox ID="pin" runat="server" TextMode="Password" placeholder="PIN NUMBER"></asp:TextBox>
          <asp:Button ID="submit" runat="server" CssClass="button" style="float:right; opacity:0.5;" Text="Login" OnClick="submit_Click" />          
      </div>
             <div class="large-4 columns">
                <asp:Image ID="LoginImage" runat="server" ImageUrl="~/Image/loginPic.jpg" />
            </div>
       </fieldset>       
    </div>             
</asp:Content>
