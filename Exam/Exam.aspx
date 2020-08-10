<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="ExamPrototype.Exam" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">	
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css.css"/>
<script src="script.js" type="text/javascript"></script>



<script type="text/javascript">
    $(document).ready(function () {
        $("[data-trigger]").on("click", function (e) {
            e.preventDefault();
            e.stopPropagation();
            var offcanvas_id = $(this).attr('data-trigger');
            $(offcanvas_id).toggleClass("show");
            $('body').toggleClass("offcanvas-active");
            $(".screen-overlay").toggleClass("show");
		});
		$(document).on('keydown', function (event) {
            if (event.keyCode === 27) {
                $(".mobile-offcanvas").removeClass("show");
                $("body").removeClass("overlay-active");
            }
        });

        $(".btn-close, .screen-overlay").click(function (e) {
            $(".screen-overlay").removeClass("show");
            $(".mobile-offcanvas").removeClass("show");
            $("body").removeClass("offcanvas-active");
        });
    }); 
</script>
     <style>
body.offcanvas-active{
	overflow:hidden;
}
.offcanvas-header{ display:none; }
.screen-overlay {
  width:0%;
  height: 100%;
  z-index: 30;
  position: fixed;
  top: 0;
  left: 0;
  opacity:0;
  visibility:hidden;
  background-color: rgba(34, 34, 34, 0.6);
  transition:opacity .2s linear, visibility .1s, width 1s ease-in;
   }
.screen-overlay.show {
    transition:opacity .5s ease, width 0s;
    opacity:1;
    width:100%;
    visibility:visible;
}
	
@media all and (max-width:992px){ 
	
	.offcanvas-header{ display:block; }

	.mobile-offcanvas{
		visibility: hidden;
		transform:translateX(-100%);
	    border-radius:0; 
		display:block;
	    position: fixed;
	    top: 0; left:0;
	    height: 100%;
	    z-index: 1200;
	    width:80%;
	    overflow-y: scroll;
	    overflow-x: hidden;
	    transition: visibility .2s ease-in-out, transform .2s ease-in-out;
	}

	.mobile-offcanvas.show{
		visibility: visible;
    	transform: translateX(0);
	}
}
         
body {
	margin: 0;
	
}
body {
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	font-size: 14px;
	line-height: 1.4285;
	color: #333;
	background-color: #fff;
}
body {
	margin: 0;
}
body {
	position: relative;
	min-height: 100%;
	min-width: 1024px;
	font-family: "Helvetica Neue",helvetica,arial,sans serif;
	color: #4d4d4d;
	font-size: 14px;
	font-weight: normal;
	background-color: #fff;
	line-height: normal;
}
body {
	overflow-x: hidden;
}
body {
	overflow-x: hidden;
}
body {
	overflow-x: hidden;
}
body {
	font-family: helvetica,arial,sans serif !important;
	background: #fff !important;
}
body {
	width: 100% !important;
	min-width: 100%;
	overflow-x: hidden !important;
}
html {
	font-family: sans-serif;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}
html {
	font-size: 10px;
	-webkit-tap-highlight-color: transparent;
}
html {
	font-family: sans-serif;
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
}
html {
	height: 100%;
}

.test-grid__right question-map {
	position: fixed;
	background-color: #eee;
	right: -250px;
	height: 100%;
	top: 40px;
	width: 250px;
	margin-top: 0px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}


.test-grid__action {
	border-radius: 2px !important;
	margin: 8px;
	text-align: center;
	width: 181px;
	font-weight: 300;
	background-color: transparent;
	border: 2px solid rgba(37,181,233,0.74);
	border-radius: 2px;
	display: inline-block;
	padding: 10px;
	color: #747474;
	cursor: pointer;
	font-size: 16px;
	-webkit-transition: background-color 0.2s ease;
	-moz-transition: background-color 0.2s ease;
	transition: background-color 0.2s ease;
}
.test-grid__action {
	width: auto;
	padding: 5px;
	font-size: 13px;
}

