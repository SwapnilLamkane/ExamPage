using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace ExamPrototype.Entities
{
    public class QueAnsVO 
    {
        public long QueID { get; set; }

        //This filed is used to display Que Sr. No. i.e. 1, 2, 3 etc on Exam
        public int QueNo { get; set; }

        public long? ChapterID { get; set; }
        public string ChapterName { get; set; }

        public string Que { get; set; }
        public string AnsA { get; set; }
        public string AnsB { get; set; }
        public string AnsC { get; set; }
        public string AnsD { get; set; }
        public ExamPrototype.Entities.Enums.RightAns RightAnsEnum { get; set; }
        public string RightAnsExplaination { get; set; }

        public ExamPrototype.Entities.Enums.StudentAnswerState StudentAnsState { get; set; }

}

   
}