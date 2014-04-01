<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Greyhounds</title>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"  type= "text/javascript"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js" type= "text/javascript"></script>

<!-- Optional theme -->
<link href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/slate/bootstrap.min.css" rel="stylesheet">
  
</head>
<body>
<div id="container">
  <div id="header">
    <p><img src="images/header735x166.jpg" alt="gpago" width="735" height="166" /></p>
  </div>
  <div id="nav">
    <ul id="MenuBar1" class="MenuBarHorizontal">
      <li class="MenuBarItemSubmenu">
        <div align="left" class="style6">
          <div align="center"><a href="Index.html"><strong>Home</strong></a> </div>
        </div>
      </li>
      <li><a href="#" class="style6"><strong>GPA/GO</strong></a>
        <ul>
          <li><a href="aboutus.html" class="style6">About us</a></li>
          <li class="style8"><a href="contactus.html" class="style6">Contact us</a></li>
          <li><a href="maptokennel.html" class="style6">Map to Kennel</a></li>
          <li><a href="sponsor.html" class="style6">Our Sponsors</a></li>
          <li><a href="gpanational.html" class="style6">GPA National</a></li>
        </ul>
      </li>
<li><a href="#" class="style6"><strong>Greys</strong></a>
    <ul>
            <li><a href="aboutgreys.html" class="style6">General info</a> </li>
            <li><a href="faqgreys.html" class="style6">FAQ</a></li>
            <li><a href="color.html" class="style6">Greyt Colors</a></li>
        </ul>
      </li>
  <li><a href="#" class="style6"><strong>Adopt</strong></a>
    <ul>
            <li><a href="adoptioninfo.html" class="style6">Adoption info</a></li>
            <li><a href="manual.html" class="style6">Manual</a></li>
            <li><a href="adoption_application.html" class="style6">Application</a></li>
            </ul>
        <li><strong>
  <a class="style6" target="_blank" href="http://www.greyhoundpetsorlando.org/rehomedgreys">Our Greys</a></strong>
    <ul>
            <li><a href="availablegreys.html" class="style6">Available Greys</a></li>  
            <li><a href="featuredhounds.html" class="style6">Featured Hounds</a></li>
          <li><a href="seniorspotlights.html" class="style6">Senior Spotlights</a></li>
            <li><a href="ADOPTED%20GREYS%20SLIDES/adoptedgreys.htm" class="style6">Adopted Greys</a></li>
           <li> <a href="../SUCCESS%20STORIES/Success%20Stories.html" target="new" class=" style6">Success Stories</a></li>
          <li><a href="web_photobook/greyhounds/scrapbook/Books/GREYT%20SCRAPBOOK/sbookt.htm" target="new" class="style6">Scrapbook</a></li>
          <li><a href="rainbowbridge.html" class="style6">Rainbow Bridge</a></li>
    </ul>
      </li>
  <li><a href="#" class="style6"><strong>Help</strong></a>
    <ul>
            <li><a href="foster.html" class="style6">Foster</a></li>
            <li><a href="sponsorform.html" class="style6">Sponsor</a></li>
            <li><a href="volunteer.html" class="style6">Volunteer</a></li>
            <li><a href="wishlist.html" class="style6">Wish List</a></li>
        </ul>
      </li>
      <li><a href="#" class="style6"><strong>Events</strong></a>
        <ul>
          <li><a href="EVENTS/events.html" class="style6">Upcoming Events</a></li>
          <li><a href="EVENTS/meetandgreets.html" class="style6">Meet &amp; Greets</a></li>
          <li><a href="Fundraisers/fundraisers.html" class="style6">Fundraisers</a></li>
         </ul>
      </li>
      <li><a href="#" class="style6"><strong>News</strong></a>
        <ul>
          <li><a href="NEWSLETTERS/newsletter.html" class="style6">Newsletter</a></li>
          <li><a href="HEALTH%20ISSUES/healthnews.html" class="style6">Health Articles</a></li>
          <li><a href="#" class="style6">New Adopters</a></li>
          <li><a href="videos.html" class="style6">Videos</a></li>
          <li><a href="links.html" class="style6">Links</a></li>
        </ul>
      </li>
    </ul>
  </div>
  <div id="sidebar1">
    <h4 align="center" class="style4"><strong>Kennel Adoption Hours</strong></h4>
    <p align="center" class="style4 style8">
    <img src="images/adoption_hours_yellow.jpg" alt="adoption hours" hspace="5" align="middle" longdesc="../adoption_hours_yellow.jpg" width="142" height="142" /><img src="RAFFLES/WoofDoggyLineH_2.gif" longdesc="../WoofDoggyLineH_2.gif" width="139" height="28" /></p>
    <p align="center" class="style4 style8"><span class="style6"><strong><span class="style4">Support GPA/GO</span><br />
            <br />
      </strong></span><span class="style4">Make a tax deductible<br />
    donation using PayPal.</span></p>
	<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
      <div align="center" target=new">
  <input type="hidden" name="cmd" value="_xclick">
  <input type="hidden" name="business" value="wjainfla@cfl.rr.com">
  <input type="hidden" name="item_name" value="Donation: Greyhound Pets of America - Greater Orlando">
  <input type="hidden" name="no_shipping" value="1">
  <input type="hidden" name="currency_code" value="USD">
  <input type="hidden" name="tax" value="0">
  <input type="hidden" name="bn" value="PP-DonationsBF">
  <input name="submit" type="image" src="https://www.paypal.com/en_US/i/btn/x-click-but21.gif" alt="Make donations with PayPal - it's fast, free and secure!"align="center" border="0" width="110" height="23">
      </div>
    </form>
    <p align="center" class="style4 style8">
    <img src="RAFFLES/WoofDoggyLineH_2.gif" longdesc="../WoofDoggyLineH_2.gif" width="139" height="28" /></p>
    <p align="center" class="style6 style4"><strong><a href="http://pets.groups.yahoo.com/group/greyhoundpetsorlando/join" target="new">Subscribe</a> to our <br />
      mailing list</strong>.</p>
    <p align="center" class="style4"><a href="http://pets.groups.yahoo.com/group/greyhoundpetsorlando/join" target="new">
    <img src="images/yahoogroup.gif" alt="yahoo" longdesc="../yahoogroup.gif" width="91" height="52" /></a></p>
    <p align="center" class="style4">
    <img src="RAFFLES/WoofDoggyLineH_2.gif" longdesc="../WoofDoggyLineH_2.gif" width="139" height="28" /></p>
    <p align="center" class="style4"><strong><span class="style17"><a href="http://stores.ebay.com/Greyt-Beginnings" target="new">Greyt Beginnings </a><a href="#" class="style9"><br />
    </a><a href="http://stores.ebay.com/Greyt-Beginnings" target="new">Gift Shop</a></span></strong></p>
    <p align="center" class="style4">
    <img src="RAFFLES/WoofDoggyLineH_2.gif" longdesc="../WoofDoggyLineH_2.gif" width="139" height="28" /></p>
    <div align="center"><span class="style6"><strong>Join <a href="http://www.igive.com/welcome/warmwelcome.cfm?c=16370" target="new">iGive.com.</a></strong></span><strong><br />
    </strong><span class="style8">Help earn money for GPA/GO</span> </div>
    <p align="center" class="style4"><a href="http://www.igive.com/welcome/warmwelcome.cfm?c=16370" target="new">
    <img src="images/igive120x60.gif" alt="igive" longdesc="../igive120x60.gif" width="120" height="60" /></a></p>
    
    <p style="margin-top: 1; margin-bottom: 1"><font size="2">Page last updated</font></p>
    <p style="margin-top: 1; margin-bottom: 1"><font size="2">&nbsp;<!--webbot bot="Timestamp" S-Type="REGENERATED" S-Format="%B %d, %Y" startspan -->March 22, 2014<!--webbot bot="Timestamp" endspan i-checksum="16947" --></font></p>
    
    </div>
    <div id="mainContent">
    <center>
	<p class="auto-style11">
	Available Greys</h2>
		<p class="auto-style28" style="width: 511px"><span class="style120">
		<strong>
		<span class="style6"><span class="style166">
	    <span LANG="EN" style="font-size: 18px">
		<font color="#0000ff" face="Arial" size="2">
		<span class="280321714-25032012">
		<span class="auto-style14" style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 14px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
		<span class="auto-style24">
		<br />
		</span></span></span></font></span>
					</span>Note: </span> </strong><span class="style6">If a dog 
	is designated 
	<strong>&quot;cat friendly&quot;</strong>, this means that the Greyhound tested non 
	aggressively with the cat in a controlled situation. There is no guarantee 
	that this same dog will react the same in a home setting. Additionally, the 
	most cat friendly Greyhound in the house may likely give chase to a cat or 
	small animal outside the house.</span></span></p>
	<span class="style120">
		<p class="style112" style="width: 448px"><a href="sponsorform.html">
		<span class="style9">Sponsorship Program:</span></a><span class="style9"> 
	Thanks to all who sponsor a Greyhound that is in our care.&nbsp; For a 
	donation of $10 / month you can help pave the way to a forever home for one 
	of these Greyt animals.&nbsp; If you spot any errors in your sponsorship 
	information, please let us know:&nbsp;
	<a href="mailto:WebMaster@greyhoundpetsorlando.org">
	Webmaster@Greyhoundpetsorlando.org</a> <br />
	</span><span class="style6"> 
	<br />
	</span><span class="style9"> 
	You can fill out a <a href="Application/New%20Application_distributed.pdf">Greyhound Adoption 
	Application</a> online.</span></p>
	<p class="auto-style19">It is the policy of GPA/Greater Orlando to limit 
	Greyhound adoptions to families with children no younger than 5 years of 
	age.&nbsp; Homes having children between the ages of 5 and 7 must have a 
	fenced yard.</p>
	<p class="style6">*********Click on the Greyhound&#39;s face to see another 
	picture************</span></p>
		<br /></table>
		

	<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/alealancraig2.jpg" target="_blank">
			<img class="style30" height="202" src="PHOTOGALLERY%20AVAIL%20DOGS/alealancraig1.jpg" width="156" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Ale Alan 
			Craig "Craig"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/23/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">77</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8"><span class="auto-style86">Brother to 
			Ale Dolly Parton &amp; Ale Ernie Banks</span><br />
			<em>additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/AleAlanCraig3.jpg" target="_blank">pic</a>,
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/AleAlanCraig4.jpg" target="_blank">pic</a></em></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Carol &amp; Michael LaMothe</p>
			<p class="style61">Debbie &amp; Robert Barnes</p>
			<p class="style61">Marcus &amp; Michelle Odell</p>
			<p class="style61">Gary Schaffer</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
	<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/aledollyparton2.jpg" target="_blank">
			<img class="style30" height="195" src="PHOTOGALLERY%20AVAIL%20DOGS/aledollyparton1.jpg" width="157" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Ale Dolly 
			Parton "Dolly"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/23/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8"><span class="auto-style86">Sister to 
			Ale Alan Craig &amp; Ale Ernie Banks</span><br />
			</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Carol &amp; Michael LaMothe</p>
			<p class="style61">John &amp; Patricia Zubritsky</p>
			<p class="style61">Sondra Emmert</p>
			<p class="style61">Sue Barker</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

	<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/aleerniebanks2.jpg" target="_blank">
			<img class="style30" height="166" src="PHOTOGALLERY%20AVAIL%20DOGS/aleerniebanks1.jpg" width="158" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">Ale Ernie 
			Banks "Ernie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/23/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">Brother to Ale Alan Craig &amp; Ale Dolly 
			Parton<br />
			<span class="auto-style100">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/AleErnieBanks3.jpg" target="_blank">pic</a></span></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Stan &amp; Paula Helton</p>
			<p class="style61">Linda Fishkind</p>
			<p class="style61">Dawn Roelofs</p>
			<p class="style61">Virginia Greyhound Adoption</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
	<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/backwoodjanet2.jpg" target="_blank">
			<img class="style30" height="208" src="PHOTOGALLERY%20AVAIL%20DOGS/BackwoodJanet1.jpg" width="159" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Backwood Janet "Janet"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/15/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">61</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">White Ticked 
			Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 18px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">Sister to Backwood Julie<br />
			<i>additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/BackwoodJanet3.jpg" target="_blank">
			pic</a></i></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Laura Scott</p>
			<p class="style61">Virginia Greyhound Adoption</p>
			<p class="style61">Paul &amp; Kim Lueders</p>
			<p class="style61">Alice Moore</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
		

	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 160px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/backwoodjulie2.jpg" target="_blank">
			<img class="style30" height="168" src="PHOTOGALLERY%20AVAIL%20DOGS/backwoodjulie.jpg" width="132" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Backwood 
			Julie "Julie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/15/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">65</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">White Ticked 
			Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">Sister to Backwood Janet<br />
			</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Lyman H.S. Journalism Club</p>
			<p class="style61">Carolyn Flajnik</p>
			<p class="style61">Dawn Roelofs</p>
			<p class="style61">John &amp; Sandy Giglietta</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 160px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/backwoodpatton2.jpg" target="_blank">
			<img class="style30" height="181" src="PHOTOGALLERY%20AVAIL%20DOGS/backwoodpatton1.jpg" width="153" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Backwood 
			Patton "Patton"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/1/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">75</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Thomas &amp; Katherine Regan</p>
			<p class="style61">Michelle &amp; Lou Sposato</p>
			<p class="style61">Gary Schaffer</p>
			<p class="style61">Nancy O'Connell</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 163px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/backwoodrozlyn2.jpg" target="_blank">
			<img class="style30" height="205" src="PHOTOGALLERY%20AVAIL%20DOGS/backwoodrozlyn1.jpg" width="127" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Backwood 
			Rozlyn "Rozlyn"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">7/4/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">61</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="auto-style125">ADOPTED</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Gail Smith</p>
			<p class="style61">Joe Gonzales</p>
			<p class="style61">Kim Little</p>
			<p class="style61">Jeanne Guerra</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>


