<%@ Page Title="" Language="C#" MasterPageFile="~/Students/Students.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="School365.Student.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <fieldset>
    <legend>REGISTER</legend>

    <div class="row">
      <div class="large-6 columns">        
          <asp:TextBox ID="surname" runat="server" placeholder="Surname"></asp:TextBox>
          <asp:RequiredFieldValidator ID="surnameValidate" ControlToValidate="surname" runat="server" ErrorMessage="Cannot be Empty" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
      </div>
        <div class="large-6 columns">        
          <asp:TextBox ID="firstname" runat="server" placeholder="Firstname"></asp:TextBox>
            <asp:RequiredFieldValidator ID="firstnameValidate" ControlToValidate="firstname" runat="server" ErrorMessage="Cannot be Empty" style="color: #FF0000; font-weight: 700"></asp:RequiredFieldValidator>
      </div>
        <div class="large-6 columns">        
          <asp:TextBox ID="othername" runat="server" placeholder="Othername"></asp:TextBox>
            
      </div>
    </div>

    <div class="row">
         <div class="large-4 columns">
        <label>Country</label>
        <asp:DropDownList ID="country" runat="server">            
            <asp:ListItem>Nigeria</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
      </div>
      <div class="large-4 columns">
        <label>State Of Origin</label>
        <asp:DropDownList ID="sor" runat="server">
                        <asp:ListItem>Abia</asp:ListItem>
                        <asp:ListItem>Adamawa</asp:ListItem>
                        <asp:ListItem>Akwa-Ibom</asp:ListItem>
                        <asp:ListItem>Anambra</asp:ListItem>
                        <asp:ListItem>Abuja</asp:ListItem>
                        <asp:ListItem>Bauchi</asp:ListItem>
                        <asp:ListItem>Bayelsa</asp:ListItem>
                        <asp:ListItem>Benue</asp:ListItem>
                        <asp:ListItem>Borno</asp:ListItem>
                        <asp:ListItem>Cross River</asp:ListItem>
                        <asp:ListItem>Delta</asp:ListItem>
                        <asp:ListItem>Ebonyi</asp:ListItem>
                        <asp:ListItem>Edo</asp:ListItem>
                        <asp:ListItem>Ekiti</asp:ListItem>
                        <asp:ListItem>Enugu</asp:ListItem>
                        <asp:ListItem>Gombe</asp:ListItem>
                        <asp:ListItem>Imo</asp:ListItem>
                        <asp:ListItem>Jigawa</asp:ListItem>
                        <asp:ListItem>Kaduna</asp:ListItem>
                        <asp:ListItem>Kano</asp:ListItem>
                        <asp:ListItem>Katsina</asp:ListItem>
                        <asp:ListItem>Kebbi</asp:ListItem>
                        <asp:ListItem>Kogi</asp:ListItem>
                        <asp:ListItem>Kwara</asp:ListItem>
                        <asp:ListItem>Lagos</asp:ListItem>
                        <asp:ListItem>Nassarawa</asp:ListItem>
                        <asp:ListItem>Niger</asp:ListItem>
                        <asp:ListItem>Ogun</asp:ListItem>
                        <asp:ListItem>Ondo</asp:ListItem>
                        <asp:ListItem>Osun</asp:ListItem>
                        <asp:ListItem>Oyo</asp:ListItem>
                        <asp:ListItem>Plateau</asp:ListItem>
                        <asp:ListItem>Rivers</asp:ListItem>
                        <asp:ListItem>Sokoto</asp:ListItem>
                        <asp:ListItem>Taraba</asp:ListItem>
                        <asp:ListItem>Yobe</asp:ListItem>
                        <asp:ListItem>Zamfara</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
      </div>
     
      <div class="large-4 columns">
        <div class="row collapse">
          <label>LGA</label>
          <div class="small-9 columns">
            
              <asp:TextBox ID="lga" runat="server" placeholder="Local Government Area"></asp:TextBox>
          </div>
          <div class="small-3 columns">
            
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="large-4 columns">        
          <asp:TextBox ID="email" runat="server" placeholder="Email Address"></asp:TextBox>
          <asp:RequiredFieldValidator ID="emailValidate" ControlToValidate="email" runat="server" style="color: #FF0000; font-weight: 700; font-size: medium;" ErrorMessage="Cannot be Empty"></asp:RequiredFieldValidator>
            
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="color: #FF0000; font-weight: 700; font-size: medium;" ControlToValidate="email" ErrorMessage="Use a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
           </div>
        <div class="large-4 columns">        
          <asp:TextBox ID="phoneNumber" runat="server" placeholder="Phone Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="phoneValidate" ControlToValidate="phoneNumber" runat="server" style="color: #FF0000; font-weight: 700" ErrorMessage="Cannot be empty"></asp:RequiredFieldValidator>
      </div>
        <div class="large-4 columns"> 
                  
          <asp:DropDownList ID="sex" runat="server">
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>

     <div class="row">
         
      <div class="large-4 columns"> 
          <label>School</label>       
          <asp:DropDownList ID="school" runat="server" placeholder="School"></asp:DropDownList>
      </div>
        
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
    </div>
     <div class="row">
         <div class="small-12 large-12 columns">
        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button" style="float:right" OnClick="submit_Click" />
         </div>
     </div>

  </fieldset>
 
</asp:Content>
