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

namespace ExamPrototype.DAL
{
    public class ExamDAL
    {

        public List<QueAnsVO> GetQuestionsForExam(long examId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ExamDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand($"Select * from QuetionsAndAnswers inner join ExamsAndQuestionsMapper on QuetionsAndAnswers.QueID = ExamsAndQuestionsMapper.QueID where ExamID = {examId}");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            int queNo = 1;
            List<QueAnsVO> queAnsList = new List<QueAnsVO>();
            QueAnsVO queAnsVO;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                queAnsVO = new QueAnsVO();
                queAnsVO.QueID = Convert.ToInt64(dr["QueID"].ToString());
                queAnsVO.QueNo = queNo;
                queAnsVO.Que = dr["Que"].ToString();
                queAnsVO.AnsA = dr["AnsA"].ToString();
                queAnsVO.AnsB = dr["AnsB"].ToString();
                queAnsVO.AnsC = dr["AnsC"].ToString();
                queAnsVO.AnsD = dr["AnsD"].ToString();
                queAnsVO.RightAnsExplaination = dr["RightAnsExplaination"].ToString();
                string rightAns = dr["RightAns"].ToString();

                if (rightAns == Enums.RightAns.AnsA.ToString())
                    queAnsVO.RightAnsEnum = Enums.RightAns.AnsA;
                if (rightAns == Enums.RightAns.AnsB.ToString())
                    queAnsVO.RightAnsEnum = Enums.RightAns.AnsB;
                if (rightAns == Enums.RightAns.AnsC.ToString())
                    queAnsVO.RightAnsEnum = Enums.RightAns.AnsC;
                if (rightAns == Enums.RightAns.AnsD.ToString())
                    queAnsVO.RightAnsEnum = Enums.RightAns.AnsD;

                queAnsList.Add(queAnsVO);
                queNo++;
            }

            con.Close();
            return queAnsList;
        }
    }
}