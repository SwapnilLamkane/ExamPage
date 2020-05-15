using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamPrototype.Entities
{
    public class ResultVO
    {
        public long ResultID { get; set; }

        public string Que { get; set; }
        public long QueID { get; set; }

        //This filed is used to display Que Sr. No. i.e. 1, 2, 3 etc on Exam
        public long QueNo { get; set; }

        public Enums.RightAns? StudentAnsEnum { get; set; }        
        public Enums.RightAns RightAnsEnum { get; set; }
        public bool? IsRight { get; set; }       

        public string AnsA { get; set; }
        public string AnsB { get; set; }
        public string AnsC { get; set; }
        public string AnsD { get; set; }

        public string RightAnsExplaination { get; set; }

        public bool? IsCheckedA { get; set; }
        public bool? IsCheckedB { get; set; }
        public bool? IsCheckedC { get; set; }
        public bool? IsCheckedD { get; set; }

        public ExamPrototype.Entities.Enums.StudentAnswerState StudentAnsState { get; set; }

        public ResultVO()
        {
            IsCheckedA = false;
            IsCheckedB = false;
            IsCheckedC = false;
            IsCheckedD = false;
        }


    }
}