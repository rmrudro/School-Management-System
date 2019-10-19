using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using BAL_EducationMgtSystem;

namespace EducationMgtSystem_Web.admin
{
    public partial class StudentsList : System.Web.UI.Page
    {
        PagedDataSource pgsource = new PagedDataSource();
        int findex, lindex;

        #region instantiate objects
        STUDENT_BAL objStudent_BAL = new STUDENT_BAL();
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindStudentRecordsGridView();
            }
        }
        #region "Bind Student Records in GridView"
        private void BindStudentRecordsGridView()
        {
            DataSet ds = new DataSet();
            try
            {
                ds = objStudent_BAL.GetStudentsRecords();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    pgsource.DataSource = ds.Tables[0].DefaultView;
                    pgsource.AllowPaging = true;
                    pgsource.PageSize = 15;
                    pgsource.CurrentPageIndex = CurrentPage;
                    ViewState["totpage"] = pgsource.PageCount;
                    lblpage.Text = "Curent Page " + (CurrentPage + 1) + " of " + pgsource.PageCount;
                    lnkPrevious.Enabled = !pgsource.IsFirstPage;
                    lnkNext.Enabled = !pgsource.IsLastPage;
                    lnkFirst.Enabled = !pgsource.IsFirstPage;
                    lnkLast.Enabled = !pgsource.IsLastPage;
                    dgvEMS.DataSource = pgsource;
                    dgvEMS.DataBind();
                    doPaging();  
                }
                else
                {
                    dgvEMS.DataSource = null;
                    dgvEMS.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Oops! error occured:" + ex.Message.ToString());
            }
            finally
            {
                objStudent_BAL = null;
            }
        }
        #endregion

        #region "dgvEMS paging"

        private void doPaging()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("PageIndex");
            dt.Columns.Add("PageText");
            findex = CurrentPage - 5;
            if (CurrentPage > 5)
            {
                lindex = CurrentPage + 5;
            }
            else
            {
                lindex = 10;
            }
            if (lindex > Convert.ToInt32(ViewState["totpage"]))
            {
                lindex = Convert.ToInt32(ViewState["totpage"]);
                findex = lindex - 10;
            }

            if (findex < 0)
            {
                findex = 0;
            }
            for (int i = findex; i < lindex; i++)
            {
                DataRow dr = dt.NewRow();
                dr[0] = i;
                dr[1] = i + 1;
                dt.Rows.Add(dr);
            }
            DataListPaging.DataSource = dt;
            DataListPaging.DataBind();
        }

        private int CurrentPage
        {
            get
            {   
                if (ViewState["CurrentPage"] == null)
                {
                    return 0;
                }
                else
                {
                    return ((int)ViewState["CurrentPage"]);
                }
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }

        protected void DataListPaging_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.Equals("newpage"))
            {
                CurrentPage = Convert.ToInt32(e.CommandArgument.ToString());
                BindStudentRecordsGridView();
            }
        }

        protected void DataListPaging_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            LinkButton lnkPage = (LinkButton)e.Item.FindControl("Pagingbtn");
            if (lnkPage.CommandArgument.ToString() == CurrentPage.ToString())
            {
                lnkPage.Enabled = false;
            }
        }

        protected void lnkFirst_Click(object sender, EventArgs e)
        {
            CurrentPage = 0;
            BindStudentRecordsGridView();
        }

        protected void lnkLast_Click(object sender, EventArgs e)
        {
            CurrentPage = (Convert.ToInt32(ViewState["totpage"]) - 1);
            BindStudentRecordsGridView();
        }

        protected void lnkPrevious_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            BindStudentRecordsGridView();
        }

        protected void lnkNext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            BindStudentRecordsGridView();
        }

        #endregion

        protected void btnGo_Click(object sender, EventArgs e)
        {

        }
    }
}