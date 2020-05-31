<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="ExamPrototype.Exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
    function myFunction() {
  var x = document.getElementById("myLinks");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {  
    x.style.display = "block";
  }
}
</script>
    <style>
        .qbox {
            box-shadow:1px 1px 10px;
            width:70vw;
            float:left;
            height:auto;
        }
        .overview {
            float:left;
            box-shadow:1px 1px 10px;
            width:auto;
            margin-left:50px;
            
         }
        .numbers {
            margin-left:5vw;
        }
        .qa {
                margin-left:20px;
                word-break:break-all;
                max-width:200px;
    
                
        }
        .btn {
            margin-top:20px;
                margin-left:20px;
         }
        
        .topnav {
  overflow: hidden;
  position: relative;
  
}

.topnav #myLinks {
    
  display: none;
  background-color:red;
  background-color:red;
  
}

.topnav a {
  color: white;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  display: block;
  
}

        .topnav a.icon {
            background: black;
            display: block;
            position: absolute;
            right: 0;
            top: 0;
            visibility: hidden;
        
}
        @media (max-width:500px) {
            .topnav a.icon {
                visibility: visible;
            }

            #pvo {
         visibility:hidden;
       
            }
               
                
  
        }

        @media (max-width:1400px) {
            .qbox {
                margin-left:13vw;
            }
            .overview {
                margin-left:13vw;
                margin-top:30px;
                
            }
            
        }
  </style>
</head>
<body>
    <form id="form1" runat="server">
         <center>
            <b style="font-size:xx-large">Welcome To Online Test</b>
        </center>
   Git
    <div class="topnav">
  <a href="#home" class="active">Logo</a>
  <div id="myLinks">
  <asp:LinkButton runat="server"   ID="lbt" OnClick="lbt_Click" tabindex="1">Qstion Overview</asp:LinkButton>
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars" ></i>
  </a>
</div>



       <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="pane" runat="server">
            <ContentTemplate>
           <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"  >
            </asp:Timer>
                <div style="margin-left:3vw">
            <asp:Label ID="Label3" runat="server" Text="Time Left:"></asp:Label>
            <asp:Label ID="La" runat="server" Text=""></asp:Label>
                    </div>
       
        <div>
            <br /><br /><br /><br /><br />
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
                    <asp:Button runat="server" ID="btncolor1" CommandName="rb" CommandArgument='<%#Eval("QueNo") %>' CssClass="btn" Text="Save & Continue" ></asp:Button>
                </ItemTemplate>
            </asp:DataList>
        <asp:Button runat="server" ID="PrevButton" CssClass="btn" Text="Prev" OnClick="PrevButton_Click"></asp:Button>
        <asp:Button runat="server" CssClass="btn" ID="NextButton" Text="Next" OnClick="NextButton_Click"></asp:Button>
        <br /><br />

            </div>
            

            <asp:Panel runat="server" ID="pvo">
                <div class="hiddendiv">
            <div class="overview">
                Question Overview:<br/><br/><br/>
                <asp:DataList runat="server" ID="QueNoPanelDataList" DataKeyField="QueNo" RepeatDirection="Horizontal" RepeatColumns="4"     >  <%-- DataSourceID="SqlDataSource1"--%>
                    <ItemTemplate>

                       <b> <asp:Button runat="server" ID="clr" CommandName="cn"   style="width:40px; height:35px; border-radius:30px; margin-left:2vw; margin-right:1.5vw; margin-bottom:30px;" Text='<%#Eval("QueNo") %>'></asp:Button>
                        </b>

                    </ItemTemplate>
                </asp:DataList>
            </div>
                    </div>
                </asp:Panel>
        </div>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT [Qno] FROM [questions]"></asp:SqlDataSource>--%>
       </ContentTemplate>
        </asp:UpdatePanel>
        
                </form>
</body>
</html> 
