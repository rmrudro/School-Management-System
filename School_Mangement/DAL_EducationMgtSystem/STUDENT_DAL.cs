using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using BEL_EducationMgtSystem;

namespace DAL_EducationMgtSystem
{
    public class STUDENT_DAL
    {
        public Int32 SaveStudentsDetails(STUDENT_BEL objBEL)
        {
            SqlDataReader dr = null;
            dbConnector objConn = new dbConnector();
            SqlConnection Conn = objConn.GetConnection;
            Conn.Open();

            SqlCommand cmd = new SqlCommand("ENTER_STUDENT_SP", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FIRST_NAME", objBEL.FIRST_NAME);
            cmd.Parameters.AddWithValue("@MIDDLE_NAME", objBEL.MIDDLE_NAME);
            cmd.Parameters.AddWithValue("@LAST_NAME", objBEL.LAST_NAME);

            cmd.Parameters.AddWithValue("@DATE_OF_ADMISSION", DateTime.Now);
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr[0].ToString() == "1")
                    {
                        return 1;
                    }
                    else
                    {
                        return 0;
                    }
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }

            finally
            {
                if (Conn != null)
                    if (Conn.State == ConnectionState.Open)
                    {
                        dr.Close();
                        cmd.Dispose();
                        Conn.Close();
                        Conn.Dispose();
                    }
            }
        }
        public DataSet GetStudentsRecords()
        {
            dbConnector objConn = new dbConnector();
            SqlConnection Conn = objConn.GetConnection;
            DataSet ds = new DataSet();
            try
            {
                SqlCommand cmd = new SqlCommand("GET_STUDENT_SP", Conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                cmd.Dispose();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ds.Dispose();
            }
            return ds;
        }
    }
}