<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/bmtsayheytokay2.jpg" target="_blank">
			<img class="style30" height="158" src="PHOTOGALLERY%20AVAIL%20DOGS/bmtsayheytokay1.jpg" width="159" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			BMT Sayheytokay "Okie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">8/24/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">80</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Michaels Family (In Loving Memory of Abita)</p>
			<p class="style61">Bob &amp; Cheryl Carlin</p>
			<p class="style61">Kimberly Little</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 158px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/bonvivant2.jpg" target="_blank">
			<img class="style30" height="199" src="PHOTOGALLERY%20AVAIL%20DOGS/bonvivant1.jpg" width="156" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Bon Vivant "Winnie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">6/6/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">65</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Fawn Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="auto-style92">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/BonVivant3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Gary Schaffer</p>
			<p class="style61">Susan Barker</p>
			<p class="style61">Randi Brooks &amp; John Upperco</p>
			<p class="style61">Peggy Stastny "In Memory of Kayla"</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

 		


		
	
	
	
		

	<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/brokenheart2.jpg" target="_blank">
			<img class="style30" height="189" src="PHOTOGALLERY%20AVAIL%20DOGS/brokenheart1.jpg" width="161" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px"><strong>
			Name:</td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Broken Heart 
			"Heather"</td>
		</tr>
		<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">12/19/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Color:</td>
			<td width="201" class="style8" style="height: 22px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 23px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 23px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8" style="height: 22px">
			&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Sponsored by: </td>
			<td width="201" class="style8">
			<p class="style61">In Memory of Jean &amp; Howard Allison and their beloved greyhound Reveille</p>
			<p class="style61">Jim &amp; Beth Jordan</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
		</tr>
	</table>
	
		

	


		
		
		
	
	


	
	
		
	
			<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/clfootloose2.jpg" target="_blank">
			<img class="style30" height="164" src="PHOTOGALLERY%20AVAIL%20DOGS/clfootloose1.jpg" width="171" /></a><br />
			</td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 24px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 24px">
			CL Footloose "Footloose"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">9/12/2008</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">72</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Color:</td>
			<td width="201" class="style8">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Home acclimated:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Sponsored by: </td>
			<td width="201" class="style8">
			<p class="style61">Gary Schaffer</p>
			<p class="style61">William Wallace (Edge &amp; Mojo)</p>
			<p class="style61">Michael&nbsp;&amp; Pat Gillespie</p>
			<p class="style61">Cheri Young</p>
			<p class="style61">JoAnn Desilets (Jen &amp; Mark)</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
		</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 176px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/devilselbow2.jpg" target="_blank">
			<img class="style30" height="217" src="PHOTOGALLERY%20AVAIL%20DOGS/devilselbow1.jpg" width="143" /></a><br />
			</td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 24px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 24px">
			Devils Elbow "Devi"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">7/26/2012</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">64</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Color:</td>
			<td width="201" class="style8">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="auto-style92"><span class="auto-style124">
			ADOPTION PENDING<b><br />
			</b></span>additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/DevilsElbow3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Sponsored by: </td>
			<td width="201" class="style8">
			<p class="style61">Bob &amp; Cheryl Carlin</p>
			<p class="style61">Michaels Family (In Loving Memory of Abita)</p>
			<p class="style61">Gary Schaffer</p>
			<p class="style61">Michael &amp; Carol La Mothe</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
		</tr>
	</table>

	
	


	
	
			<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/didjaever2.jpg" target="_blank">
			<img class="style30" height="170" src="PHOTOGALLERY%20AVAIL%20DOGS/didjaever1.jpg" width="164" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Did Ja Ever "Evers"</td>
		</tr>
		<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">12/12/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Color:</td>
			<td width="201" class="style8" style="height: 22px">Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 23px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 23px">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="auto-style92" style="height: 22px">
			additional 
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/DidJaEver3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Sponsored by: </td>
			<td width="201" class="style8">
			<p class="style61">Darla Wood</p>
			<p class="style61">Christina &amp; Dan Williams</p>
			<p class="style61">Lauren Phelps</p>
			<p class="style61">Joan Harris</p>
			<p class="style61">Virginia Greyhound Adoption</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
		</tr>
	</table>

	
				

				<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px" class="style52">
			<br />
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/dobby2.jpg" target="_blank">
			<img height="211" src="PHOTOGALLERY%20AVAIL%20DOGS/dobby1.jpg" width="166" class="style30" /></a></td>
			<td width="130" bgcolor="#c3d2ed" class="style8"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Dobby "Dobby"</td>
		</tr>
		<tr>
			<td class="style8">Date of Birth:</td>
			<td width="201" class="style8">6/30/2009</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Male</td>
		</tr>
		<tr>
			<td class="style8">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px">Color:</td>
			<td width="201" class="style8" style="height: 24px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8">Personality/more info:</td>
			<td width="201" class="style8">VERY affectionate. His tail never 
			stops wagging!<br />
			Brother to Fenrir Greyback<br />
			<em>additional 
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/Dobby3.jpg" target="_blank">pic</a></em><br />
			</td>
		</tr>
		<tr>
			<td class="style8">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="auto-style75"><font size="2">Carolyn Flajnik</font></p>
			<p class="auto-style75"><font size="2">Joan Harris</font></p>
			<p class="auto-style75"><font size="2">Girl Scout Troop 740</font></p>
			<p class="auto-style75"><font size="2">Ron &amp; Phyllis Zunk</font></p>
			<p class="auto-style75"><font size="2">Gary Schaffer</font></p>
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td></tr>
		</table>

				<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 173px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/donetalking2.jpg" target="_blank">
			<img class="style30" height="165" src="PHOTOGALLERY%20AVAIL%20DOGS/donetalking1.jpg" width="135" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Done Talking "Diane"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">6/10/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Weight:</td>
			<td width="201" class="style8" style="height: 22px">66</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Black Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Randi Brooks &amp; John Upperco</p>
			<p class="style61">Jennifer Britto</p>
			<p class="style61">Kim Little</p>
			<p class="style61">Jamie Mercer</p>
			<font face="Arial" size="2">
			<p class="style61">Linda Fishkind</p>
			</font>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

		<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px" class="style52">
			<br />
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/elrichey2.jpg" target="_blank">
			<img height="131" src="PHOTOGALLERY%20AVAIL%20DOGS/elrichey1.jpg" width="170" class="style30" /></a></td>
			<td width="130" bgcolor="#c3d2ed" class="style8"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">El Richey 
			"Richey"</td>
		</tr>
		<tr>
			<td class="style8">Date of Birth:</td>
			<td width="201" class="style8">8/4/2009</td>
		</tr>
		<tr>
			<td class="style8">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px">Color:</td>
			<td width="201" class="style8" style="height: 24px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Personality/more info:</td>
			<td width="201" class="auto-style45" style="height: 22px">ADOPTION 
			PENDING</td>
		</tr>
		<tr>
			<td class="style8">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">Julie Calkins in Honor of Brindy</p>
			<p class="style61">
			Jack &amp; Jemma Elliot</p>
			<p class="style61">
			Alice Moore</p>
			<p class="style61">
			Nick &amp; Alma Stachurski (In Memory of Ginny, Paisley, &amp; Cleo)</p>
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td></tr>
		</table>
				<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 165px" class="style75">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/flyingdoors2.jpg" target="_blank">
			<img class="style30" height="229" src="PHOTOGALLERY%20AVAIL%20DOGS/flyingdoors1.jpg" width="166" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 135px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Flying Doors 
			"Dorian"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Date of Birth:</td>
			<td width="201" class="style8">3/7/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="height: 15px; width: 135px;">Weight:</td>
			<td width="201" class="style8" style="height: 15px">70</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Color:</td>
			<td width="201" class="style8">Dark Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Personality/more info:</td>
			<td width="201" class="style8"><i>additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/FlyingDoors3.jpg" target="_blank">pic</a></i></td>
			
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Sponsored by:</td>
			<td width="201" class="style8">
			<font face="Arial" size="2">
			<p class="style61">
			<font face="Arial" size="2">
			Susan Barker</font></p>
			<p class="style61">
			Virginia Greyhound Adoption</p>
			<p class="style61">
			Grant McAlister</p>
			<p class="style61">
			Sue Barker</p>
			<p class="style61">
			Christina &amp; Dan Williams</p>
			<p class="style61">
			<a href="sponsorform.html">Click here to 
			sponsor me 		
			</a></font></p>
			</td></tr></table>


		

		


	

		
		

					<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px" class="style52">
			<br />
			
			<img class="style30" height="193" src="PHOTOGALLERY%20AVAIL%20DOGS/frostedbliss1.jpg" width="162" /></a></td>
			<td width="130" bgcolor="#c3d2ed" class="style8"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Frosted Bliss 
			"Booster"</td>
		</tr>
		<tr>
			<td class="style8">Date of Birth:</td>
			<td width="201" class="style8">8/1/2011</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Male</td>
		</tr>
		<tr>
			<td class="style8">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px">Color:</td>
			<td width="201" class="style8" style="height: 24px">Red Brindle</td>
		</tr>
		<tr>
			<td class="style8">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Personality/more info:</td>
			<td width="201" class="style8" style="height: 22px">
			&nbsp;</td>
		</tr>
		<tr>
			<td class="style8">Sponsored by:</td>
			<td width="201" class="style8">
			
			<p class="style61"><font face="Arial" size="2">
			Jim &amp; Beth Jordan</font></p>
			<p class="style61"><font face="Arial" size="2">
			Mary &amp; Robert Dickenson</font></p>
			<p class="style61"><font face="Arial" size="2">
			Katherine Newsum</font></p>
			<p class="style61"><font face="Arial" size="2">
			Frilly Frocks &amp; Polliwogs</font></p>
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td></tr></table>

