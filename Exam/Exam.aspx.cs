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
        Int64   examId = 3;
        char Answered = '1';
        int Result = 1;
        Int64 ExamId = 30;





        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (!Page.IsPostBack)
            {
                BindQuestionsAndAnswers();
                
                // ExamID will come from queryString
                // long examId = Request.QueryString["ExamID"];

                //List<QueAnsVO> examQuestions = GetExamQuestions(examId);

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
        
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ExamDB"].ConnectionString);
                cn.Open();
                SqlCommand cm = new SqlCommand("insert into ExamResult(ExamAttemptID,ExamQueID,StudentAns,Result,TimeTaken,DateSolved,StudentAnswerStatus)values(@ExamAttemptID,@ExamQueID,@StudentAns,@Result,@TimeTaken,@DateSolved,@StudentAnswerStatus)", cn);
                cm.Parameters.AddWithValue("@ExamAttemptID", ExamId);
                cm.Parameters.AddWithValue("@ExamQueID", Int64.Parse(qid));
                cm.Parameters.AddWithValue("@StudentAns", value.ToString());
                cm.Parameters.AddWithValue("@Result", Result);
                cm.Parameters.AddWithValue("@TimeTaken", time.Text);
                cm.Parameters.AddWithValue("@DateSolved", DateTime.Now);
                cm.Parameters.AddWithValue("@StudentAnswerStatus", Answered.ToString());
                cm.ExecuteNonQuery();
                return ;
        }
        string x = "1";
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
                else { }
                //}
                

                    foreach (DataListItem ite in QueNoPanelDataList.Items)
                    {
                    //if (Session["QueNo"].ToString().Length > 0)
                    // {
                    /*     string CS = ConfigurationManager.ConnectionStrings["ExamDB"].ConnectionString;
                         SqlConnection con = new SqlConnection(CS);
                         con.Open();
                         SqlCommand cmd = new SqlCommand("SELECT * FROM ExamResult", con);
                         SqlDataAdapter da = new SqlDataAdapter(cmd);
                         DataSet ds = new DataSet();
                         da.Fill(ds);

                         pname.Text = ds.Tables[0].Rows[0]["ExamQueID"].ToString();

                     */
                    pname.Text = Session["QueNo"].ToString();
                    Button b = (Button)ite.FindControl("clr");
                        if (b.Text == pname.Text)
                        {
                            b.BackColor = System.Drawing.Color.Red;
                            b.Text = "????";
                       
                        continue;

                         }
                    }
                
            }

            if (e.CommandName == "rb1")
            {
                string[] qno = new string[1];
                qno = e.CommandArgument.ToString().Split(',');
                string qid = qno[0].ToString();
                Session["QueNo"] = qid;
                foreach (DataListItem ite in QueNoPanelDataList.Items)
                {
                    //if (Session["QueNo"].ToString().Length > 0)
                    // {
                    /*     string CS = ConfigurationManager.ConnectionStrings["ExamDB"].ConnectionString;
                         SqlConnection con = new SqlConnection(CS);
                         con.Open();
                         SqlCommand cmd = new SqlCommand("SELECT * FROM ExamResult", con);
                         SqlDataAdapter da = new SqlDataAdapter(cmd);
                         DataSet ds = new DataSet();
                         da.Fill(ds);

                         pname.Text = ds.Tables[0].Rows[0]["ExamQueID"].ToString();

                     */
                    pname.Text = Session["QueNo"].ToString();
                    Button b = (Button)ite.FindControl("clr");
                    if (b.Text == pname.Text)
                    {
                        b.BackColor = System.Drawing.Color.Red;
                     }

                }

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            foreach (DataListItem ite in QuestionsAndAnswersDataList.Items)
            {
                RadioButton rb = (RadioButton)ite.FindControl("rd_CS");
                RadioButton rb1 = (RadioButton)ite.FindControl("rd_CS2");
                RadioButton rb2 = (RadioButton)ite.FindControl("rd_CS3");
                RadioButton rb3 = (RadioButton)ite.FindControl("rd_CS4");
                if (rb.Checked == true)
                {
                    rb.Checked = false;
                }
                if (rb1.Checked == true)
                {
                    rb1.Checked = false;
                }
                if (rb2.Checked == true)
                {
                    rb2.Checked = false;
                }
                if (rb3.Checked == true)
                {
                    rb3.Checked = false;
                }
            }
        }






    }
}

    
