using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BAL_EducationMgtSystem;
using BEL_EducationMgtSystem;

namespace EducationMgtSystem_Web
{
    public partial class ApplyOnline : System.Web.UI.Page
    {
        #region instantiate objects
        STUDENT_BEL objStudent_BEL = new STUDENT_BEL();
        STUDENT_BAL objStudent_BAL = new STUDENT_BAL();
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            objStudent_BEL.FIRST_NAME = Convert.ToString(txtFirstName.Text);
            try
            {
                Int32 resVal = objStudent_BAL.SaveStudentsDetails(objStudent_BEL);
                if (resVal == 1)
                {
                    lblStatus.Text = "Student details saved Successfully";
                    lblStatus.ForeColor = System.Drawing.Color.LawnGreen;
                    imgstatus.ImageUrl = "~/Resources/ico/tick.png";
                    imgstatus.Visible = true;
                }
                else
                {
                    lblStatus.Text = "Student details couldn't be saved";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                    imgstatus.ImageUrl = "~/Resources/ico/cross.png";
                    imgstatus.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Oops! error occured:" + ex.Message.ToString());
            }
            finally
            {
                objStudent_BEL = null;
                objStudent_BAL = null;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
    }
}