<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px" class="style52">
			<br />
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/gradysdomina2.jpg" target="_blank">
			<img class="style30" height="237" src="PHOTOGALLERY%20AVAIL%20DOGS/gradysdomina1.jpg" width="152" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 130px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Grady's 
			Domina "Domina"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Date of Birth:</td>
			<td width="201" class="style8">3/6/2011</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 130px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Weight:</td>
			<td width="201" class="style8">70</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px; width: 130px;">Color:</td>
			<td width="201" class="style8" style="height: 24px">&nbsp;Light Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 130px;">Personality/more info:</td>
			<td width="201" class="style8" style="height: 22px">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Sponsored by:</td>
			<td width="201" class="style8">
			
			<p class="style61">Joan Harris</p>
			<p class="style61">Pam Follett</p>
			<p class="style61">Virginia Greyhound Adoption</p>
			<p class="style61">Lisa Nash</p>
			<font face="Arial" size="2">
			<p class="style61">
			Rosemarie Pena</p>
			<p class="style61">
			Debbie &amp; Robert Barnes</p>
			</font>
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td></tr></table><table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px" class="style52">
			<br />
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/hinoontruelee2.jpg" target="_blank">
			<img class="style30" height="237" src="PHOTOGALLERY%20AVAIL%20DOGS/hinoontruelee1.jpg" width="152" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 130px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Hi Noon 
			True Lee "Leah"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Date of Birth:</td>
			<td width="201" class="style8">11/3/2009</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 130px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px; width: 130px;">Color:</td>
			<td width="201" class="style8" style="height: 24px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 130px;">Personality/more info:</td>
			<td width="201" class="auto-style92" style="height: 22px">additional 
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/HiNoonTrueLee3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 130px">Sponsored by:</td>
			<td width="201" class="style8">
			
			<p class="style61">Louis Porreca</p>
			<p class="style61">JoAnn Desilets (Jen &amp; Mark)</p>
			<p class="style61">Bill &amp; <font face="Arial" size="2">
			George-Ann Ferguson</font></p>
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td></tr></table>

						
			<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 171px" class="style52">
			<br />
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/highpraise2.jpg" target="_blank">
			<img height="213" src="PHOTOGALLERY%20AVAIL%20DOGS/highpraise1.jpg" width="149" class="style30" /></a></td>
			<td width="130" bgcolor="#c3d2ed" class="style8"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">High Praise 
			"Rachael"</td>
		</tr>
		<tr>
			<td class="style8">Date of Birth:</td>
			<td width="201" class="style8">5/23/2010</td>
		</tr>
		<tr>
			<td class="style8">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8">Weight:</td>
			<td width="201" class="style8">70</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px">Color:</td>
			<td width="201" class="style8" style="height: 24px">Dark Fawn</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px">Personality/more info:</td>
			<td width="201" class="auto-style92" style="height: 22px">
			additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/HighPraise3.jpg" target="_blank">
			pic</a></td>
		</tr>
		<tr>
			<td class="style8">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">&nbsp;<font face="Arial" size="2">Michelle &amp; Lou 
			Sposato</font></p>
			<p class="style61"><font face="Arial" size="2">Pam Follett</font></p>
			<p class="style61"><font face="Arial" size="2">
			Jeanne Guerra</font></p>
			<p class="style61"><font face="Arial" size="2">
			Bonnie Leggett</font></p>
			<p class="style61"><font face="Arial" size="2">
			Lyman H.S. Journalism Club</font></p>
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td></tr>
		</table>

	<table width="504" border="1">
		<tr>
			<td width="151" rowspan="9">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/hkkcashmein2.jpg" target="_blank">
			<img class="style30" height="209" src="PHOTOGALLERY%20AVAIL%20DOGS/hkkcashmein1.jpg" width="170" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			HKK Cashmein "Cash"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">3/24/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">72</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red Fawn</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Michelle &amp; Lou Sposato</p>
			<p class="style61">Lisa Porreca</p>
			<p class="style61">Karen A. Klein</p>
			<p class="style61">John &amp; Patricia Dixon in Loving Memory of Jolene</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
			
								
	

	

						

	

				<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 170px">
			<a target="_blank" href="PHOTOGALLERY%20AVAIL%20DOGS/irsturbotax2.jpg">
			<img src="PHOTOGALLERY%20AVAIL%20DOGS/irsturbotax1.jpg" width="167" height="117" class="style30" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 134px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">IRS Turbo Tax 
			"Turbo"</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Date of Birth:</td>
			<td width="201" class="style8" style="height: 22px">4/28/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Weight:</td>
			<td width="201" class="style8">75</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Color:</td>
			<td width="201" class="style8">Red Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px; height: 25px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 25px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Personality/more info:</td>
			<td width="201" class="auto-style109">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/IRSTurboTax3.jpg" target="_blank">
			pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Sponsored by:</td>
			<td width="201" class="style8">Susan Kastrinos<br />
			Lisa Porreca<br />
			Tom &amp; Linda Reagan<br />
			Frilly Frocks &amp; Polliwogs<br />
			Jody Nichols Mohr<br />
			<a href="sponsorform.html">Click 
			here to sponsor me</a></td>
		</tr>
	</table>

	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 164px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/izzourhurricane1.jpg" target="_blank">
			<img src="PHOTOGALLERY%20AVAIL%20DOGS/izzourhurricane.jpg" width="172" height="211" class="style30" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="height: 22px; width: 134px;"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Izzour Hurricane "Hurricane"</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Date of Birth:</td>
			<td width="201" class="style8" style="height: 22px">10/28/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Color:</td>
			<td width="201" class="style8" style="height: 22px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Personality/more info:</td>
			<td width="201" class="style8">This slightly shy boy needs that 
			special home where he can feel secure and let his true personality 
			blossom. He loves to play with other dogs.</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Sponsored by:</td>
			<td width="201" class="style8">
			Vince Chesterfield<br />
			John Miles<br />
			Virginia Greyhound Adoption<br />
			Jamie Mercer<br />
			Lisa Nash<br />
			Jennifer Ross Gildee<br />
			Angela &amp; Tracy George<br />
			<a href="sponsorform.html">Click 
			here to sponsor me</a></td>
		</tr>
	</table>
	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 176px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/jawavirgo2.jpg" target="_blank">
			<img src="PHOTOGALLERY%20AVAIL%20DOGS/jawavirgo1.jpg" width="154" height="211" class="style30" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="height: 22px; width: 134px;"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Jawa Virgo "Virgo"</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Date of Birth:</td>
			<td width="201" class="style8" style="height: 22px">8/7/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Weight:</td>
			<td width="201" class="style8">61</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Color:</td>
			<td width="201" class="style8" style="height: 22px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px; height: 22px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 134px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Personality/more info:</td>
			<td width="201" class="auto-style92">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/JawaVirgo3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 134px">Sponsored by:</td>
			<td width="201" class="style8">
			Jeanne Guerra<br />
			Kristen Park<br />
			Rosemarie Pena<br />
			Enid Goodman<br />
			<a href="sponsorform.html">Click 
			here to sponsor me</a></td>
		</tr>
	</table>

	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 170px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/jdmaddmaxx2.jpg" target="_blank">
			<img class="style30" height="242" src="PHOTOGALLERY%20AVAIL%20DOGS/jdmaddmaxx1.jpg" width="169" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			JD Madd Maxx "Maxx"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">8/20/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">61</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8"><span class="auto-style115">ADOPTION 
			PENDING<b><br />
			</b></span><span class="auto-style100">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/jdmaddmaxx3.jpg" target="_blank">pic</a></span></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="auto-style104"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 173px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/justsayingnot2.jpg" target="_blank">
			<img class="style30" height="233" src="PHOTOGALLERY%20AVAIL%20DOGS/justsayingnot1.jpg" width="158" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Just Saying Not "Sadie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">8/7/2012</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 25px;">Gender:</td>
			<td width="201" class="style8" style="height: 25px">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8"><span class="auto-style100">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/justsayingnot3.jpg" target="_blank">pic</a></span></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Randi Brooks &amp; John Upperco</p>
			<font face="Arial" size="2">
			<p class="style61">Dan &amp; Carol Ann Mekker</p>
			<p class="style61">Lori &amp; Aidan Van Duyne</p>
			<p class="style61">Linda Fishkind</p>
			<p class="style61">Jan &amp; Bill Gillies in memory of Staci, Bitsy, 
			April, &amp; Abbott</p>
			</font>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 178px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/kb'smoneypower2a.jpg" target="_blank">
			<img class="style30" height="233" src="PHOTOGALLERY%20AVAIL%20DOGS/kb'smoneypower1a.jpg" width="132" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			KB's Money Power "Ice"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">8/4/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 25px;">Gender:</td>
			<td width="201" class="style8" style="height: 25px">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="auto-style45">ADOPTION PENDING</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Jon Jeffreys</p>
			<p class="style61">Katherine Newsum</p>
			<p class="style61">Lauren Phelps</p>
			<p class="style61">Bob &amp; Cheryl Carlin</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

			
						
			
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 165px" class="style75">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/kelly'sgrace2.jpg" target="_blank">
			<img class="style30" height="181" src="PHOTOGALLERY%20AVAIL%20DOGS/kelly'sgrace1.jpg" width="170" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 135px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Kelly's Grace 
			"Gracie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Date of Birth:</td>
			<td width="201" class="style8">5/29/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="height: 15px; width: 135px;">Weight:</td>
			<td width="201" class="style8" style="height: 15px">60</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px; height: 22px;">Color:</td>
			<td width="201" class="style8" style="height: 22px">White &amp; Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Personality/more info:</td>
			<td width="201" class="style8">Michaels Family (In Loving Memory of 
			Abita)<p class="style61">Frilly Frocks &amp; Polliwogs</p>
			<p class="style61">Lisa Nash</p>
			<p class="style61">Jeanne Guerra</p>
			<p class="style61">Gary Schaffer</p>
			</td>
			
		</tr>
		<tr>
			<td class="style8" style="width: 135px">Sponsored by:</td>
			<td width="201" class="style8">
			<font face="Arial" size="2">
			<p class="style61">
			<a href="sponsorform.html">Click here to 
			sponsor me 		
			</a></font></p>
			</td></tr></table>

				
		<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 159px" class="style75">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/Killer_Link_2.jpg" target="_blank">
