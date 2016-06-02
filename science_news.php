<?php
#categories.php

# '../' works for a sub-folder.  use './' for the root  
require '../inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials 
 
# SQL statement
#$sql = "select Category, CategoryID, Description from Categories";
$sql = "select LinkID, URL, Category, CategoryID, Description from Feed";

#Fills <title> tag. If left empty will default to $PageTitle in config_inc.php  
$config->titleTag = 'Newsfeed RSS App';

#Fills <meta> tags.  Currently we're adding to the existing meta tags in config_inc.php
$config->metaDescription = 'Seattle Central\'s ITC250 News Feed Links are made with pure PHP! ' . $config->metaDescription;
$config->metaKeywords = 'Links,PHP,Fun,Regular Expressions,'. $config->metaKeywords;


# END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>

<h3 align="center">SCIENCE NEWS</h3>

<?php

# connection comes first in mysqli (improved) function
$result = mysqli_query(IDB::conn(),$sql) or die(trigger_error(mysqli_error(IDB::conn()), E_USER_ERROR));

if(mysqli_num_rows($result) > 0)
{#records exist - process
    
	while($row = mysqli_fetch_assoc($result))
	{# process each row

        
        if($row['CategoryID'] == 1){
            echo '<div align="center"><a href="' . dbOut($row['URL']) . '">' . dbOut($row['Category']) . '</a></div>'; 
        }
        
        
	} 
    
  
}else{#no records
    echo "<div align=center>What! No links?  There must be a mistake!!</div>";	
}
@mysqli_free_result($result);
?> 
<br/><br/>
<p align="center"><a href="categories.php">back to categories</a></p>
<?
get_footer(); #defaults to theme footer or footer_inc.php
?>
