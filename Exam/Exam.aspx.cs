using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamPrototype.Entities;

namespace ExamPrototype
{
    public partial class Exam : System.Web.UI.Page
    {
        // This is sample check in for demo.. can be removed it later..

        const int questionCountForExam = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                // ExamID will come from queryString
                // long examId = Request.QueryString["ExamID"];
                long examId = 1;

                List<QueAnsVO> examQuestions = GetExamQuestions(examId);

                // Bind above examQuestions to UI
            }

        }

        List<QueAnsVO> GetExamQuestions(long examId)
        {
           return MockQuestions.GetQuestions(questionCountForExam, examId);
        }


        void Save(ResultVO studentSolvedUnsolvedQuestion)
        {
            // [DB call] : This will save it to db.
        }

        void PeriodicSave(List<ResultVO> studentSolvedUnsolvedAllQuestions)
        {
            // [DB call] : This will save it to db.
        }

        protected void btnFinishExam_Click(object sender, EventArgs e)
        {
            // Calculate/Fill the ResultVO then call FinishExam method
        }

        private void FinishExam(List<ResultVO> studentSolvedUnsolvedAllQuestions)
        {
            // [DB call] : This will save it to db.
        }
    }
}