<img height="207" src="PHOTOGALLERY%20AVAIL%20DOGS/Killer_Link_1.jpg" width="173" /><br />
			</td>
			<td bgcolor="#c3d2ed" class="style8" style="height: 10px; width: 137px;">
			<strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="style8" style="height: 10px">
			<strong>Killer Link "Link"</strong></td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Date of Birth:</td>
			<td width="201" class="style8">10/24/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px; height: 22px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Color:</td>
			<td width="201" class="style8">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Home acclimated:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Personality/more info:</td>
			<td width="201" class="style8">Somewhat reserved at first, but once he warms up to 
			you, he's one happy, loveable pup.<i><br />
			additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/Killer_Link_3.jpg" target="_blank">pic</a></i></td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Sponsored by:</td>
			<td width="201" class="style8">
			<font face="Arial" size="2">
			<font size="2" class="style53">
			<font class="style23">
			</font></font>
			<p class="style61">Vince Chesterfield</p>
			<p class="style61">Kristen Park</p>
			<p class="style61">Gail Smith in Memory of Tom &amp; Jill</p>
			<p class="style61"><span class="style48">
			<font color="#000000" class="style71">Wendy Allison</font></span></p>
			<p class="style61">Lauren Phelps</p>
			<p class="style61">James Rees</p>
			<p class="style61">Judith Royal</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me 
			</a></font></p>
			</td>
		</tr>
		
	</table><table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 180px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/kiowafalcon2.jpg" target="_blank">
			<img class="style30" height="196" src="PHOTOGALLERY%20AVAIL%20DOGS/kiowafalcon1.jpg" width="164" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Kiowa Falcon "Falcon"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">11/23/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">70</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Dark Fawn</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8"><span class="auto-style100">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/kiowafalcon3.jpg" target="_blank">pic</a></span></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Loretta Ames</p>
			<font face="Arial" size="2">
			<p class="style61">Greyhound Angel Network</p>
			<p class="style61">Michaels Family (In Loving Memory of Abita)</p>
			<p class="style61">Cari Lewis</p>
			<p class="style61">Frilly Frocks &amp; Polliwogs</p>
			</font>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 180px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/kiowamorris2.jpg" target="_blank">
			<img class="style30" height="190" src="PHOTOGALLERY%20AVAIL%20DOGS/kiowamorris1.jpg" width="174" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Kiowa Morris "Morris"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">7/28/2012</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">65</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Michael &amp; Carol La Mothe</p>
			<p class="style61">Robin Knudsen</p>
			<p class="style61">Pam Davis</p>
			<p class="style61">Patricia &amp; John Dixon (In Loving Memory of 
			Jolene)</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 180px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/l'szakaryscott2.jpg" target="_blank">
			<img class="style30" height="190" src="PHOTOGALLERY%20AVAIL%20DOGS/l'szakaryscott1.jpg" width="174" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			L's Zakaryscott "Zak"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">10/7/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">71</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/L'sZakaryScott3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Melinda Simmons</p>
			<p class="style61">Gary Schaffer</p>
			<p class="style61">Jeanne Guerra</p>
			<p class="style61">Greyhound Angel Network</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 175px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/myscottishgal2.jpg" target="_blank">
			<img class="style30" height="122" src="PHOTOGALLERY%20AVAIL%20DOGS/myscottishgal1.jpg" width="171" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			My Scottish Gal "Scottie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 23px;">Date of Birth:</td>
			<td width="201" class="style8" style="height: 23px">8/30/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8" style="height: 22px">Sister to My 
			Lucky Lass<br />
			<span class="auto-style100">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/MyScottishGal3.jpg" target="_blank">
			pic</a></span></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Jim &amp; Beth Jordan</p>
			<p class="style61">Lynda Radecki</p>
			<p class="style61"><font size="2">Michaels Family (In Loving Memory of Abita)</font></p>
			<p class="style61"><font size="2">Pam Davis</font></p>
			<p class="style61"><font size="2">Jeanne Guerra</font></p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 175px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/nbs looter2.jpg" target="_blank">
			<img class="style30" height="227" src="PHOTOGALLERY%20AVAIL%20DOGS/nbslooter1.jpg" width="168" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			NB's Looter "Lootie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 23px;">Date of Birth:</td>
			<td width="201" class="style8" style="height: 23px">7/25/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Weight:</td>
			<td width="201" class="style8" style="height: 22px">75</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8" style="height: 22px">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Inga Hammond</p>
			<p class="style61">Patricia Tillman</p>
			<p class="style61">Greg Green</p>
			<p class="style61">Adrian Tibbetts</p>
			<p class="style61">Denise Dudek (In Memory of ICU Freedom)</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

				
				<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 164px" class="style52">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/oyablu2.jpg" target="_blank">
			<img class="style30" height="229" src="PHOTOGALLERY%20AVAIL%20DOGS/oyablu1.jpg" width="170" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 136px; height: 25px;"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 25px">
			O Ya Blu "Blu"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Date of Birth:</td>
			<td width="201" class="style8">5/6/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Color:</td>
			<td width="201" class="style8">Fawn</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Personality/more info:</td>
			<td width="201" class="auto-style92">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/OYaBlu3.jpg" target="_blank">
			pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">Vince Chesterfield</p>
			<p class="style61">John Miles</p>
			<p class="style61">Alice Moore</p>
			<p class="style61">Katherine &amp; Cliff Newsum</p>
			<p class="style61">Gary Schaffer</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me</a>
			</p>
			</td>
			</tr>
			</table>


	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 164px" class="style52">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/oyaharddrive2.jpg" target="_blank">
			<img class="style30" height="219" src="PHOTOGALLERY%20AVAIL%20DOGS/oyaharddrive1.jpg" width="175" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 136px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">O Ya 
			Hard Drive "Driver"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Date of Birth:</td>
			<td width="201" class="style8">2/15/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Color:</td>
			<td width="201" class="style8">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Cat friendly:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px; height: 25px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 25px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Personality/more info:</td>
			<td width="201" class="auto-style45">ADOPTION PENDING</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">Dee Harding</p>
			<p class="style61">Tom &amp; Linda Reagan</p>
			<p class="style61">Lisa Nash</p>
			<p class="style61">Kim Little</p>
			<p class="style61">Nancy Emerton</p>
			<p class="style61">Mary Walton</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me</a>
			</p>
			</td>
			</tr>
			</table>