.test-grid button {
	outline: none;
}
.test-grid button {
	height: 44px;
	border: 1px solid rgba(37,181,233,0.74);
}
test-question {
	display: block;
}
.test-grid test-question {
	position: relative;
	top: 20px;
}
.test-grid test-question {
	width: 100%;
	margin-top: 0px;
	padding-right: 10px;
	padding-left: 10px;
}
.blur_test_popup_overlay {
	height: 100%;
	width: 100%;
	top: 0px;
	left: 0px;
	z-index: 100000;
	position: fixed;
	background-color: rgba(0, 0, 0, 0.6);
}
.session_popup_container {
	position: absolute;
	z-index: 100000;
	top: 50%;
	left: 50%;
	transform: translate3d(-50%, -50%, 0px);
	-webkit-transform: translate3d(-50%, -50%, 0px);
	-moz-transform: translate3d(-50%, -50%, 0);
	-ms-transform: translate3d(-50%, -50%, 0);
	-o-transform: translate3d(-50%, -50%, 0);
	max-width: 550px;
	width: 90%;
	border-radius: 6px;
	background-color: white;
	padding: 20px;
}
.session_popup_container .header {
	padding: 10px;
	width: 100%;
	border-radius: 6px 6px 0 0;
	position: relative;
	height: 60px;
}
.session_popup_container .footer {
	width: 100%;
	text-transform: uppercase;
	font-family: "Roboto";
	font-size: 18px;
	padding-top: 15px;
}
img {
	border: 0;
}
img {
	vertical-align: middle;
}
img {
	border: 0;
}
.confirm_popup_container {
	position: absolute;
	z-index: 100000;
	top: 50%;
	left: 50%;
	transform: translate3d(-50%, -50%, 0px);
	-webkit-transform: translate3d(-50%, -50%, 0px);
	-moz-transform: translate3d(-50%, -50%, 0);
	-ms-transform: translate3d(-50%, -50%, 0);
	-o-transform: translate3d(-50%, -50%, 0);
	max-width: 428px;
	width: 90%;
	border-radius: 6px;
	background-color: white;
}
.new-alert-message {
	padding: 20px;
}
.new-alert-message .header {
	margin: 0px 0px 10px 0px;
	text-align: center;
	color: #8f8f8f;
	font-size: 16px;
	letter-spacing: 2px;
}
.new-alert-message .footer {
	margin-top: 10px;
}
.row {
	margin-right: -15px;
	margin-left: -15px;
}
.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}
.new-alert-message .col-md-6 {
	margin: 20px 0px;
	text-align: center;
}
.test-grid__nav-newbtn.submit {
	border: 0px;
	background-color: #4eba6f;
	color: #fff;
}
.new-alert-message .footer .test-grid__nav-newbtn.submit {
	padding: 10px 30px;
	border-radius: 15px;
	border: 0px;
	background-color: #4eba6f;
	color: #fff;
}
.new-alert-message .footer .test-grid__nav-newbtn.resume {
	padding: 10px 30px;
	border-radius: 15px;
	border: 0px;
	background-color: #51b7e8;
	color: #fff;
}
.new-alert-message .col-md-12 {
	margin: 10px 0px;
	text-align: center;
}
.new-alert-message .footer .warning {
	color: #bbbbbb;
}
.icon-legend {
	font-weight: bold;
	width: 35px;
	height: 35px;
	position: relative;
	padding: 7px;
	font-size: 18px;
}
.new-alert-message .header .time {
	color: #2db8eb;
	font-size: 24px;
	padding-top: 10px;
}
.test-grid__left {
	float: left;
	width: 100%;
	height: 100%;
	margin-top: 45px;
}
.test-grid__right {
	position: fixed;
	right: 0px;
	width: 350px;
	float: right;
	height: 100%;
	top: 44px;
	background: #f5f5f5;
	z-index: 50;
}
.test-grid__right {
	position: absolute;
	background: transparent;
	height: 0px;
}
question-map {
	display: block;
}
.test-grid question-map {
	padding-left: 15px !important;
	padding-right: 12px !important;
}
.test-grid question-map {
	padding: 10px;
	height: 80%;
	height: calc(-182px + 100%);
	margin-top: 10px;
}
.test-grid__nav {
	bottom: 50px;
	width: 100%;
	padding: 5px;
	clear: both;
}
.test-grid__nav {
	text-align: center;
}
.test-grid__right .test-grid__nav-btn {
	border: 1px solid #ccc;
	padding: 8px;
	margin: 4px 3px 0 3px;
	border-radius: 2px;
	width: auto;
	font-size: 12px;
	position: fixed;
	height: auto;
	top: calc(-75px + 100%);
}
.test-grid__right :first-child.test-grid__nav-btn {
	display: none;
}
.test-grid__right :nth-child(2).test-grid__nav-btn {
	margin-left: -16%;
	background-color: transparent;
	color: #139dce;
	border: 2px solid #9adcf4;
	outline: none;
	border-radius: 40px;
	padding: 6px 16px;
	font-size: 14px;
	top: 100%;
	margin-top: -40px;
}
.test-grid__right :nth-child(3).test-grid__nav-btn {
	display: inline-block;
	position: fixed;
	width: 20%;
	right: 60px;
	height: 24px;
	top: 7px;
	z-index: 3;
	border: none;
	border-bottom: 1px solid #29b8eb;
	border-radius: 40px;
	margin: 0;
	background-color: #29b8eb;
	color: white;
	font-size: 14px;
	padding: 3px 10px;
	text-transform: uppercase;
}
.test-grid__right :nth-child(4).test-grid__nav-btn {
	display: inline-block;
	position: fixed;
	width: 20%;
	right: 60px;
	height: 24px;
	top: 7px;
	z-index: 3;
	border: none;
	border-bottom: 1px solid #29b8eb;
	border-radius: 40px;
	margin: 0;
	background-color: #29b8eb;
	color: white;
	font-size: 14px;
	padding: 3px 10px;
	text-transform: uppercase;
}
question-map > span {
	font-size: 18px;
	font-weight: 300;
	margin-left: 10px;
}
.question-map__legend span {
	position: relative;
	float: left;
	font-size: 16px;
	font-weight: 300;
}
.test-grid__right question-map span {
	display: none;
}
.question-map__attempts {
	width: 100%;
	padding: 4px;
	text-align: center;
	margin: 12px 2px 12px -10px;
	overflow: auto;
}
question-map .question-map__attempts {
	height: 70% !important;
	height: calc(-200px + 100%) !important;
}
.test-grid question-map .question-map__attempts {
	height: 60%;
}
ol, ul {
	margin-top: 0px;
	margin-bottom: 10px;
}
.question-map__legend {
	height: 75px;
	margin: 0;
	padding: 0;
	list-style: none;
	font-size: 13px;
	width: 310px;
}
.question-map__legend {
	width: 335px;
}
div.question-map__legend {
	position: absolute;
	background: #f5f5f5;
}
.test-grid__right question-map div.question-map__legend {
	position: absolute;
	top: 95%;
	margin-top: -165px;
	background: #eee;
	width: 100%;
}
.test-grid__right question-map ul.question-map__legend {
	width: 100%;
	margin: 0;
	padding: 0;
	height: auto;
	list-style: none;
}
.question-map__legend li {
	width: 50%;
	white-space: nowrap;
	line-height: 39px;
	float: left;
}
.test-grid__right question-map ul.question-map__legend li {
	width: 45%;
	white-space: nowrap;
	display: inline-block;
	margin-bottom: 10px;
}
.question-map__review-answered_legend {
	position: relative;
	background-color: #565fb8;
	border-radius: 50%;
	color: #ffffff;
}
.test-grid__right question-map div.question-map__legend .question-map__attempt-icon {
	height: 20px !important;
	width: 20px !important;
}
.test-grid__right question-map ul.question-map__legend li .question-map__attempt-icon {
	height: 25px;
	width: 25px;
	display: inline-block;
	border: 1px solid rgba(0,0,0,0.2);
}
.test-grid__right question-map ul.question-map__legend li span {
	top: 7px;
	font-size: 12px;
	display: inline-block;
	position: relative;
	line-height: 1;
	vertical-align: middle;
}
i {
	display: inline-block;
	width: 16px;
	height: 16px;
	background-size: cover;
}
.fa {
	display: inline-block;
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
.fa-2x {
	font-size: 2em;
}
.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
}
.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
.fa-2x {
	font-size: 2em;
}
.question-map__review-answered_legend i {
	position: absolute;
	top: 20px;
	right: -5px;
	background-color: #86d37c;
	border-radius: 50%;
	font-size: 14px;
	border: 2px solid #fff;
	width: 20px;
	height: 20px;
	padding: 2px;
}
.test-grid__right question-map ul.question-map__legend li .question-map__review-answered_legend i {
	position: relative;
	top: -5px;
	right: 6px;
}
.test_descrption {
	margin-right: 350px;
	position: relative;
}
.test_descrption {
	margin-right: 0px;
}
grid.test-grid .test_descrption {
	position: relative;
	height: 100%;
	margin-bottom: 122px;
	overflow-y: auto;
	overflow-x: scroll;
}
.fixed-header {
	position: fixed;
	left: 50%;
	transform: translate(-50%, 0px);
	-webkit-transform: translate(-50%, 0px);
	-moz-transform: translate(-50%, 0);
	-o-transform: translate(-50%, 0);
	-ms-transform: translate(-50%, 0);
	width: 100%;
	background-color: #fff;
	min-height: 130px;
	z-index: 50;
}
.fixed-header {
	position: static;
	-webkit-transform: inherit;
	-moz-transform: inherit;
	-ms-transform: inherit;
	-o-transform: inherit;
	transform: inherit;
	min-height: 0px;
}
.push-header {
	height: 150px;
}
.push-header {
	display: none;
}
.test-grid__instructions, .test-grid__paper-container {
	width: 100% !important;
	height: 88% !important;
	height: calc(-55px + 100%) !important;
	margin-bottom: 10px;
	overflow: auto;
}
.h1, .h2, .h3, h1, h2, h3 {
	margin-top: 20px;
	margin-bottom: 10px;
}
grid.test-grid .test-grid__left .test-grid__section h4.text-center {
	font-size: 14px;
	font-weight: bold;
}
a {
	background-color: transparent;
}
a {
	color: #337ab7;
	text-decoration: none;
}
b, strong {
	font-weight: 700;
}
b, strong {
	font-weight: bold;
}
.test-grid__actions {
	padding: 8px 0;
	margin-top:8vw;
}
.test-grid .test-grid__actions {
	float:left;
	
	position: fixed;
	bottom: 0px;
	left: 2px;
	right: 0px;
	transform: translate(-12%);
	-webkit-transform: translate(-12%);
	-moz-transform: translate(-12%);
	-ms-transform: translate(-12%);
	-o-transform: translate(-12%);
	width: 100%;
	box-shadow: 0px 0px 3px #ddd;
	background: #fff;
	
}
.test-grid .test-grid__actions {
	transform: inherit;
	-webkit-transform: inherit;
	-ms-transform: inherit;
	-o-transform: inherit;
	-moz-transform: inherit;

	
}
.test-grid .test-grid__actions {
	position: fixed;
}
.test-grid__paper-section {
	color: #25b5e9;
}
.test-grid__paper-question {
	padding-bottom: 10px;
	border-bottom: 1px solid #ddd;
}
:last-child.test-grid__paper-question {
	margin-bottom: 31px;
}
.test-grid__section--paper .test-grid__paper-question {
	overflow-x: auto;
}
p {
	margin: 0 0 10px;
}
.test-grid__paper-seq, .test-grid__paper-text {
	display: inline-block;
	vertical-align: middle;
}
.test-grid__paper-text {
	width: 90%;
	width: calc(-50px + 100%);
	padding-left: 10px;
}
.test-grid__paer-qtype {
	padding-left: 40px;
}
.phoenix-question__choices {
	margin: 0;
	padding-bottom: 14px;
	list-style: none;
	font-size: 18px;
	padding-left: 0px;
}
.phoenix-question__choice {
	padding: 10px 13px;
	cursor: pointer;
	margin-bottom: 10px;
	font-size: 16px;
	color: #7a7a7a;
	-webkit-transition: 0.2s all linear;
	-moz-transition: 0.2s all linear;
	transition: 0.2s all linear;
}
.phoenix-question__choice {
	font-size: 14px;
}
.phoenix-question__choice-icon {
	display: inline-block;
	width: 28px;
	height: 28px;
	margin-right: 15px;
	border-radius: 50%;
	text-align: center;
	color: #7a7a7a;
	line-height: 26px;
	background-color: #fff;
	border: 2px solid #b9b9b9;
	font-size: 18px;
}
.phoenix-question__choice-icon {
	width: 24px;
	height: 24px;
	font-size: 14px;
	line-height: 20px;
}
sub, sup {
	position: relative;
	font-size: 75%;
	line-height: 0;
	vertical-align: baseline;
}
sup {
	top: -0.5em;
}
sub {
	bottom: -0.25em;
}
sub, sup {
	font-size: 75%;
	line-height: 0;
	position: relative;
	vertical-align: baseline;
}
sup {
	top: -0.5em;
}
sup {
	font-size: 75%;
}
.MathJax_Preview {
	color: #888;
}
.MathJax {
	display: inline;
	font-style: normal;
	font-weight: normal;
	line-height: normal;
	font-size: 100%;
	font-size-adjust: none;
	text-indent: 0px;
	text-align: left;
	text-transform: none;
	letter-spacing: normal;
	word-spacing: normal;
	word-wrap: normal;
	white-space: nowrap;
	float: none;
	direction: ltr;
	max-width: none;
	max-height: none;
	min-width: 0px;
	min-height: 0px;
	border: 0;
	padding: 0;
	margin: 0;
}
.MJX_Assistive_MathML {
	position: absolute !important;
	top: 0px;
	left: 0px;
	clip: rect(1px, 1px, 1px, 1px);
	padding: 1px 0 0 0 !important;
	border: 0 !important;
	height: 1px !important;
	width: 1px !important;
	overflow: hidden !important;
	display: block !important;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.MathJax * {
	transition: none;
	-webkit-transition: none;
	-moz-transition: none;
	-ms-transition: none;
	-o-transition: none;
}
.MathJax img, .MathJax nobr, .MathJax a {
	border: 0;
	padding: 0;
	margin: 0;
	max-width: none;
	max-height: none;
	min-width: 0px;
	min-height: 0px;
	vertical-align: 0px;
	line-height: normal;
	text-decoration: none;
}
.MathJax nobr {
	white-space: nowrap !important;
}
.MathJax span {
	display: inline;
	position: static;
	border: 0;
	padding: 0;
	margin: 0;
	vertical-align: 0px;
	line-height: normal;
	text-decoration: none;
}
sub {
	bottom: -0.25em;
}
test-instructions {
	display: block;
	margin-top: 80px;
}
.test_descrption test-instructions {
	margin-top: 0px;
}
.instructions_list {
	margin: 30px auto;
	width: 70%;
	display: block;
	background: #fff;
	border-radius: 2px;
	box-shadow: 0px 0px 8px #ddd;
	padding-bottom: 10px;
}
.instructions_list {
	width: 95%;
	border-radius: 6px;
	border: 1px solid #ddd;
}
.instruction_header {
	color: #66696d;
	background: #f3f3f3;
	border-top-right-radius: 6px;
	border-top-left-radius: 6px;
	display: block;
	padding: 20px;
	height: 78px;
	line-height: 25px;
}
.instructions__step {
	padding: 20px 20px 10px;
}
.instructions__step {
	padding: 0;
}
.instructions__step ol {
	margin-top: 14px;
}
test-instructions li {
	padding: 5px 0;
}
.rankup_instruction {
	color: red;
}
.instruction_header img {
	height: 40px;
	width: 40px;
	float: left;
	display: block;
	margin: 0 10px;
}
test-instructions p {
	margin: 0;
	font-weight: 300;
	font-size: 18px;
}
.instruction_header p {
	font-size: 17px;
	float: left;
	padding: 7px 11px;
}
.instruction_header p {
	padding: initial;
}
dl {
	margin-top: 0px;
	margin-bottom: 20px;
}
.test-grid dl.test-grid__profile {
	display: block;
	margin: 0 auto 20px auto;
	height: 120px;
	width: 400px;
	text-align: left;
	border: 1px solid #eee;
	padding: 10px;
}
dd, dt {
	line-height: 1.4285;
}
dt {
	font-weight: 700;
}
dt {
	float: left;
	clear: left;
}
dd {
	margin-left: 0px;
}
dd, dt {
	line-height: 45px;
}
.test-grid dl.test-grid__profile dt {
	font-weight: bold;
	position: relative;
	width: 205px;
	font-weight: 100;
}
.test-grid dl.test-grid__profile dd {
	margin-left: 5px;
	text-align: left;
}
.test-grid dl.test-grid__profile dd, .test-grid dl.test-grid__profile dt {
	line-height: 20px;
	float: left;
}
.test-grid__action.test-grid__action--save {
	color: white;
	border-color: #25b5e9;
	background: #25b5e9;
	opacity: 0.9;
}
.test-grid__actions .test-grid__action--save {
	width: 30%;
	float: right;
	margin: 8px 0;
}
.test-grid__actions :nth-child(2).test-grid__action {
	width: 30%;
	float: left;
	margin: 8px 0;
}
.test-grid__actions :nth-child(3).test-grid__action {
	width: 30%;
	margin: 8px 0;
}
.test-question__container {
	background-color: #fff;
	font-size: 18px;
	font-weight: 300;
}
.test-question__container {
	line-height: 22px;
}
.test-question__text {
	padding: 5px;
}
.test-question__body p {
	text-align: left;
}
.test-question__body p {
	font-size: 14px;
}
.test-question__text.ng-binding {
	font-size: 15px;
}
.test-question__body > p:first-child {
	height: auto;
	min-height: 40px;
}
hr {
	height: 0px;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
}
hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #eee;
}
hr {
	-moz-box-sizing: content-box;
	box-sizing: content-box;
	height: 0px;
}
hr {
	border-top-color: #a3a3a3;
}
.list-height {
	height: 40px;
}
.list-height {
	height: 0px;
}
test-question img {
	max-height: 200px;
}
test-question img {
	width: 200px;
	height: auto;
}
.test-question__body .test-question__text .MathJax .math {
	display: -webkit-inline-box !important;
}
.phoenix-question__choice.phoenix-question__choice--selected {
	background-color: rgba(154, 220, 244, 0.4);
}
.phoenix-question__choice.phoenix-question__choice--selected .phoenix-question__choice-icon {
	border: 2px solid #66696d;
}
test-sections {
	display: block;
}
.test-grid test-sections {
	padding: 10px 5px;
	margin: 5px;
	text-align: center;
}
.test-grid test-sections {
	margin-right: 350px;
}
.test-grid test-sections {
	margin-right: auto;
	padding: 0px 5px;
	margin-top: 0px;
}
.question-type {
	height: 35px;
	margin-right: 350px;
	padding: 5px 0px;
}
.question-type {
	margin-right: auto;
	padding-left: 5px;
	padding-right: 5px;
	height: 0px;
}
.question-info {
	width: 95%;
	margin: 0 auto;
	font-size: 18px;
	font-weight: 300;
	display: block;
	height: 30px;
	border-bottom: 1px solid #25b5e9;
}
.question-info {
	font-weight: bold;
}
.question-info {
	width:71vw;
	margin-left:0vw;
	background-color: #fff;
	height: 20px;
	overflow:hidden;
}
        
