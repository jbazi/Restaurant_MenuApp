using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Menu_App.LogIn_LogOut_aspxPages
{
  public partial class UserLogIn : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
      lblWelcome.Visible = false;
      string welcome = "Welcome !";
      lblWelcome.Text = welcome;
      string storeOwner = @"SELECT [OwnerID],[Owner_First_Name], [Owner_Last_Name] from StoreOwner
                            WHERE [Username]=@Username AND [Password]=@Password";

      //string storeManager = @"SELECT [ManagerID],[Manager_First_Name], [Manager_Last_Name] from StoreManager
                            //WHERE [Username]=@Username AND [Password]=@Password";

      SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["RestaurantMenuApp"].ConnectionString);

      if (usrLoginRadioBtnList.SelectedValue == "storeOwner")
      {
        SqlCommand command = new SqlCommand(storeOwner);
        command.CommandType = CommandType.Text;
        command.Connection = sqlConn;
        sqlConn.Open();
        command.Parameters.AddWithValue("@Username", txtUserName.Text);
        command.Parameters.AddWithValue("@Password", txtPassword.Text);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(ds);
        sqlConn.Close();
        if (ds.Tables[0].Rows.Count == 0)
        {
          lblErrorLogin.Text = "Invalid username or password, please try again!";
        }
        else
        {
          if (usrLoginRadioBtnList.SelectedValue == "storeOwner")
          {
            Session["OwnerID"] = ds.Tables[0].Rows[0]["OwnerID"];
            Session["WelcomeMessage"] = string.Concat("Welcome ", ds.Tables[0].Rows[0]["Owner_First_Name"], ds.Tables[0].Rows[0]["Owner_Last_Name"],
            ". You are now logged in as the Owner of your store!");
            Response.Redirect("DesertMenu.aspx");
          }
        }
      }
      
    }
  }
}