<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 164px" class="style52">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/oyaboogiewoogie2.jpg" target="_blank">
			<img class="style30" height="219" src="PHOTOGALLERY%20AVAIL%20DOGS/oyaboogiewoogie1.jpg" width="175" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 136px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Oya 
			Boogiewoogie "Boogie Woogie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Date of Birth:</td>
			<td width="201" class="style8">4/5/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Color:</td>
			<td width="201" class="style8">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Cat friendly:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px; height: 25px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 25px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Personality/more info:</td>
			<td width="201" class="auto-style45">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 136px">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">Deborah Alexander (In Memory of Brenda &amp; Fred 
			Atkins)</p>
			<p class="style61">Kimberly Bumgarner</p>
			<p class="style61">Richard &amp; Linda Visnov</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me</a>
			</p>
			</td>
			</tr>
			</table>

	
	
		

						

		
							
	
	
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 177px" class="style52">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/pb'scurtislo2.jpg" target="_blank">
			<img src="PHOTOGALLERY%20AVAIL%20DOGS/pb'scurtislo1.jpg" width="157" height="253" class="style30" /></a>&nbsp;<br />
			</td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 137px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">PB's Curtis 
			Lo "Curtis"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Date of Birth:</td>
			<td width="201" class="style8">6/7/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px; width: 137px;">Color:</td>
			<td width="201" class="style8" style="height: 24px">Fawn Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Cat friendly:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 13px; width: 137px;">Personality/more info:</td>
			<td width="201" class="style8" style="height: 13px"></td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Sponsored by:</td>
			<td width="201" class="style8">
			<font face="Arial" size="2">
			<p class="style61">Ena Carsello (In Memory of Jack Tanner)</p>
			<p class="style61">Jeanne Guerra</p>
			<p class="style61">John &amp; Sandy Giglietta</p>
			<p class="style61">Richard &amp; Linda Visnov</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me </a>
			</font></p>
			</td>
	</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 177px" class="style52">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/pgsmokie2.jpg" target="_blank">
			<img src="PHOTOGALLERY%20AVAIL%20DOGS/pgsmokie1.jpg" width="157" height="253" class="style30" /></a>&nbsp;<br />
			</td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 137px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">PG Smokie 
			"Smokie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px; height: 22px;">Date of Birth:</td>
			<td width="201" class="style8" style="height: 22px">10/25/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Gender:</td>
			<td width="201" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Weight:</td>
			<td width="201" class="style8">63</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px; width: 137px;">Color:</td>
			<td width="201" class="style8" style="height: 24px">Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Cat friendly:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Home acclimated:</td>
			<td width="201" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="height: 13px; width: 137px;">Personality/more info:</td>
			<td width="201" class="style8" style="height: 13px"></td>
		</tr>
		<tr>
			<td class="style8" style="width: 137px">Sponsored by:</td>
			<td width="201" class="style8">
			<font face="Arial" size="2">
			<p class="style61">Pam Follett</p>
			<p class="style61">Patricia Tillman</p>
			<p class="style61">Mike &amp; Carol Wyckoff</p>
			<p class="style61">Dawn Roelofs</p>
			<p class="style61">Catherine Hanratty</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me </a>
			</font></p>
			</td>
	</tr>
	</table>

	

	
		
	

			
	

			
	


	
	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 168px" class="style52">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/Regall%20Cruze%201.jpg" target="_blank">
			<img class="style30" height="231" src="PHOTOGALLERY%20AVAIL%20DOGS/Regall%20Cruze.jpg" width="180" /></a>&nbsp;</td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 133px"><strong>Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17">Regall Cruze "Rex"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 133px">Date of Birth:</td>
			<td width="201" class="style8">4/1/2008</td>
		</tr>
		<tr>
			<td class="style8" style="width: 133px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 133px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="height: 24px; width: 133px;">Color:</td>
			<td width="201" class="style8" style="height: 24px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="height: 22px; width: 133px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 133px">Home acclimated:</td>
			<td width="201" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="height: 38px; width: 133px;">Personality/more info:</td>
			<td width="201" class="auto-style45" style="height: 38px">ADOPTION PENDING</td>
		</tr>
		<tr>
			<td class="style8" style="height: 57px; width: 133px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 57px">
			<p class="style61"><font face="Arial" size="2">
			<a href="sponsorform.html">Click here to sponsor me </a></font></p>
			</td>
		</tr>
	</table>
	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 185px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/roadtested2.jpg" target="_blank">
			<img class="style30" height="202" src="PHOTOGALLERY%20AVAIL%20DOGS/roadtested1.jpg" width="172" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Road Tested "Roady"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">4/17/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Gender:</td>
			<td width="201" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">67</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">John &amp; Patricia Dixon in Loving Memory of Jolene</p>
			<font face="Arial" size="2">
			<p class="style61">Melinda Simmons</p>
			<p class="style61">Jeanne Guerra</p>
			<p class="style61">Gary Schaffer</p>
			</font>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

	


		
		<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 103px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/speedhazard2.jpg" target="_blank">
			<img class="style30" height="231" src="PHOTOGALLERY%20AVAIL%20DOGS/speedhazard1.jpg" width="181" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 143px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="177" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">Speed Hazard 
			"Harley"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px">Date of Birth</td>
			<td width="177" class="style8">
			4/24/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px">Gender:</td>
			<td width="177" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px">Weight:</td>
			<td width="177" class="style8">67&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px">Color:</td>
			<td width="177" class="style8">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px">Cat Friendly</td>
			<td width="177" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px; height: 22px;">Home acclimated:</td>
			<td width="177" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px; height: 21px;">Personality/more info:</td>
			<td width="201" class="style8"><em>additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/speedhazard3.jpg" target="_blank">pic</a></em></td>
		</tr>
		<tr>
			<td class="style8" style="width: 143px;">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">Virginia Greyhound Adoption</p>
			<p class="style61">Tom &amp; Linda Reagan</p>
			<p class="style61">Lisa Nash</p>
			<p class="style61">Louis Porreca</p>
			<p class="style61">Susan Kastrinos</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me</a>
			</p>
			</td>
		</tr>
	</table>
	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 103px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/standupchuck2.jpg" target="_blank">
			<img class="style30" height="196" src="PHOTOGALLERY%20AVAIL%20DOGS/standupchuck1.jpg" width="177" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 147px"><strong>
			Name:</strong></td>
			<td width="177" bgcolor="#c3d2ed" class="auto-style17">Stand Up 
			Chuck "Chucky"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px">Date of Birth</td>
			<td width="177" class="style8">
			3/7/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px">Gender:</td>
			<td width="177" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px">Weight:</td>
			<td width="177" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px">Color:</td>
			<td width="177" class="style8">Red Fawn</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px">Cat Friendly</td>
			<td width="177" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px">Home acclimated:</td>
			<td width="177" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px; height: 20px;">Personality/more info:</td>
			<td width="201" class="auto-style125">ADOPTED </td>
		</tr>
		<tr>
			<td class="style8" style="width: 147px;">Sponsored by:</td>
			<td width="201" class="style8">
			<p class="style61">Lori &amp; Aidan Van Duyne</p>
			<p class="style61">Elaine Lamphere</p>
			<p class="style61">Jeanne Guerra</p>
			<p class="style61">Deborah Alexander (In Memory of Telly, Ben, Rega, 
			&amp; Slate)</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor me</a>
			</p>
			</td>
		</tr>
	</table>

	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 103px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/starzbigmemory2.jpg" target="_blank">
			<img class="style30" height="217" src="PHOTOGALLERY%20AVAIL%20DOGS/starzbigmemory1.jpg" width="179" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 145px"><strong>
			Name:</strong></td>
			<td width="177" bgcolor="#c3d2ed" class="auto-style17">Starz Big 
			Memory "Memory"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Date of Birth</td>
			<td width="177" class="style8">
			4/24/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Gender:</td>
			<td width="177" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 22px;">Weight:</td>
			<td width="177" class="style8" style="height: 22px">65&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Color:</td>
			<td width="177" class="style8">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 22px;">Cat Friendly</td>
			<td width="177" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Home acclimated:</td>
			<td width="177" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 20px;">Personality/more info:</td>
			<td width="177" class="style8" style="height: 20px">
			A real sweetie-pie with "cover girl" beauty.<br />
			<i>additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/starzbigmemory3.jpg" target="_blank">pic</a></i></i></td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 38px">
			Frilly Frocks &amp; Polliwogs<br />
			Alicia &amp; Ryan McGinnis<br />
			Jeanne Guerra<br />
			Alice Moore<br />
			Vince Chesterfield<br />
			<a href="sponsorform.html">Click here to sponsor me</a></td>
		</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 103px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/tjphilharmonic2.jpg" target="_blank">
			<img class="style30" height="217" src="PHOTOGALLERY%20AVAIL%20DOGS/tjphilharmonic1.jpg" width="179" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 145px"><strong>
			Name:</strong></td>
			<td width="177" bgcolor="#c3d2ed" class="auto-style17">TJ 
			Philharmonic "Philly"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Date of Birth</td>
			<td width="177" class="style8">
			11/24/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Gender:</td>
			<td width="177" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 22px;">Weight:</td>
			<td width="177" class="style8" style="height: 22px">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Color:</td>
			<td width="177" class="style8">White Ticked Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 22px;">Cat Friendly</td>
			<td width="177" class="style8" style="height: 22px">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Home acclimated:</td>
			<td width="177" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 20px;">Personality/more info:</td>
			<td width="177" class="style8" style="height: 20px">
			</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 38px">
			Jeff &amp; Linda Kish (In Memory of Kader)<br />
			Virginia Greyhound Adoption<br />
			VInce Chesterfield<br />
			Kim Jackson<br />
			<a href="sponsorform.html">Click here to sponsor me</a></td>
		</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 103px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/vans%20tiznow%20body.jpg" target="_blank">
			<img class="style30" height="147" src="PHOTOGALLERY%20AVAIL%20DOGS/vans%20tiznow%20head.jpg" width="187" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 145px"><strong>
			Name:</strong></td>
			<td width="177" bgcolor="#c3d2ed" class="auto-style17">Van's Tiznow 
			"Duke"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Date of Birth</td>
			<td width="177" class="style8">
			4/9/2007</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Gender:</td>
			<td width="177" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 22px;">Weight:</td>
			<td width="177" class="style8" style="height: 22px">71</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Color:</td>
			<td width="177" class="style8">Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 22px;">Cat Friendly</td>
			<td width="177" class="style8" style="height: 22px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px">Home acclimated:</td>
			<td width="177" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px; height: 20px;">Personality/more info:</td>
			<td width="177" class="auto-style92" style="height: 20px">
			additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/Vans%20Tiznow%20body%202.JPG" target="_blank">
			pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 145px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 38px">
			<a href="sponsorform.html">Click here to sponsor me</a></td>
		</tr>
	</table>

	
	<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 186px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/whiskeydreams2.jpg" target="_blank">
			<img class="style30" height="217" src="PHOTOGALLERY%20AVAIL%20DOGS/whiskeydreams1.jpg" width="157" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Whiskey Dreams "Whiskey"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">10/7/2010</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">72</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Rosemarie Pena</p>
			<p class="style61">Lori &amp; <font size="2">Aidan Van Duyne</font></p>
			<p class="style61"><font size="2">Virginia Greyhound Adoption</font></p>
			<p class="style61"><font size="2">Michelle Ridlon</font></p>
			<p class="style61"><font size="2">David Kirkpatrick</font></p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 181px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/wildtornado2.jpg" target="_blank">
			<img class="style30" height="213" src="PHOTOGALLERY%20AVAIL%20DOGS/wildtornado1.jpg" width="179" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Wild Tornado "Tornado"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">6/12/2012</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">White &amp; Red</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Katherine Newsum</p>
			<p class="style61">Alicia &amp; Ryan McGinnis</p>
			<p class="style61">Loretta Ames</p>
			<p class="style61">Alic Moore</p>
			<p class="style61">Patricia &amp; John Dixon (In Loving Memory of 
			Jolene)</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>






	




	
	
		
	
	    
    	
	    
    
    
    <table width="504" border="1">
		<tr>
			<td rowspan="9" class="style52" style="width: 103px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/Won_More_Victory_1.jpg" target="_blank">
			<img class="style30" height="215" src="PHOTOGALLERY%20AVAIL%20DOGS/Won_More_Victory.jpg" width="175" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 132px"><strong>
			Name:</strong></td>
			<td width="171" bgcolor="#c3d2ed" class="auto-style17">Won More 
			Victory "Victory"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Date of Birth:</td>
			<td width="171" class="style8">1/23/2008</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Gender:</td>
			<td width="171" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Weight:</td>
			<td width="171" class="style8">72</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px; height: 22px;">Color:</td>
			<td width="171" class="style8" style="height: 22px">Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Cat friendly:</td>
			<td width="171" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Home acclimated:</td>
			<td width="171" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Personality/more info:</td>
			<td width="171" class="style8">The definition of "extrovert," this energetic boy will keep you constantly entertained!<br />
			<i>additional
			<a class="style32" href="PHOTOGALLERY%20AVAIL%20DOGS/Victory.htm" target="_blank">
			info</a><br />
			additional
			<a class="style32" href="PHOTOGALLERY%20AVAIL%20DOGS/WonMoreVictoryEating.jpg" target="_blank">pic</a></i></i></td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Sponsored by:</td>
			<td width="171" class="style8">
			<font face="Arial" size="2">
			<span class="style60">
			<font class="style23"><font class="style71"><span LANG="EN">
			<span class="style48">
			<font class="style23">
			</font></span></span></font></font></span></font>
			<p class="style61">Vince Chesterfield</p>
			<p class="style61">Tom &amp; Linda Reagan</p>
			<p class="style61"><font size="2" class="style53">
			<font class="style23"><span class="style61">Virginia Greyhound Adoption</span></font></font></p>
			<p class="style61"><font size="2">Paul &amp; Kim Lueders</font></p>
			<p class="style61"><font size="2">Linda Fishkind</font></p>
			<p class="style61"><font size="2">Melinda Simmons</font></p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
    </div>
    </table>
    <table width="504" border="1">
		<tr>
			<td rowspan="9" class="style52" style="width: 173px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/wwskaydime2.jpg" target="_blank">
			<img class="style30" height="215" src="PHOTOGALLERY%20AVAIL%20DOGS/wwskaydime1.jpg" width="129" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 132px"><strong>
			Name:</strong></td>
			<td width="171" bgcolor="#c3d2ed" class="auto-style17">WW's Kay Dime 
			"Kay"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Date of Birth:</td>
			<td width="171" class="style8">10/6/2009</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Gender:</td>
			<td width="171" class="style8">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px; height: 24px;">Weight:</td>
			<td width="171" class="style8" style="height: 24px"></td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px; height: 22px;">Color:</td>
			<td width="171" class="style8" style="height: 22px">White Ticked Black</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Cat friendly:</td>
			<td width="171" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Home acclimated:</td>
			<td width="171" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Personality/more info:</td>
			<td width="171" class="auto-style92">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/WWsKaydime3.jpg" target="_blank">pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px; height: 25px;">Sponsored by:</td>
			<td width="171" class="style8" style="height: 25px">
			<font face="Arial" size="2">
			<span class="style60">
			<font class="style23"><font class="style71"><span LANG="EN">
			<span class="style48">
			<font class="style23">
			</font></span></span></font></font></span></font>
			<p class="style61">Joann Tyson</p>
			<p class="style61">Sue Barker</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
    </div>
    </table>
