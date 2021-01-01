<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="ExamPrototype.Exam" %>

<!DOCTYPE html>
<html>
<head runat="server">
	<title>Online Exam</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">	
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="ExamStyle.css"/>
<script src="ExamScript.js" type="text/javascript"></script>  
</head>
<body class="ng-scope" >
	<form id="form1" runat="server">
		<div class="header">
			<a href="#default" class="logo">Welcome {{Username}}</a>
				 <div class="header-right">
				   <a class="active" href="#home"><asp:Label ID="timelabel"   Text="Time Remaining:" runat="server"></asp:Label>
						<asp:Label ID="time"   runat="server"></asp:Label></a>
    						<div class="Nav_Button">
								<button data-trigger="#navbar_main" type="button">☰</button>
							</div>
				 </div>
		</div>

	    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<asp:UpdatePanel ID="pane" runat="server">
				<ContentTemplate>
				<div class="Main-Box">
					<div class="Question-Panel">
						
							<asp:DataList ID="QuestionsAndAnswersDataList" runat="server" OnItemCommand="QuestionsAndAnswersDataList_ItemCommand" >
								<ItemTemplate>
									<div class="scroll">
								<div class="ng-scope" >
									<div class="ng-scope toast-top-right" id="toast-container"></div>
										<div id="blur_overlay_test">
											<gid class="test-grid ng-scope" >
											    <div class="test-grid__left ng-binding ng-scope" style="visibility: visible;" >
													<div class="test_descrption">
														 <div class="fixed-header"  >
															<div class="question-type">
																<div class="question-info">
																	<div class="pull-left question-number ng-binding">
																		Question No:<asp:Label ID="Label2" runat="server" Text='<%#Eval("QueNo") %>'></asp:Label>
																	</div>
																	<div class="question_type pull-right ng-binding">
																		Single Choice Type Question
																	</div>
																</div>

															</div>
														</div>
								<div class="push-header"></div>
						        <div class="test-grid__section test-grid__section--question">
                                   <test-question class="ng-scope ng-isolate-scope" >
                                        <div class="test-question__container">
                                            <div class="test-question__body" >
                                                <p class="test-question__text ng-binding ng-scope" >
                                                   <b > <asp:Label ID="Label1" runat="server"  Text='<%# Eval("Que") %>' > </asp:Label > </b >
													</p><br></br>
														<a class="phoenix-question__choice single_choice ng-scope" >
															<a class="Options">
																<asp:RadioButton ID="rd_CS"  Width="600px" Height="20px" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsA") %>' />
															</a>
														</a><br></br><br></br>
															<a class="phoenix-question__choice single_choice ng-scope" >
																<a class="Options">
                                                        			<asp:RadioButton ID="rd_CS2"  Width="600px" Height="20px" style="border-radius:10px; "  GroupName="1" runat="server" Text='<%# Eval("AnsB") %>' />
																</a>
														</a><br></br><br></br>
															<a class="phoenix-question__choice single_choice ng-scope" >
																<a class="Options">
                                                        			<asp:RadioButton ID="rd_CS3"  Width="600px" Height="2" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsC") %>' />
																</a>
													</a><br></br></br></br>
                                                    <a class="phoenix-question__choice single_choice ng-scope" >
															<a class="Options">
                                                       			<asp:RadioButton ID="rd_CS4"  Width="600px" Height="20px" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsD") %>' />
															</a>
													</a><br></br><br></br>
                                                </ul>
                                            <div class="list-height ng-scope" ></div>
                                            </div>
                                        </div>
                                    </test-question>
                                </div>
                            </div>
                        </div>
					</gid>
              </div>
		 </div>
	</div>
			<div class="Selections">
				<div class="test-grid__actions">
							<asp:Button runat="server"  CssClass="Selection"  Text="Clear Selection" OnClick="Unnamed1_Click"></asp:Button>
                            <asp:Button runat="server"   CssClass="Selection" ID="btncolor1" CommandName="rb" CommandArgument='<%#Eval("QueNo") %>' Text="Save"></asp:Button>
							<asp:Button runat="server"   CssClass="Selection" CommandName="rb1" CommandArgument='<%#Eval("QueNo") %>' Text="Review Later"></asp:Button>
							<asp:Button runat="server"  ID="PrevButton" CssClass="Selection"  Text="Prev"  OnClick="PrevButton_Click" > </asp:Button >
							<asp:Button runat="server"  ID="NextButton" CssClass="Selection" Text="Next"   OnClick="NextButton_Click" > </asp:Button >
				</div>
			</div>
		</ItemTemplate >
		</asp:DataList >
						
									<asp:Label runat="server" ID="pname" Visible="false" ></asp:Label>
				
