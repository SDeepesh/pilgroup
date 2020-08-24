<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />

<link href="mystyle.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="jqueryslidemenu.css" />


<title>Welcome to Peacock International</title>
<!--[if lte IE 7]>
<style type="text/css">
html .jqueryslidemenu{height: 2%;} /*Holly Hack for IE7 and below*/
</style>
<![endif]-->

<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="jqueryslidemenu.js"></script>
<style type="text/css">

.jqueryslidemenu{
font: 11px Verdana;
background:transparent;
width: 100%;
}

.jqueryslidemenu ul{
margin: 0;
padding: 0;
list-style-type: none;
}

.jqueryslidemenu ul li{
position: relative;
display: inline;
float:left;
}

.jqueryslidemenu ul li ul{
position: absolute;
left: 0;
display: block;
visibility: hidden;
}

.jqueryslidemenu ul li ul li{
background:#E9E9E9;
border:medium;
display: list-item;
float: none;
color:black;
text-align:left;

}

.style1 {
	margin-left: 5px;
	margin-right: 5px;
	text-align: center;
	color: white;
	font-size: small;
	font-weight:bold;
	font-family:"Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;}
</style>

<%dim c,s,i
dim cn
dim r1
dim objConn, sqlstr,sqlstrg,r3,a(5)
c=Request.QueryString("cat")
z=Request.QueryString("cat1")
s=request.servervariables("server_name")



ans4=request.querystring("ans")
if ans4="" then
ans4="hi"
end if



%>
<!-- This is for Gallery_inc. Slide script -->


<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript">
var ct= '<%=ans4%>'
function don()
{

if (ct=="hi")
{

}
else
{
alert(ct);
}

}
function check_num(ds)
{
	
       var flag
       var flag="false"
		var valid="0123456789 +-";
			for(i=0;i<ds.value.length;i++)
			{
				if(valid.indexOf(ds.value.charAt(i))==-1)
				{	
					flag="true"
					alert("Invalid character")
					ds.focus();
					ds.select();
					return false;
					break;
				}
			}
	
}

$(document).ready(function() {		
	
	//Execute the slideShow
	slideShow();

});

function slideShow() {

	//Set the opacity of all images to 0
	$('#gallery a').css({opacity: 0.0});
	
	//Get the first image and display it (set it to full opacity)
	$('#gallery a:first').css({opacity: 1.0});
	
	//Set the caption background to semi-transparent
	$('#gallery .caption').css({opacity: 0.7});

	//Resize the width of the caption according to the image width
	$('#gallery .caption').css({width: $('#gallery a').find('img').css('width')});
	
	//Get the caption of the first image from REL attribute and display it
	$('#gallery .content').html($('#gallery a:first').find('img').attr('rel'))
	.animate({opacity: 0.7}, 400);
	
	//Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
	setInterval('gallery()',3000);
	
}

function gallery() {
	
	//if no IMGs have the show class, grab the first image
	var current = ($('#gallery a.show')?  $('#gallery a.show') : $('#gallery a:first'));

	//Get next image, if it reached the end of the slideshow, rotate it back to the first image
	var next = ((current.next().length) ? ((current.next().hasClass('caption'))? $('#gallery a:first') :current.next()) : $('#gallery a:first'));	
	
	//Get next image caption
	var caption = next.find('img').attr('rel');	
	
	//Set the fade in effect for the next image, show class has higher z-index
	next.css({opacity: 0.0})
	.addClass('show')
	.animate({opacity: 1.0}, 1000);

	//Hide the current image
	current.animate({opacity: 0.0}, 1000)
	.removeClass('show');
	
	//Set the opacity to 0 and height to 1px
	$('#gallery .caption').animate({opacity: 0.0}, { queue:false, duration:0 }).animate({height: '1px'}, { queue:true, duration:300 });	
	
	//Animate the caption, opacity to 0.7 and heigth to 100px, a slide up effect
	$('#gallery .caption').animate({opacity: 0.7},100 ).animate({height: '100px'},500 );
	
	//Display the content
	$('#gallery .content').html(caption);
	
	
}

</script>
<style type="text/css">
body{
	font-family:arial
}

.clear {
	clear:both
}

#gallery {
		height:300px;
}
	#gallery a {
	
		float:left;
	
		
	}
	
	#gallery a img {
	float:left;
		border:none;
	}
	
	#gallery a.show {
	float:left;
		
	}

	#gallery .caption {
			background-color:#000; 
		color:#ffffff; 
		height:100px; 
		width:100%; 
		position:absolute;
		bottom:0;
	}

	#gallery .caption .content {
		margin:5px
	}
	
	#gallery .caption .content h3 {
		margin:0;
		padding:0;
		color:#000000;
	}
	

