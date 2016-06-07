<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Restaurant_Menu_App.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <link href="../StyleSheets/MainAppStyle.css" rel="stylesheet" />
  <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <div class="mainDiv">
      
      <label for="username"> Username: <asp:RequiredFieldValidator ID="validator1" runat="server" 
        ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      </label>
      
      <table id="signUpTable" style="color:#000; font-weight:bold;">
        <caption>Create your personal account</caption>
        <tr>
            <td>
                First Name: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="*" ControlToValidate="txtFirstName"  ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last Name: <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="*" ControlToValidate="txtLastName" ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td>
                Gender:  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="*" ControlToValidate="RadioButtonList1" ForeColor="Red" />
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                   
            </td>
        </tr>
        <tr>
            <td>
                Title:   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="*" ControlToValidate="RadioButtonList2" ForeColor="Red"/>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                    <asp:ListItem Selected="True">Owner</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                  <asp:ListItem>Employee</asp:ListItem>
                </asp:RadioButtonList>
              
            </td>
        </tr>
        
        
        <tr>
            <td>
                Email  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td>
                Salary:  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="*" ControlToValidate="txtSalary" ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Store:  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="*" ControlToValidate="txtStore" ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtStore" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td>Registration Date: 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
              ErrorMessage="*" ControlToValidate="txtDate" ForeColor="Red"/>
          </td>
          <td>
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            <asp:CompareValidator
              ID="dateValidator" runat="server"
              Type="Date"
              Operator="DataTypeCheck"
              ControlToValidate="txtDate"
              ErrorMessage="Enter as MM/DD/YYYY."
              ForeColor="Red" Font-Bold="true">
            </asp:CompareValidator>
          </td>
        </tr>
        <tr>
            <td>
                UserName  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                    ErrorMessage="*" ControlToValidate="txtUserName" ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                Password <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                    ErrorMessage="*" ControlToValidate="txtPassword" ForeColor="Red" />
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="createAccount" runat="server" Text="Create Account" style="background-color:green;" OnClick="createAccount_Click"/>
            </td>
        </tr>
    </table>

    </div>
  </form>
</body>
</html>
