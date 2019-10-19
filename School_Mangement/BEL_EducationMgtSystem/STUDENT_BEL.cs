using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BEL_EducationMgtSystem
{
    public class STUDENT_BEL
    {
        private string _FIRST_NAME;

        public string FIRST_NAME
        {
            get { return _FIRST_NAME; }
            set { _FIRST_NAME = value; }
        }
        private string _MIDDLE_NAME;

        public string MIDDLE_NAME
        {
            get { return _MIDDLE_NAME; }
            set { _MIDDLE_NAME = value; }
        }
        private string _LAST_NAME;

        public string LAST_NAME
        {
            get { return _LAST_NAME; }
            set { _LAST_NAME = value; }
        }

    }
}