</div>
						<asp:Button runat="server"  ID="PrevButton" CssClass="Selection"  Text="Prev" Visible="false" > </asp:Button >
							<asp:Button runat="server"  ID="NextButton" CssClass="Selection" Text="Next"  Visible="false"  OnClick="NextButton_Click" > </asp:Button >
					
    					
<b class="screen-overlay"></b>
<div class="container">
<nav id="navbar_main" class="mobile-offcanvas navbar navbar-expand-lg navbar-dark bg-primary">
<ul class="navbar-nav">
    <asp:Panel runat="server" CssClass="Qpanel"  ID="pvo">
						<div  class="Question-Overview">
							
								<div class="offcanvas-header">  
							<a href="#" class="btn-close" style="float:right; overflow:hidden; font-size:50px; color:red; margin-right:20px;" onclick="closeSlideMenu()">&times;</a>
						</div>
							<br/>
							   <b style="margin-left:30px">Question Overview:</b><br/><br/><br/>
								
									<div style="overflow: scroll; height: 310px;" >
									<center>
										<div class="O_B">
											<asp:DataList runat="server" ID="QueNoPanelDataList" DataKeyField="QueNo" RepeatDirection="Horizontal" RepeatColumns="4"     >  <%-- DataSourceID="SqlDataSource1"--%>
												<ItemTemplate>
												  <b > <asp:Button runat="server" ID="clr" CommandName="cn"  CssClass="OButtons"  style="width:40px; height:35px; border-radius:35px; background-color:gainsboro" Text='<%#Eval("QueNo") %>'></asp:Button>
												</b>
												</ItemTemplate>
											</asp:DataList>
										</div>
										</center>
										</divc>
								</div>
					
									<div class="Bottom_Overview" >
									<center>
										<div class="row">
											
											<div class="column"  ><br/>
											
												<div class="Col1">
											<asp:Button runat="server" BackColor="LightGreen" class="instr1" Text=""></asp:Button><div style="">Attempted<br/><br/></div>
											<asp:Button runat="server" BackColor="BlueViolet"   class="instr1" Text=""></asp:Button><div style="">To be reviewed<br/><br/></div>
			     							 <asp:Button runat="server" BackColor="DarkBlue"  class="instr1" ></asp:Button><div style=""> Attempted & Marked for review<br/><br/></div>
											</div>
											</div>
									<div class="column" ><br/>
											<div class="Col1">
											<asp:Button runat="server" BackColor="Red" class="instr1" Text=""></asp:Button><div style="">Not Attempted<br/><br/></div>
											<asp:Button runat="server"  class="instr1" Text=""></asp:Button><div style="">Not viewed yet<br/><br/></div>
													 </div>
									</div>
											
										</div></center>
										<center>
									<div class="Bottom_Options">
											<asp:Button ID="instruction" runat="server" Height="30px" CssClass="options" Text="Instruction" ></asp:Button><br/><br/>
											<asp:Button ID="questions" runat="server" Height="30px" CssClass="options" Text="Questions" ></asp:Button><br/><br/>
											<asp:Button ID="EndExam" runat="server" Height="30px" CssClass="options" Text="Finish" OnClientClick="al();"></asp:Button><br/><br/><br/>
									</div>
											</center>
								</div>
		</asp:Panel>
</ul>
</div>
</div>
    </ContentTemplate>
        </asp:UpdatePanel>
			  
        </form>
    </body>

   </html> 
