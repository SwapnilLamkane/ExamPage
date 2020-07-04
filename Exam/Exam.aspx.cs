using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamPrototype.Entities;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.WebSockets;
using ExamPrototype.DAL;
using System.Text;

namespace ExamPrototype
{
    public partial class Exam : System.Web.UI.Page
    {
        
        static int currentposition = 0;
        static int totalrows = 0;
        const int questionCountForExam = 10;
        long examId = 3;
        int studentid = 12;
        
        int iscompleted = 1;
        protected void lbt_Click(object sender, EventArgs e)
        {
            pvo.Style.Add("visibility", "visible");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

          
            if (La.Text == "00:00:00")
            {              
                //This will call FinishExam
            }
            if (La.Text == "00:10:00")
            {
                //Show students to hurry up as after 10 minutes Exam will be submitted automatically
            }
            if (Session["CountdownTimer"] == null)
            {
                Session["CountdownTimer"] = new CountDownTimer(TimeSpan.Parse("0:01:59"));
                (Session["CountdownTimer"] as CountDownTimer).Start();
            }
            if (!Page.IsPostBack)
            {
                BindQuestionsAndAnswers();

                // ExamID will come from queryString
                // long examId = Request.QueryString["ExamID"];
               
                List<QueAnsVO> examQuestions = GetExamQuestions(examId);

            }

        }
        private void BindQuestionsAndAnswers()
        {
            List<QueAnsVO> queAnsVOList = GetExamQuestions(examId);

            PagedDataSource pg = new PagedDataSource();
            pg.DataSource = queAnsVOList;

            pg.AllowPaging = true;
            pg.CurrentPageIndex = currentposition;
            pg.PageSize = 1;

            PrevButton.Enabled = !pg.IsFirstPage;
            //Binding pg to datalist
            QuestionsAndAnswersDataList.DataSource = pg;//dl is datalist
            QuestionsAndAnswersDataList.DataBind();

            // This is to display buttons

           
            QueNoPanelDataList.DataSource = queAnsVOList;
            QueNoPanelDataList.DataBind();
          
            
          
        }
        

        List<QueAnsVO> GetExamQuestions(long examId)
        {
            //return MockQuestions.GetQuestions(questionCountForExam, examId);
            ExamDAL examDAL = new ExamDAL();
            List<QueAnsVO> queAnsVOList = examDAL.GetQuestionsForExam(examId);
            return queAnsVOList;
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

        protected void PrevButton_Click(object sender, EventArgs e)
        {
            if (currentposition == 0)
            {

            }
            else
            {
                currentposition = currentposition - 1;
                BindQuestionsAndAnswers();
            }

        }
        protected void NextButton_Click(object sender, EventArgs e)
        {
            if (currentposition == totalrows - 1)
            {

            }
            else
            {
                currentposition = currentposition + 1;
                BindQuestionsAndAnswers();
            }


        }
      
        void insert(string value, string qid)
        {
            Response.Write("Write");
            
        }
        protected void QuestionsAndAnswersDataList_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "rb")
            {
                string[] qno = new string[1];
                qno = e.CommandArgument.ToString().Split(',');
                string qid = qno[0].ToString();
                Session["QueNo"] = qid;
                RadioButton rb = (RadioButton)e.Item.FindControl("rd_CS");
                RadioButton rb1 = (RadioButton)e.Item.FindControl("rd_CS2");
                RadioButton rb2 = (RadioButton)e.Item.FindControl("rd_CS3");
                RadioButton rb3 = (RadioButton)e.Item.FindControl("rd_CS4");
                if (rb.Checked == true)
                {
                    insert(rb.Text, qid.ToString());
                }
                else if (rb1.Checked == true)
                {
                    insert(rb1.Text, qid.ToString());
                }
                else if (rb2.Checked == true)
                {
                    insert(rb2.Text, qid.ToString());
                }
                else if (rb3.Checked == true)
                {
                    insert(rb3.Text, qid.ToString());
                }
                //}

                foreach (DataListItem ite in QueNoPanelDataList.Items)
                {
                    //if (Session["QueNo"].ToString().Length > 0)
                    // {

                    Button b = (Button)ite.FindControl("clr");
                    if (b.Text == Session["QueNo"].ToString())
                    {
                        b.BackColor = System.Drawing.Color.LightGreen;
                        b.Text = Session["QueNo"].ToString();
                        // }
                    }
                }
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Session["CountdownTimer"] != null)
            {
                La.Text = (Session["CountdownTimer"] as CountDownTimer).TimeLeft.ToString();
            }
        }
        public class CountDownTimer
        {
            public TimeSpan TimeLeft;
            System.Threading.Thread thread;
            public CountDownTimer(TimeSpan original)
            {
                this.TimeLeft = original;
            }
            public void Start()
            {
                // Start a background thread to count down time
                thread = new System.Threading.Thread(() =>
                {
                    while (true)
                    {
                        System.Threading.Thread.Sleep(1000);
                        TimeLeft = TimeLeft.Subtract(TimeSpan.Parse("00:00:01"));
                    }
                });
                thread.Start();
            }
          

            
        }

       


        protected void EndExam_Click(object sender, EventArgs e)
        {
          //  ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "al()", true);
            
        }
    }

    
}