<table width="504" border="1">
		<tr>
			<td rowspan="9" class="style52" style="width: 174px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/wwsnomoretears2.jpg" target="_blank">
			<img class="style30" height="193" src="PHOTOGALLERY%20AVAIL%20DOGS/wwsnomoretears1.jpg" width="169" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 132px"><strong>
			Name:</strong></td>
			<td width="171" bgcolor="#c3d2ed" class="auto-style17">WW's 
			Nomoretears "Maury"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Date of Birth:</td>
			<td width="171" class="style8">6/1/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Gender:</td>
			<td width="171" class="style8">Male</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Weight:</td>
			<td width="171" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px; height: 22px;">Color:</td>
			<td width="171" class="style8" style="height: 22px">Dark Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Cat friendly:</td>
			<td width="171" class="style8">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Home acclimated:</td>
			<td width="171" class="style8">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Personality/more info:</td>
			<td width="171" class="style8">&nbsp;</td>
		</tr>
		<tr>
			<td class="style8" style="width: 132px">Sponsored by:</td>
			<td width="171" class="style8">
			<font face="Arial" size="2">
			<span class="style60">
			<font class="style23"><font class="style71"><span LANG="EN">
			<span class="style48">
			<font class="style23">
			</font></span></span></font></font></span></font>
			<p class="style61">Joann Tyson</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
			</td>
    </div>
    </table>