.pull-left {
	float: left !important;
}
.pull-left {
	float: left;
}
.pull-left {
	float: left;
}
.question-number {
	font-size: 18px;
}
.pull-left {
	float: left;
}
.pull-left {
	float: left;
}
.question-number {
	font-size: 12px;
	float: left;
}
.pull-right {
	float: right !important;
}
.pull-right {
	float: right;
}
.pull-right {
	float: right;
}
.pull-right {
	float: right;
}
.pull-right {
	float: right;
}
.pull-right {
	float: right;
}
.question_type {
	float: right;
	font-size: 12px;
}
.test-sections__subject {
	position: relative;
	margin-right: 10px;
	display: inline-block;
	vertical-align: top;
	margin-bottom: 5px;
}
.test-sections__subject {
	margin-bottom: 5px;
}
.test-sections__subject {
	margin-bottom: 3px;
}
.test-sections__subject-label {
	font-weight: 300;
	background-color: transparent;
	border: 1px solid rgba(37,181,233,0.3);
	border-radius: 2px;
	display: inline-block;
	padding: 10px;
	color: #aaa;
	cursor: pointer;
	font-size: 16px;
	border-radius: 2px;
	min-width: 160px;
}
.test-sections__subject-label {
	font-size: 13px;
	min-width: auto;
}
.test-sections__subject:hover .test-sections__subject-label, .test-sections__subject.test-sections__subject--active .test-sections__subject-label {
	color: #fff;
	border-color: #25b5e9;
	background: #25b5e9;
}
.test-sections__legend {
	display: none;
	text-align: left;
	width: 165px;
	z-index: 2;
	background: #F97762;
	top: 63px;
	left: -3px;
	position: absolute;
	border: 1px solid #F97762;
	background: #F97762;
	margin-top: 2px;
	border-radius: 2px;
	color: #fff;
	box-shadow: 3px 3px 1px rgba(0,0,0,0.2);
}
.test-sections__legend-title {
	display: none;
}
.test-sections__attempts {
	list-style: none;
	padding: 8px 0px;
	width: 100%;
	margin: 0 auto;
	text-align: center;
	font-size: 13px;
	font-weight: 300;
	font-style: italic;
}
.test-sections__attempt {
	display: block;
	margin: 0px;
}
.global-nav__fixed {
	position: relative;
	height: 100%;
	max-width: 70.57em;
	margin-left: auto;
	margin-right: auto;
	max-width: 100%;
	overflow:hidden;
}
.global-nav__fixed {
	width: 100%;
	overflow:hidden;
}
.test-grid header img {
	width: 150px;
	position: relative;
	height: 30px;
	margin-top: 2px;
	margin-left: 10px;
}
.test-grid header img {
	display: none;
}
img.test-grid__logo.logo_responsive {
	display: none;
}
img.test-grid__logo.logo_responsive {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin: 8px 10px;
}
.test-timer__details {
	font-size: 17px;
	color: #b7b7b7;
	float: right;
	margin-right: 30px;
	font-weight: 100;
}
.test-timer__details {
	padding-right: 0px;
	float: none;
	position: absolute;
	left: 50%;
	margin-left: -62px;
	top: 3px;
	color: #b7b7b7;
}
.navbar-toggle {
	position: relative;
	float: right;
	padding: 9px 10px;
	margin-top: 8px;
	margin-right: 15px;
	margin-bottom: 8px;
	background-color: transparent;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;

}
.test-grid .navbar-toggle {
	display: none;
}
.test-grid header.test_started .navbar-toggle {
	float: right;
	background: transparent;
	border: 0;
	height: 35px;
	cursor: pointer;
	outline: 0;
	margin-top: 0px;
	margin-right: 0px;
	display: block;
}
.navbar-toggle .icon-bar {
	display: block;
	width: 22px;
	height: 2px;
	border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
	margin-top: 4px;
}
      .qbox {
    float: left;
}
.numbers {
    margin-left: 5vw;
}
.qa {
    margin-left: 1vw;
    word-break: break-all;
    max-width: 200px;
}.btn {
    margin-top: 20px;
    margin-left: 20px;
    background-color: white;
    border-color: aqua;
    border-width: 1px;
    width: auto;
    height: 30px;
    font-size: 13px;
}
.btn:hover {
      background-color: cornflowerblue;
    }
