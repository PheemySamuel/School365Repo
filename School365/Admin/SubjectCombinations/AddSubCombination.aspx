<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSubCombination.aspx.cs" Inherits="School365.Admin.SubjectCombinations.AddSubCombination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="row">
      <div class="large-4 columns"> 
             <label>Major</label>       
         <asp:DropDownList ID="major" runat="server">              
          </asp:DropDownList>
      </div>
         
        <div class="large-4 columns"> 
            <label>Minor</label>                  
          <asp:DropDownList ID="minor" runat="server">
              
          </asp:DropDownList>
       </div>
      <div class="large-4 columns"> 
            <br />                  
          <asp:Button ID="Submit" runat="server" CssClass="button small" Text="Submit" OnClick="Submit_Click" />
       </div>
 </div>
</asp:Content>
