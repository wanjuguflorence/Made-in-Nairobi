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

	<?php include('expanding.php'); ?>

	<article>
	
<ol>
	<?php foreach($startups as $startup): ?>
	<li>
		<a href="<?php echo $startup['website']; ?>" target="_blank"><?php echo $startup['company_name']; ?></a>
	</li>
	<?php endforeach; ?>
	
</ul>

</article>
</div>



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
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript">
		nytm.faq();
		nytm.lazyload();
	</script>

</body>
</html>