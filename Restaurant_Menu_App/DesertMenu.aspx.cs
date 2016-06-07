using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Menu_App
{
  public partial class DesertMenu : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      /*
      if (Session["OwnerID"] == null)
      {
        lblMessage.Visible = true;
        lblMessage.Text = "You must login to the website";
        //cmdSubmit.Enabled = false;
      }
      else
      {
        lblMessage.Visible = false;
        //cmdSubmit.Enabled = true;
      }
       */
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
      Response.Redirect("UserLogIn.aspx");
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
      Response.Redirect("SignUp.aspx");
    }
  }  
}