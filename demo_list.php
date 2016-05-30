<?php


# '../' works for a sub-folder.  use './' for the root  
require '../inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials 
 
# SQL statement
$sql = "select Category, CategoryID, Description from Categories";

#Fills <title> tag. If left empty will default to $PageTitle in config_inc.php  
$config->titleTag = 'Newsfeed RSS App';

#Fills <meta> tags.  Currently we're adding to the existing meta tags in config_inc.php
$config->metaDescription = 'Seattle Central\'s ITC280 Class Muffins are made with pure PHP! ' . $config->metaDescription;
$config->metaKeywords = 'Muffins,PHP,Fun,Bran,Regular,Regular Expressions,'. $config->metaKeywords;


# END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>
<h3 align="center"><?=smartTitle();?></h3>

<p><b>Welcome to the Newsfeed App</b></p>
<p>Below you will find categories and subcategories which return current news stories</p>
 <!--like <a href="<?php echo VIRTUAL_PATH; ?>demo_list.php">Muffins</a></p> -->
<?php

# connection comes first in mysqli (improved) function
$result = mysqli_query(IDB::conn(),$sql) or die(trigger_error(mysqli_error(IDB::conn()), E_USER_ERROR));

if(mysqli_num_rows($result) > 0)
{#records exist - process
	while($row = mysqli_fetch_assoc($result))
	{# process each row
         echo '<div align="center"><a href="' . VIRTUAL_PATH . 'demo/demo_view.php?id=' . (int)$row['CategoryID'] . '">' . dbOut($row['Category']) . '</a></div>';
         //echo ' <i>only</i> <font color="red">$' . //number_format((float)$row['Description'],2)  . '</font></div>';
        
 
	} 
}else{#no records
    echo "<div align=center>What! No links?  There must be a mistake!!</div>";	
}
@mysqli_free_result($result);

get_footer(); #defaults to theme footer or footer_inc.php
?>
