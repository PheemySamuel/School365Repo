<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="School365.Admin.Settings.Session" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="row">
        <div class="columns large-4">
            <asp:TextBox ID="sessionYear" runat="server" placeholder="Session Year"></asp:TextBox>
        </div>
        <div class="columns large-4" style="float: left">
            <asp:Button ID="InsertBtn" runat="server" Text="Insert Session" CssClass="button" OnClick="InsertBtn_Click" />
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="columns large-2">
        </div>

        <div class="columns large-8">
             <asp:Button ID="UpdateSession" runat="server" Text="Assign Session" CssClass="button alert round" OnClick="UpdateSession_Click" align="center"  />
            <br />
            <asp:GridView runat="server" ID="allSession" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Select Current">
                        <ItemTemplate>
                            <asp:RadioButton ID="selectBtn" runat="server" onclick="javascript:CheckOtherIsCheckedByGVID(this);" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SessionID" />
                    <asp:BoundField DataField="SessionYear" HeaderText="Session Year" />
                    <asp:BoundField DataField="CurrentSession" HeaderText="Current Session" />
                </Columns>
            </asp:GridView>
        </div>
    </div>


    <script type="text/javascript">
        function CheckOtherIsCheckedByGVID(rb) {
            var isChecked = rb.checked;
            var row = rb.parentNode.parentNode;

            var currentRdbID = rb.id;
            parent = document.getElementById("<%= allSession.ClientID %>");
            var items = parent.getElementsByTagName('input');

            for (i = 0; i < items.length; i++) {
                if (items[i].id != currentRdbID && items[i].type == "radio") {
                    if (items[i].checked) {
                        items[i].checked = false;
                    }
                }
            }
        }
    </script>
</asp:Content>