.options {
    width: 22.5vw;
    background-color:white;
	border:none;
    }
.instr1 {
    width: 30px;
    height: 30px;
    border-radius: 20px;
    border: none;
}
.topnav {
    overflow: hidden;
    position: relative;
}
.topnav #myLinks {
        display: none;
        background-color: red;
        background-color: red;
}
.topnav a {
        color: white;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 17px;
        display: block;.q
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
							}
@media (max-width:1400px) {
    .qbox {
        margin-left: 13vw;
    }
}
.Question-Panel {
      float:left;
	  width:74%;
	  margin-top:10px;
	overflow:hidden;
	height:auto;
			  }
@media(max-width:1250px) {
         .Question-Panel {
          width:100%;
		  overflow:hidden;
		  }
		 }
.Question-Overview {
      float:right;
	  margin-top:-06px;
	  margin-right:5px;
	  background-color:whitesmoke;
	  border:1px;
	  height:700px;
	  width:25vw;
	  overflow:hidden;
	  box-shadow:0px 0px 3px;
	  padding:1px;
}
.OButtons {
		margin-top:7px;
			margin-left:1vw;
			margin-right:1vw;
}
 .Bottom_Overview {
         margin-top:200px;
}
@media(max-width:602px) {
             .Bottom_Overview {
             margin-top:2vw;
			 }
}
.Selections {
      box-shadow: 0px 0px 8px  #ddd;
	background: #fff;
	margin-top:-30px;
	margin-left:5px;
	margin-right:5px;
	text-align:center;
	margin-bottom:20px;

	  }
      .Main-Box {
      width:100%;
	  height:auto;
	  overflow:hidden;
	  }
	  <!-- -->
      .Side_Icon {
      float:left;
	  visibility:hidden;
	 margin-top:2px;
	  }
      @media(max-width:600px) {
          .Side_Icon {
              float: left;
              
          }
	  }