.auto-style1 {
	text-align: center;
}
	

.auto-style2 {
	text-align: left;
}
	

.auto-style3 {
	margin-left: 5px;
	margin-right: 5px;
	text-align: center;
	color: #adadad;
	font-size: small;
	font-family: Arial, Helvetica, sans-serif;
	text-indent: 25px;
	line-height: 25px;
}
.auto-style4 {
	text-decoration: none;
	color: #FFFFFF;
}
	

</style>

<!-- Gallery_inc code ends here -->
<script language="javascript">
function validat(){
if (document.form1.Text1.value =="" || document.form1.Text6.value =="" ||  document.form1.Text3.value=="")
{
alert("Fill All Fields");
}
else 
{
document.form1.submit();
}

}

function movepic(img_name,img_src) {
document[img_name].src=img_src;
}



</script>


</head>

<body style="margin: 0;" id="gradient2" onload="don();">


<table style="width: 100%;" cellpadding="0" cellspacing="0">
	<tr>
		<td>

<div id="gallery" class="auto-style1" >

	<a href="Gallery.asp?cat=Leggings&cat1=Capri" class="show">
		<img alt="" src="images/banner1.jpg" width="100%"  border="0"  title=""  rel=""/></a></div>
</td>
	</tr>
	
	
	<tr>
		<td>
		<table style="width: 100%" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td class="auto-style1">
	<table style="width: 100%;" cellpadding="0" cellspacing="0" align="center">
		<tr >
			<td style=" background-image:url('images/bc2.jpg'); background-repeat:repeat; height:38px;" align="center"><!--#include file="includes/top_menu2.htm"-->
</td>
		</tr>
		<tr>
			<td>
			<table style="width: 1000px; height: 343px" cellpadding="10" align="center">
				<tr>
					<td valign="top" style="padding:10px; ">
					<table style="width: 100%">
						<tr>
							<td class="auto-style2"><br/>							
							<img alt="" height="22" src="images/contact1.png" width="130" /><br />
							<br />
							</td>
						</tr>
						<tr>
							<td><div style="background:#545454;height:1px;width:100%"></div></td>
						</tr>
						<tr>
							<td  class="auto-style3" style="padding:5px; text-indent:0px;" valign="top">
														<table style="width: 95%; height: 237px;">
									<form method="post" name="form1" action="http://www.mediachips.in/mail/mail_pil_down.asp" onsubmit="validate_e_con()">
									<tr>
										<td class="auto-style14" colspan="2">
										Feel Free to contact us and place your Queries here:
										</td>
									</tr>
									
									<tr>
										<td class="auto-style2" style="width: 273px">
										Company Name*</td>
										<td class="auto-style2">
										<input name="Text1" type="text" style="width: 177px"/>&nbsp;</td>
									</tr>
									<tr>
										<td class="auto-style2" style="width: 273px">
										Contact Person*</td>
										<td class="auto-style2">
										<input name="Text6" type="text" style="width: 177px"/></td>
									</tr>
									<tr>
										<td class="auto-style2" style="width: 273px">
										Email*</td>
										<td class="auto-style2">
										<input name="Text3" type="text" style="width: 179px"/></td>
									</tr>
									<tr>
										<td class="auto-style12" style="width: 273px">
										&nbsp;</td>
										<td class="auto-style2">
									<img alt=""  src="images/submit_button.png"   style="cursor:pointer" onclick="return validat()"/>
								</td>
									</tr>
									</form>
								</table>
				
					
				
				
				
							</td>
						</tr>
						</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
					
<!--#include file="includes/bottom_area.html"-->

	</table>
</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>

</html>
