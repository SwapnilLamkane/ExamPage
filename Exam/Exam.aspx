<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="ExamPrototype.Exam" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css.css"/>
    <script src="script.js" type="text/javascript"></script>
    <script>
        function myFunction() {
            var x = document.getElementById("myLinks");
            if (x.style.display === "block") {
                x.style.display = "none";
            }
            else {
                x.style.display = "block";
            }
        }
        function startTimer(duration, display) {
            var timer = duration, minutes, seconds;
            setInterval(function () {
                minutes = parseInt(timer / 60, 10)
                seconds = parseInt(timer % 60, 10);

                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                display.textContent = minutes + " " + " " + seconds;

                if (--timer < 0) {
                    timer = duration;
                    swal.fire({
                        position: 'center',

                        title: 'End Time',
                        showConfirmButton: false,
                        timer: 1000000
                    })
                    window.location.href = "a.aspx";
                }
                console.log(parseInt(seconds))
                window.localStorage.setItem("seconds", seconds)
                window.localStorage.setItem("minutes", minutes)
            }, 1000);
        }

        window.onload = function () {
            sec = parseInt(window.localStorage.getItem("seconds"))
            min = parseInt(window.localStorage.getItem("minutes"))
            if (parseInt(min * sec)) {
                var time = (parseInt(min * 60) + sec);
            }
            else {
                var time = 60 * 60;
            }
            display = document.querySelector('#time');
            startTimer(time, display);
        }

    </script>
  <style>
      .tim {
float:right;
width:170px;
height:30px;
margin-right:40px;
margin-top:-32px;


}
  </style>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
    <body>
        <form id="form1" runat="server">
           

      <asp:Label ID="demo" runat="server" Text=""></asp:Label>

             <div style="text-align:center">
                <b style="font-size:xx-large">Welcome To Online Test</b>
             </div>
            <div class="topnav">
                <a href="#home" class="active">Logo</a>
                 <div id="myLinks">
                    <asp:LinkButton runat="server"   ID="lbt" OnClick="lbt_Click" tabindex="1">Qstion Overview</asp:LinkButton>
                  </div>
                    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                    <i class="fa fa-bars" ></i>
                    </a>
            </div>


        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="pane" runat="server">
            <ContentTemplate>
        <div>
            <br /><br /><br /><br /><br />
                        <div class="tim">
                <asp:Label ID="timelabel"  Text="Time Remaining:" runat="server"></asp:Label>
                <asp:Label ID="time"   runat="server"></asp:Label>
                
                    </div>

                                <div class="qbox">
            <asp:DataList ID="QuestionsAndAnswersDataList" runat="server" OnItemCommand="QuestionsAndAnswersDataList_ItemCommand"  >
                <ItemTemplate>
                   <asp:Label ID="Label2" runat="server"  CssClass="qa"  Text='<%# Eval("QueNo") %>'></asp:Label>
                  <b>  <asp:Label ID="Label1" runat="server" CssClass="qa" Text='<%# Eval("Que") %>'></asp:Label></b>
                    <br /><br /><br />
                    <a ><asp:RadioButton ID="rd_CS"  CssClass="qa" Width="600px" Height="20px" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsA") %>' />
                        
                    <br /><br />
                    <asp:RadioButton ID="rd_CS2" CssClass="qa" GroupName="1" runat="server" Text='<%# Eval("AnsB") %>' />
                    <br /><br />
                    <asp:RadioButton ID="rd_CS3"  CssClass="qa" GroupName="1" runat="server" Text='<%# Eval("AnsC") %>' />
                    <br /><br />
                    <asp:RadioButton ID="rd_CS4" CssClass="qa" GroupName="1" runat="server" Text='<%# Eval("AnsD") %>' />
                        <br /><br />
                    <asp:Button runat="server" ID="btncolor1" CommandName="rb" CommandArgument='<%#Eval("QueNo") %>' CssClass="btn" OnClientClick="save();" Text="Save" ></asp:Button>
               <asp:Button runat="server" ID="reviewlater" CssClass="btn" Text="Review Later" ></asp:Button>
                        <asp:Button runat="server" ID="clearselection" CssClass="btn" Text="Clear Selection" ></asp:Button>
        
                        </ItemTemplate>
            </asp:DataList>
        <asp:Button runat="server" ID="PrevButton" CssClass="btn" Text="Prev" OnClick="PrevButton_Click"></asp:Button>
        <asp:Button runat="server" CssClass="btn" ID="NextButton" Text="Next" OnClick="NextButton_Click"></asp:Button>
        <br /><br />

            </div>
            
                
            <asp:Panel runat="server" ID="pvo">
                <div class="hiddendiv">
            <div class="overview">
               <b style="margin-left:30px">Question Overview:</b><br/><br/><br/>
                <asp:DataList runat="server" ID="QueNoPanelDataList" DataKeyField="QueNo" RepeatDirection="Horizontal" RepeatColumns="4"     >  <%-- DataSourceID="SqlDataSource1"--%>
                    <ItemTemplate>
                           <b> <asp:Button runat="server" ID="clr" CommandName="cn"   style=" border:none; width:40px; height:35px; border-radius:35px; margin-left:2vw; margin-right:1.5vw; margin-bottom:30px;" Text='<%#Eval("QueNo") %>'></asp:Button>
                        </b>
                    </ItemTemplate>
                </asp:DataList>
                <div class="instr">
                    <div class="left">
                        <asp:Button runat="server" BackColor="LightGreen" class="instr1" Text=""></asp:Button>Attempted<br/><br/>
                        <asp:Button runat="server" BackColor="BlueViolet"  class="instr1" Text=""></asp:Button>To be reviewed<br/><br/>
                        <asp:Button runat="server" BackColor="DarkBlue" class="instr1" ></asp:Button>Attempted & Marked for review<br/><br/>
                    </div>
                    <div class="right">
                        <asp:Button runat="server" BackColor="Red" class="instr1" Text=""></asp:Button>Not Attempted<br/><br/>
                        <asp:Button runat="server" class="instr1" Text=""></asp:Button>Not viewed yet<br/><br/>
                     </div>
                    </div>
                <div class="options">
                    <asp:Button ID="instruction" runat="server" Height="30px" CssClass="options" Text="Instruction" ></asp:Button><br/><br/>
                    <asp:Button ID="questions" runat="server" Height="30px" CssClass="options" Text="Questions" ></asp:Button><br/><br/>
                    <asp:Button ID="EndExam" runat="server" Height="30px" CssClass="options" Text="Finish" OnClientClick="al();"></asp:Button><br/><br/>
                </div>
            </b>
                    </div>
                  </asp:Panel>
        </div>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT [Qno] FROM [questions]"></asp:SqlDataSource>--%>
       </ContentTemplate>
        </asp:UpdatePanel>
        
                </form>
</body>
</html> 