@media(max-width:1250px) {
          .Question-Overview {
          margin-top:10px;
		  float:left;
		  width:60vw;
		  margin-left:15vw;
		  }

          .Side_Bar {
          visibility:visible
		  }
          .question-info {
          width:90vw;
		  }

          .Side_Icon {
          visibility:visible;
		  }
}
@media(max-width:992px) {
             .Question-Overview {
				 margin-left:5vw;
				 margin-top:-0PX;
                 }
}
		 
@media(max-width:334px) {
         .Bottom_Options {
         margin-left:-15vw;
		 }
		       .Question-Overview {
					margin-top:-55px;
					width:72vw;										
             }
         .btn-close {
		 overflow:hidden;
		 color:black;
		 }
       
         .O_B{
			 margin-left:-5px;
			
         }
         .options {
         width:60vw;
		margin-left:15vw;
		 }
}
.Main_Header {
      width:100%; height:40px; margin-top:5px;
	  box-shadow:2px 2px  1px;
	 
}
.Header_Hidden {
		  visibility:hidden;
      }
@media(max-width:1250px) {
      .Header_Hidden {
		  visibility:visible;
      }
         .row {
         visibility:hidden;
		 }      .Question-Overview {
				}
}
         @media(max-width:995px) {
         .Question-Overview {
					margin-left:-40px;
		     }
		 }
 * {
  box-sizing: border-box;
}
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 190px;
  }
