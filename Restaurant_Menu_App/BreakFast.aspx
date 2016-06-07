<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesertMenu.aspx.cs" Inherits="Restaurant_Menu_App.DesertMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Breakfast</title>
  <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link type="text/css" rel="stylesheet" href="../Bootstrap/css/bootstrap.css" />
  <!--<link type="text/css" rel="stylesheet" href="../StyleSheets/theme.css" />-->
  <link href="../StyleSheets/BreakFast.css" rel="stylesheet" />
  <style type="text/css">
    .auto-style1 {
      color: #999999;
    }
    .auto-style2 {
      color: #808080;
    }
  </style>
</head>
<body>
  <form id="form1" runat="server">

    <div class="page">
      <div class="header">
        <div class="title">
          <h2>A Restaurant Menu Application
          </h2>
        </div>
      </div>
    </div>
    <nav class="LogInLogOut">
        <!-- =====MENU==== -->
        <ul class="nav navbar-nav">
          <li>
            <asp:Button ID="btnSignIn" runat="server" class="btn btn-md" Text="Sign In" OnClick="btnSignIn_Click"  />
            <!--<a href="#">Login</a>-->
          </li>
          <li>
            <asp:Button ID="btnSignUp" runat="server" class="btn btn-sucess btn-md" Text="Sign Up" OnClick="btnSignUp_Click" />
            <!--<a href="#">Log Out</a>-->
          </li>
        </ul>
    </nav>
    <div class="clear hideSkiplink">
      <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
        <Items>
          <asp:MenuItem Value="Home" Text="Home" NavigateUrl="~/Home.aspx" />
          <asp:MenuItem Value="Menu" Text="Menu" >
            <asp:MenuItem Text="Salads" Value="Salads" NavigateUrl="~/Salad.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Break Fast" Value="Break Fast" NavigateUrl="~/BreakFast.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Lunch Special" Value="Lunch Special" NavigateUrl="~/LunchSpecial.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Chef's Speciality" Value="Chef's Speciality" NavigateUrl="~/Dinner.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Desert" Value="Desert" NavigateUrl="~/DesertMenu.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Kids Menu" Value="Kids Menu" NavigateUrl="~/Kids.aspx"></asp:MenuItem>
          </asp:MenuItem>
          <asp:MenuItem Value="About Us" Text="About Us" />
          <asp:MenuItem Value="Contact Us" Text="Contact Us" />
        </Items>
      </asp:Menu>
    </div>
    
    <div class="table-responsive">
      <table class="table">
        <thead class="thead-inverse">
          <tr>
            <th class="thead-inverse">Desert Item</th>
            <th></th>
            <th>Price</th>
          </tr>
        </thead>
        <tr class="alert-success">
          <td>French Toast & Omlette</td>
          <td id="cameraID1"><span class="glyphicon glyphicon-camera"></span></td>
          <td class="tablePrice">$9.99</td>
        </tr>
        <tr class="alert-warning">
          <td>Fruit Pancakes</td>
          <td id="cameraID2"><span class="glyphicon glyphicon-camera"></span></td>
          <td class="tablePrice">$12.99</td>
        </tr>
        <tr class="alert-danger">
          <td>Mixed Fruit Cereal</td>
          <td id="cameraID3"><span class="glyphicon glyphicon-camera"></span></td>
          <td class="tablePrice">$11.99</td>
        </tr>
        <tr class="alert-success">
          <td>Belgian Waffles</td>
          <td id="cameraID4"><span class="glyphicon glyphicon-camera"></span></td>
          <td class="tablePrice">$15.99</td>
        </tr>
      </table>

    </div>
  </form>
</body>
</html>