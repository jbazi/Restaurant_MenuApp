using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Menu_App
{
  public partial class SignUp : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void createAccount_Click(object sender, EventArgs e)
    {
      /* Create variables*/
      string Owner_First_Name = txtFirstName.Text;
      string Owner_Last_Name = txtLastName.Text;
       string Gender = RadioButtonList1.SelectedValue;
       string Title = RadioButtonList2.SelectedValue;
       string Email = txtEmail.Text;
       double Salary = Convert.ToDouble(txtSalary.Text);
       string Owner_Store_Name = txtStore.Text;
       string Member_Since = txtDate.Text;
       DateTime dt = Convert.ToDateTime(Member_Since);
       string Username = txtUserName.Text;
       string Password = txtPassword.Text;

       string InsertIntoStoreMgr = @"INSERT INTO StoreOwner
       ([Owner_First_Name], [Owner_Last_Name],[Gender],[Title],[Email],[Salary],[Owner_Store_Name], [Member_Since], [Username], [Password])
        VALUES
        (@Owner_First_Name, @Owner_Last_Name, @Gender, @Title, @Email, @Salary, @Owner_Store_Name, @Member_Since, @Username, @Password)
        Select @@IDENTITY";


       SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["RestaurantMenuApp"].ConnectionString);
       
       if (Title == "Owner")
       {
         SqlCommand sqlCommand = new SqlCommand(InsertIntoStoreMgr);
         sqlCommand.CommandType = CommandType.Text;
         sqlCommand.Connection = sqlConn;
         sqlConn.Open();
         sqlCommand.Parameters.AddWithValue("@Owner_First_Name", Owner_First_Name);
         sqlCommand.Parameters.AddWithValue("@Owner_Last_Name", Owner_Last_Name);
         sqlCommand.Parameters.AddWithValue("@Gender", Gender);
         sqlCommand.Parameters.AddWithValue("@Title", Title);
         sqlCommand.Parameters.AddWithValue("@Email", Email);
         sqlCommand.Parameters.AddWithValue("@Salary", Salary);
         sqlCommand.Parameters.AddWithValue("@Owner_Store_Name", Owner_Store_Name);
         sqlCommand.Parameters.AddWithValue("@Member_Since", Member_Since);
         sqlCommand.Parameters.AddWithValue("@Username", Username);
         sqlCommand.Parameters.AddWithValue("@Password", Password);
         int OwnerID = Convert.ToInt32(sqlCommand.ExecuteScalar());
         sqlConn.Close();
         Session["OwnerID"] = OwnerID;
       }
       
    }
  }
}