.row:after {
  content: "";
  display: table;
  clear: both;
}
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
.Nav_Button {
         float:right;
		 overflow:hidden;
		 margin-top:-17px;
		 margin-right:5px;
		 visibility:hidden;
}
@media(max-width:979px) {
         .Nav_Button {
         visibility:visible;
		 }
             .Selection {
             margin-top:20px;
			 }
}
.Selection {
         border-radius: 2px !important; width:160px; height:30px; border-color:skyblue; background-color:white;
}
@media(max-width:500px) {
           .Selection {
             margin-top:20px;
			 width:50vw;
			 
			 }
}
div.scroll {
height:550px;
width:73vw;  
overflow: scroll;
}
@media(max-width:1250px) {
             div.scroll {
             width:100vw;
			 overflow:scroll;
			 }
}
  </style>
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
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body class="ng-scope" >
	<form id="form1" runat="server">
	    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<asp:UpdatePanel ID="pane" runat="server">
				<ContentTemplate>
					<header class="Main_Header">
						<a style="margin-left:1vw;"><asp:Label ID="timelabel"  Text="Time Remaining:" runat="server"></asp:Label>
						<asp:Label ID="time"   runat="server"></asp:Label></a>
							<div class="Nav_Button">
								<button data-trigger="#navbar_main" class="d-lg-none btn btn-warning" type="button">☰</button>
							</div>
					</header>
				<div class="Main-Box">
					<div class="Question-Panel">
						<div class="scroll">
							<asp:DataList ID="QuestionsAndAnswersDataList" runat="server" OnItemCommand="QuestionsAndAnswersDataList_ItemCommand" >
								<ItemTemplate >
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
													</p></br></br>
														<a class="phoenix-question__choice single_choice ng-scope" >
															<a class="Options">
																<asp:RadioButton ID="rd_CS"  Width="600px" Height="20px" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsA") %>' />
															</a>
														</a></br></br></br></br>
															<a class="phoenix-question__choice single_choice ng-scope" >
																<a class="Options">
                                                        			<asp:RadioButton ID="rd_CS2"  Width="600px" Height="20px" style="border-radius:10px; "  GroupName="1" runat="server" Text='<%# Eval("AnsB") %>' />
																</a>
														</a></br></br></br></br>
															<a class="phoenix-question__choice single_choice ng-scope" >
																<a class="Options">
                                                        			<asp:RadioButton ID="rd_CS3"  Width="600px" Height="2" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsC") %>' />
																</a>
													</a></br></br></br></br>
                                                    <a class="phoenix-question__choice single_choice ng-scope" >
															<a class="Options">
                                                       			<asp:RadioButton ID="rd_CS4"  Width="600px" Height="20px" style="border-radius:10px;"  GroupName="1" runat="server" Text='<%# Eval("AnsD") %>' />
															</a>
													</a></br></br>
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

	
</ItemTemplate >
</asp:DataList >
</div>
				<div class="Selections">
					 <div class="test-grid__actions">
							<asp:Button runat="server"  CssClass="Selection"  Text="Clear Selection"></asp:Button>
                            <asp:Button runat="server"   CssClass="Selection" ID="btncolor1" CommandName="rb" CommandArgument='<%#Eval("QueNo") %>' OnClientClick="save();" Text="Save"></asp:Button>
							<asp:Button runat="server"   CssClass="Selection" Text="Review Later"></asp:Button>
							<asp:Button runat="server"  ID="PrevButton" CssClass="Selection"  Text="Prev"  OnClick="PrevButton_Click" > </asp:Button >
							<asp:Button runat="server"  ID="NextButton" CssClass="Selection" Text="Next"   OnClick="NextButton_Click" > </asp:Button >
					</div>
				</div>
	</div>

    					