<table width="504" border="1">
		<tr>
			<td rowspan="9" style="width: 179px">
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/yahooelsie2.jpg" target="_blank">
			<img class="style30" height="182" src="PHOTOGALLERY%20AVAIL%20DOGS/yahooelsie1.jpg" width="172" /></a></td>
			<td bgcolor="#c3d2ed" class="style8" style="width: 141px; height: 22px;"><strong>
			Name:</strong></td>
			<td width="201" bgcolor="#c3d2ed" class="auto-style17" style="height: 22px">
			Yahoo Elsie "Elsie"</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Date of Birth:</td>
			<td width="201" class="style8">9/19/2011</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Gender:</td>
			<td width="201" class="style8" style="height: 22px">Female</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px">Weight:</td>
			<td width="201" class="style8">55</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 16px;">Color:</td>
			<td width="201" class="style8" style="height: 16px">Brindle</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 18px;">Cat friendly:</td>
			<td width="201" class="style8" style="height: 18px">Yes</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Home acclimated:</td>
			<td width="201" class="style8" style="height: 22px">No</td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 22px;">Personality/more info:</td>
			<td width="201" class="auto-style92">additional
			<a href="PHOTOGALLERY%20AVAIL%20DOGS/YahooElsie3.jpg" target="_blank">
			pic</a></td>
		</tr>
		<tr>
			<td class="style8" style="width: 141px; height: 21px;">Sponsored by:</td>
			<td width="201" class="style8" style="height: 21px">
			<p class="style61">Kim Little</p>
			<p class="style61">Peggy Stastny</p>
			<p class="style61">Linda Fishkind</p>
			<p class="style61">Shari O'Brien, Ontario, Canada</p>
			<p class="style61"><a href="sponsorform.html">Click here to sponsor 
			me</a></p>
</td>
			</tr>
	</table>

    
	    
    
    
                



    
	

		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />

<br>
	</div>

<%-- <jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request"/>
<table>

<c:forEach var="greyhound" items="${facade.greyhounds}">

<tr>
<td>${greyhound.name}</td>
<td>${greyhound.dateOfBirth}</td>
<td>${greyhound.gender}</td>
<td>${greyhound.weight}</td>
</tr>

</c:forEach>
</table> --%>

</body>
</html>






