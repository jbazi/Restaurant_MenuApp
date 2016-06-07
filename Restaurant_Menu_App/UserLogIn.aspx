<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="UserLogIn.aspx.cs" Inherits="Restaurant_Menu_App.LogIn_LogOut_aspxPages.UserLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title></title>
  <script src="Scripts/jquery-2.2.3.js"></script>
  <script src="Scripts/RestMenuApp.js"></script>
  <link href="../StyleSheets/MainAppStyle.css" rel="stylesheet" />
  <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
  
</head>
<body>
  <form id="form1" runat="server">
    <div class="mainDiv">
      <div class="clear hideSkiplink">
      <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
        <Items>
          <asp:MenuItem Value="Home" Text="Home" />
          <asp:MenuItem Value="Menu" Text="Menu" >
            <asp:MenuItem Text="Salads" Value="Salads"></asp:MenuItem>
            <asp:MenuItem Text="Break Fast" Value="Break Fast"></asp:MenuItem>
            <asp:MenuItem Text="Lunch Special" Value="Lunch Special"></asp:MenuItem>
            <asp:MenuItem Text="Chef's Speciality" Value="Chef's Speciality"></asp:MenuItem>
            <asp:MenuItem Text="Desert" Value="Desert"></asp:MenuItem>
            <asp:MenuItem Text="Kids Menu" Value="Kids Menu"></asp:MenuItem>
          </asp:MenuItem>
          <asp:MenuItem Value="About Us" Text="About Us" />
          <asp:MenuItem Value="Contact Us" Text="Contact Us" />
        </Items>
      </asp:Menu>
    </div>
      <div class="jumbotron">
      <h1>Account Login</h1>
      <p class="lead">Please Login to your account</p>
    </div>
      <asp:Label ID="lblErrorLogin" runat="server" ForeColor="Red"></asp:Label>
      <asp:Label ID="lblWelcome" runat="server" Text="Label"></asp:Label>
      <table id="LoginTable">
        <caption>Log into your account.</caption>
        <tr>
          <td>
            Username or email address
            <asp:RequiredFieldValidator ID="Validator1" runat="server" ErrorMessage="*" ForeColor="#ff0000" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
          </td>
          <td>
            <asp:TextBox ID="txtUserName" runat="server" style="background-color:#ffd800;"></asp:TextBox>
          </td>
        </tr>

        <tr>
          <td>
            Password
            <asp:RequiredFieldValidator ID="Validator2" runat="server" ErrorMessage="*" ForeColor="#ff0000" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
          </td>
          <td>
            <asp:TextBox ID="txtPassword" runat="server" style="background-color:#ffd800;"></asp:TextBox>
          </td>
        </tr>
        <tr>
          <td>
            <asp:RadioButtonList ID="usrLoginRadioBtnList" runat="server">
              <asp:ListItem Text="Store Owner" Value="storeOwner"></asp:ListItem>
              <asp:ListItem Text="Store Manager" Value="storeManager"></asp:ListItem>
              <asp:ListItem Text="Store Employee" Value="storeEmployee"></asp:ListItem>
            </asp:RadioButtonList>
          </td>
        </tr>
        <tr>
          <td colspan="4">
            <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click"/>
            </td>
        </tr>
      </table>

    </div>
  </form>
</body>
</html>