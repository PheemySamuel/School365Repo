<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AssignSubCombination.aspx.cs" Inherits="School365.Admin.SubjectCombinations.AssignSubCombination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="row">
      <div class="large-4 columns"> 
             <label>Subject Combination</label>       
         <asp:DropDownList ID="SubComb" runat="server">
              
          </asp:DropDownList>
      </div>
         
        <div class="large-4 columns"> 
            <label>Departments</label>                  
          <asp:DropDownList ID="Dept" runat="server">             
          </asp:DropDownList>
       </div>
        <div class="large-4 columns">  
                      
       </div>
     </div>
    <div class="row">
        <div class="row-3"></div>
        
        <div class="large-7" role="grid">   
             <asp:Button ID="submit" runat="server" CssClass="button" Text="Submit"  OnClick="submit_Click" />         
            <asp:GridView runat="server" ID="allSubjects" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox ID="Crs" runat="server" class="input-sm" />
                    </ItemTemplate>
                </asp:TemplateField>
                    
                    <asp:BoundField DataField="SubjectID" HeaderText="Subject ID" />
                    <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" />
                      <asp:BoundField DataField="SubjectLevel" HeaderText="Subject Level" />
                </Columns>
            </asp:GridView>
            
           
        </div>
    </div>
</asp:Content>
