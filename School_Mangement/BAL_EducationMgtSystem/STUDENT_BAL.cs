using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using BEL_EducationMgtSystem;
using DAL_EducationMgtSystem;

namespace BAL_EducationMgtSystem
{
    public class STUDENT_BAL
    {
        public Int32 SaveStudentsDetails(STUDENT_BEL objBel)
        {
            STUDENT_DAL objDal = new STUDENT_DAL();
            try
            {
                return objDal.SaveStudentsDetails(objBel);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objDal = null;
            }
        }
        public DataSet GetStudentsRecords()
        {
            STUDENT_DAL objDal = new STUDENT_DAL();
            try
            {
                return objDal.GetStudentsRecords();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objDal = null;
            }
        }
    }
}
