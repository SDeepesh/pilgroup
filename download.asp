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



%>



<!-- This is for Gallery_inc. Slide script -->


<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript">

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
	color: #000000;
	text-align: left;
}
	

.auto-style6 {
	font-size: small;
	line-height: normal;
	color: #888888;
	font-weight: bold;
	font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
}
	

</style>

<!-- Gallery_inc code ends here -->


</head>

<body style="margin: 0;" id="gradient2">


<table style="width: 100%;" cellpadding="0" cellspacing="0">
	<tr>
		<td style="height:15px;" id="gradient223">
		<table style="width: 1000px;" cellpadding="0" cellspacing="0" align="center"><tr>
			<td style="height:100px; width: 482px;">
			<img alt=""  src="images/logo_1.png" /></td><td style="height:100px;">
			<table style="width: 100%">
				<tr>
					<td class="auto-style3">
					<img alt="" height="27" src="images/callus.png" width="300" style="float: right" /></td>
					<td class="auto-style3"><a href="http://www.facebook.com/" target="_blank">
					<img alt="" height="29" src="images/facebook.png" width="30" style="float: right" /></a></td>
				</tr>
			</table>
			</td></tr></table>
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
			<td class="auto-style1" style="height:350px;" valign="top">
			<table style="width: 1000px; height: 225px;" align="center">
				<tr>
					<td class="auto-style2" colspan="2" style="height: 54px; color:white;">Click the Below links to 
					Download PDF Files</td>
				</tr>
				<tr>
					<td style="width: 45px; height: 46px" class="auto-style1">
					<img alt="" src="images/Download.png" width="35" /></td>
					<td class="link_heading"   style="height: 46px; " ><a href="images/pdf/Bank Account Reg Form.pdf" style="color:white; text-decoration:none ;" target="_blank">Bank Account 
					Reg Form</a></td>
				</tr>
				<tr>
					<td class="auto-style6"  style="width: 45px; height: 46px">
					<img alt="" src="images/Download.png" width="35" /></td>
					<td class="link_heading"  style="height: 46px" class="auto-style4"><a href="images/pdf/MAA Air Customs EDI.pdf" style="color:white; text-decoration:none ;" target="_blank">MAA Air Customs 
					EDI</a></td>
				</tr>
<tr>
					<td style="width: 45px; height: 46px">
					<img alt="" src="images/Download.png" width="35" /></td>
					<td class="link_heading"  style="height: 46px" class="auto-style4"><a href="images/pdf/MAA Sea Customs EDI.pdf" style="color:white; text-decoration:none ;" target="_blank">MAA Sea Customs 
					EDI</a></td>
				</tr>
<tr>
					<td style="width: 45px; height: 46px">
					<img alt="" src="images/Download.png" width="35" /></td>
					<td class="link_heading"  style="height: 46px" class="auto-style4"><a href="images/pdf/TUT Sea Customs EDI.pdf" style="color:white; text-decoration:none ;" target="_blank">TUT Sea Customs 
					EDI</a></td>
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