<b class="screen-overlay"></b>
	<div class="container">
		<nav id="navbar_main" class="mobile-offcanvas navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="offcanvas-header">  
				<a href="#" class="btn-close" style="float:right; overflow:hidden; font-size:50px; color:red" onclick="closeSlideMenu()">&times;</a>
			</div>
<ul class="navbar-nav">
    <asp:Panel runat="server" CssClass="Qpanel"  ID="pvo">
                <div  class="Question-Overview">
                   <b style="margin-left:30px">Question Overview:</b><br/><br/><br/>
					<div style="margin-left:0vw">
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
					</div>
					
						<div class="Bottom_Overview">
							<div class="row">
								<div class="column"  >
								<div style="margin-left:30px">
								<asp:Button runat="server" BackColor="LightGreen" class="instr1" Text=""></asp:Button>Attempted<br/><br/>
								<asp:Button runat="server" BackColor="BlueViolet"   class="instr1" Text=""></asp:Button>To be reviewed<br/><br/>
			     				 <asp:Button runat="server" BackColor="DarkBlue"  class="instr1" ></asp:Button> Attempted & Marked for review<br/><br/>
								</div>
								</div>
						<div class="column" >
								<div style="margin-left:30px">
								<asp:Button runat="server" BackColor="Red" class="instr1" Text=""></asp:Button>Not Attempted<br/><br/>
								<asp:Button runat="server"  class="instr1" Text=""></asp:Button>Not viewed yet<br/><br/>
										 </div>
						</div>
							</div>
							<center>
						<div class="Bottom_Options">
								<asp:Button ID="instruction" runat="server" Height="30px" CssClass="options" Text="Instruction" ></asp:Button><br/><br/>
								<asp:Button ID="questions" runat="server" Height="30px" CssClass="options" Text="Questions" ></asp:Button><br/><br/>
								<asp:Button ID="EndExam" runat="server" Height="30px" CssClass="options" Text="Finish" OnClientClick="al();"></asp:Button><br/><br/>
						</div>
								</center>
					</div>
						
		</asp:Panel>
	</ul>
</div>
</div>
    </ContentTemplate>
        </asp:UpdatePanel>
			  <script>
                  function openSlideMenu() {
                      document.getElementById('side-menu').style.width = '80vw';
                      document.getElementById('main').style.marginLeft = '250px';
                  }
                  function closeSlideMenu() {
                      document.getElementById('side-menu').style.width = '0';
                      document.getElementById('main').style.marginLeft = '0';
                  }
              </script>
        </form>
    </body>

   </html> 
