<?php


# '../' works for a sub-folder.  use './' for the root  
require '../inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials
 
# check variable of item passed in - if invalid data, forcibly redirect back to demo_list.php page
if(isset($_GET['id']) && (int)$_GET['id'] > 0){#proper data must be on querystring
	 $myID = (int)$_GET['id']; #Convert to integer, will equate to zero if fails
}else{
	myRedirect(VIRTUAL_PATH . "demo/demo_list.php");
}

//sql statement to select individual item
$sql = "select LinkID,Description,URL,CategoryID from Feed where CategoryID = " . $myID;
//---end config area --------------------------------------------------

$foundRecord = FALSE; # Will change to true, if record found!
   
# connection comes first in mysqli (improved) function
$result = mysqli_query(IDB::conn(),$sql) or die(trigger_error(mysqli_error(IDB::conn()), E_USER_ERROR));

if(mysqli_num_rows($result) > 0)
{#records exist - process
	   $foundRecord = TRUE;	
	   while ($row = mysqli_fetch_assoc($result))
	   {
			$LinkID = dbOut($row['LinkID']);
			$Description = dbOut($row['Description']);
			$URL = dbOut($row['URL']);
			$CategoryID = dbOut($row['CategoryID']);
	   }
}

@mysqli_free_result($result); # We're done with the data!

if($foundRecord)
{#only load data if record found
	$config->titleTag = $LinkID . " links made with PHP & love!"; #overwrite PageTitle with link info!
	#Fills <meta> tags.  Currently we're adding to the existing meta tags in config_inc.php
	$config->URL = $URL . ' Seattle Central\'s ITC280 Class links are made with pure PHP! ' . $config->URL;
	$config->CategoryID = $CategoryID . ',links,PHP,Fun,Bran,Regular,Regular Expressions,'. $config->CategoryID;
}

# END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>
<h3 align="center"><?=smartTitle();?></h3>

<p>This page displays the links for subcategories of news stories</p>

<?php
if($foundRecord)
{#records exist - show link!
?>
	<h3 align="center">A Yummy <?=$LinkID;?> link!</h3>
	<div align="center"><a href="<?=VIRTUAL_PATH;?>demo/demo_list.php">More links?!?</a></div>
	<table align="center">
		<tr>
			<td><img src="<?=VIRTUAL_PATH;?>upload/m<?=$myID;?>.jpg" /></td>
			<td>We make fresh <?=$LinkID;?> links daily!</td>
		</tr>
		<tr>
			<td colspan="2">
				<blockquote><?=$Description;?></blockquote>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<h3><i>ONLY!!:</i> <font color="red">$<?=number_format($Price,2);?></font></h3>
			</td>
		</tr>
	</table>
<?
}else{//no such link!
    echo '<div align="center">What! No such link? There must be a mistake!!</div>';
    echo '<div align="center"><a href="' . VIRTUAL_PATH . 'demo/demo_list.php">Another link?</a></div>';
}

get_footer(); #defaults to theme footer or footer_inc.php
?>
