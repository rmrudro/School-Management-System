using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EducationMgtSystem_Web.admin
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["Login_Name"] == null)
            {
                LblAuthenticatedUser.Text = " Welcome ! Admin" + " |";
                LogOut.Visible = true;

                //ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Session is timeout'); window.location='" + Request.ApplicationPath + "../Default.aspx';", true);
            }
            else
            {
                LblAuthenticatedUser.Text = " Welcome ! Admin" + (string)Session["Login_Name"] + " |";
                LogOut.Visible = true;

            }

        }
        protected void LogOut_Click(object sender, EventArgs e)
        {
            Session.Remove("Login_Name");
            Session.Remove("User_Id");
            Response.CacheControl = "no-cache";
            Response.Redirect("../Default.aspx");
        }
    }
}