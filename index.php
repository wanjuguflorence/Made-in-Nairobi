<?php
require_once('includes/MysqliDb.php');

$db = new MysqliDb('localhost', 'root', '', 'madeinnrb');
$startups = $db->get('startups');

?>
<!DOCTYPE HTML>
<html>
<head>
   <title>Made in Nairobi</title>
   <link href="css/nairobi.css" rel="stylesheet" type="text/css" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
	<!--start of wrapper-->
	<?php include('expanding.php'); ?>
<article>
	
<ul class="startups clearfix listview">
	<?php foreach($startups as $startup): ?>
    <li>
    	<?php if($startup['hiring']): ?>
    	<a href="<?php echo $startup['hiring_url']; ?>" class="hiring" target="_BLANK">
    		<img src="images/hiring.png" alt="" />
    	</a>
        <?php endif; ?>

		<a href="<?php echo $startup['website']; ?>" target="_blank">
			<img src="uploads/<?php echo $startup['company_logo']; ?>" alt="<?php echo $startup['company_name'] ?>" />
		</a>
	</li>
    <?php endforeach; ?>
</ul>

</article>

	</div>
	<!--end of wrapper-->

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	console.log('we are good');
	$('#contact').slideUp(0);

	$('#want').click(function(){
		$('#contact').slideToggle(200);
	})
});
</script>
</body>
</html>