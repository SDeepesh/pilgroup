<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--<html xmlns="http://www.w3.org/1999/xhtml">-->
<html>

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

<!-- This is for Gallery_inc. Slide script -->


<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript">
var ct= '<%=ans4%>'

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
	

</style>

<!-- Gallery_inc code ends here -->
<script language="javascript">
function validat(){
if (document.form1.Text1.value =="" || document.form1.Text2.value =="" ||  document.form1.Text3.value=="" || document.form1.Text6.value=="" || document.form1.TextArea1.value=="" || document.form1.TextArea2.value=="")
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


<?php

$postname=$_POST["postname"];
echo $postname;
if ($postname=="1")
{
$companyname=$_POST["Text1"];
$contactperson=$_POST["Text6"]; 
$phone=$_POST["Text2"];  
$email=$_POST["Text3"];  
$address= $_POST["TextArea1"]; 
$query=$_POST["TextArea2"]; 

$to = "gopi@codevalue.in";
$subject = "Enquiry Form from Website";

$message = "
<html>
<head>
<title>Enquiry Form</title>
</head>
<body>
<table border='1' style='width:50%' style='background-color:#00FF00'>
<tr><td colspan='2'><span style='color:#16a085;'><font face='verdana' size='5' align='center'>Enquiry Form</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>
<tr><td><span style='color:#16a085;'><font face='verdana' size='3'>Company Name</font></span></td><td><span style='color:#16a085;'><font face='verdana' size='2'>".$companyname."</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>
<tr><td><span style='color:#16a085;'><font face='verdana' size='3'>Contact Name</font></span></td><td><span style='color:#16a085;'><font face='verdana' size='2'>".$contactperson."</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>

<tr><td><span style='color:#16a085;'><font face='verdana' size='3'>Phone</font></span></td><td><span style='color:#16a085;'><font face='verdana' size='2'>".$phone."</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>

<tr><td><span style='color:#16a085;'><font face='verdana' size='3'>Email</font></span></td><td><span style='color:#16a085;'><font face='verdana' size='2'>".$email."</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>

<tr><td><span style='color:#16a085;'><font face='verdana' size='3'>Address</font></span></td><td><span style='color:#16a085;'><font face='verdana' size='2'>".$address."</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>

<tr><td><span style='color:#16a085;'><font face='verdana' size='3'>Query</font></span></td><td><span style='color:#16a085;'><font face='verdana' size='2'>".$query."</font></span></td></tr>
<tr><td colspan='2'>&nbsp;</td></tr>

</table>

</body>
</html>
";


// Always set content-type when sending HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

// More headers
$headers .= 'From: <gopi@codevalue.in>' . "\r\n";


mail($to,$subject,$message,$headers);
$emailmessage="Received the details. Our person would contact you soon.";
}

else
{

}

?>

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
			<td style=" background-image:url('images/bc2.jpg'); background-repeat:repeat; height:38px;" align="center">
				<!--#include file="includes/top_menu2.htm"-->
				<table style="width: 1000px;" align="center" cellpadding="0" cellspacing="0" >
					<tr>
						<td align="top" >
							<div id="myslidemenu" class="jqueryslidemenu" align="center" style="height: 100%;">
							<ul>
							<li style="width: 135px"><a href="index.html">Home</a></li>
							<li style="width: 135px"><a href="aboutus.html">About Us</a></li>
							<li style="width: 135px"><a href="services.html">Services</a></li>
							<li style="width: 135px"><a href="freights.html">Freights</a></li>
							<li style="width: 135px"><a href="products.html">Products</a></li>
							<li style="width: 135px"><a href="contactus.html">Contact us</a></li>
							<li style="width: 135px"><a href="enquiry.php">Enquiry</a></li>
							</ul>
							<br style="clear: left" />
							</div>		
						</td>
					</tr>
				</table>
				<!--#include file="includes/top_menu2.htm"-->
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
							<img alt="" height="23" src="images/enquiry_1.png" width="104" /><br />
							<br />
							</td>
						</tr>
						<tr>

						<tr>
							<td class="auto-style2"><br/>							
							<img alt="" height="23"" /><?php echo $emailmessage;?></td>
						</tr>
						<tr>

							<td><div style="background:#545454;height:1px;width:100%"></div></td>
						</tr>
						<tr>
							<td  class="auto-style3" style="padding:5px; text-indent:0px;" valign="top">
														<table style="width: 95%; height: 237px;">
									<form method="post" name="form1" action="enquiry.php" onsubmit="validate_e_con()">
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
										Phone/Mobile*</td>
										<td class="auto-style2">
										<input name="Text2" type="text" style="width: 178px"/></td>
									</tr>
									<tr>
										<td class="auto-style2" style="width: 273px">
										Email*</td>
										<td class="auto-style2">
										<input name="Text3" type="text" style="width: 179px"/><input name="postname" type="hidden" value="1"></td>
									</tr>
									<tr>
										<td class="auto-style2" style="height: 36px; width: 273px">
										Address*</td>
										<td class="auto-style2" style="height: 36px; ">
										<textarea name="TextArea1" style="height: 35px; width: 312px;" cols="20" rows="1"></textarea>&nbsp;</td>
									</tr>
									<tr>
										<td class="auto-style2" style="width: 273px">
										Query*</td>
										<td class="auto-style2">
										<textarea name="TextArea2" style="height: 30px; width: 312px;" cols="20" rows="1"></textarea></td>
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
		<tr><td style="background:#12171B"></td></tr>
		<tr><td style="background:#222C33;height:8px;"></td></tr>
		<tr>
			<td style="height:170px;" id="gradient" align="center">
				<div style="width:900px;height:100px;  border:thin;border-style:solid;border-width:1px; border-color:#afafaf;  -moz-border-radius:10px; -khtml-border-radius:10px; -webkit-border-radius:10px; border-radius:10px; " id="gradient">
					<table style="width: 95%; height: 142px;" align="center">
						<tr>
							<td class="auto-style2" style="padding:5px;">
								<table style="width: 100%">
									<tr>
										<td>	
											<div style="width:100%;position:relative;">
												<a href="down_form.html">
													<div style="background-image:url('images/Earth%20Download.png'); background-repeat:no-repeat; width:120px; height:120px; position:absolute; left: -21px; top: -25px;"></div>
												</a>
												<a href="down_form.asp">
													<div style="background-image:url('images/downloads_1.png'); background-repeat:no-repeat; width:138px; height:31px; position:absolute; left: 100px; top: 21px;"></div>
												</a>
											</div>
										</td>
										<td>
											<div style="width:100%;position:relative;">
												<a href="enquiry.php">
													<div style="background-image:url('images/e-mail2.png');background-repeat:no-repeat; width:120px; height:120px; position:absolute; left: -16px; top: -25px;">
													</div>
												</a>
												<a href="enquiry.php">
													<div style="background-image:url('images/enquiry_1.png'); background-repeat:no-repeat; width:138px; height:31px; position:absolute; left: 114px; top: 21px;"></div>
												</a>
											</div>
										</td>
										<td>
											<div style="width:100%;position:relative;">
												<a href="http://www.track-trace.com/aircargo" target="_blank">
													 <div style="background-image:url('images/lift_truck_256.png');background-repeat:no-repeat; width:120px; height:120px; position:absolute; left: -22px; top: -25px;"></div>
												</a>
												<a href="http://www.track-trace.com/aircargo" target="_blank">
													<div style="background-image:url('images/order_track.png'); background-repeat:no-repeat; width:138px; height:46px; position:absolute; left: 114px; top: 21px;"></div>
												</a>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td style="padding:5px; height: 87px;" class="full_text"></td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td style="height:100px;"  align="center" bgcolor="#222C33">
				<table style="width: 1000px; " class="full_text" align="center">
					<tr>
						<td style="text-align:center; height: 23px;">
							<a href="index.html" class="full_text" style="text-decoration:none;">Home</a> | <a href="aboutus.html" class="full_text" style="text-decoration:none;">About us</a> | <a href="services.html" class="full_text" style="text-decoration:none;">Services</a> | <a href="freights.html" class="full_text" style="text-decoration:none;">Freights</a> | <a href="products.html" class="full_text" style="text-decoration:none;">Products</a> | <a href="contactus.html" class="full_text" style="text-decoration:none;">Contact us</a> | <a href="enquiry.php" class="full_text" style="text-decoration:none;">Enquiry</a> 
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
