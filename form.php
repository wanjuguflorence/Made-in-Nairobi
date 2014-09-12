<?php
require_once('includes/MysqliDb.php');

$db = new MysqliDb('localhost', 'root', '', 'madeinnrb');

$message = '';

if(isset($_POST['submit'])){
	$data = $_POST['form'];
	$data['company_logo'] = $_FILES['company_logo']['name'];

	
	if ($_FILES["company_logo"]["error"] > 0) {

	} else {
		if (file_exists("uploads/" . $_FILES["company_logo"]["name"])) {

		} else {
		  move_uploaded_file($_FILES["company_logo"]["tmp_name"],
		  "uploads/" . $_FILES["company_logo"]["name"]);

		}
	}

	$id = $db->insert('startups', $data);
	
	if($id){
		$message = 'Company Added Successfully';
		header('location form.php');
	} else {
		$message = 'Failed adding record';
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Startups Upload form</title>
	<style type="text/css">
	form ul{
		list-style: none;;
		margin:0;
		padding:0;
	}
	form ul li{
		display: block;
	}
	form ul li label{
		font-weight: bolder;
		display: block;
	}
	form ul li input{
		display: block;
	}
    form ul li input[type=radio]{
		display: inline-block;
	}
        
	.form2{
		padding: 0.5em 1em;
		background-color: #E8EEF7;
	}
	form{
		margin: 0 auto;
		background: none repeat scroll 0% 0% #FFF;
margin: 0px auto;
border-right: 1px solid #BEBEBE;
border-left: 1px solid #BEBEBE;
text-align: left;
width: 25em;
height: 35m;
background-color: #fff;
border: 1px solid #ccc;
margin: 0 auto;
padding: 1em;
display: block;

	}

	span{
		color: #C43B1D;
		margin: 0px;
		padding: 0px;
		border: 0 none;
	}
	form ul li{
		margin:5px 0 10px 0;
	}
	</style>
</head>
<body class="form2">

<form action="" method="POST" enctype="multipart/form-data">
	<h1 class="form title">Made in Nairobi submission</h1>
	
    <?php if($message != ''): ?>
    <div class="error message"><?php echo $message; ?></div>
    <?php endif; ?>
	<p></p>

	<div class="Answer all"> Please answer the qualifying questions below</div>

	<div class="Required Risk"><span>* Required</span></div>
	
	<ul>
		<li>
			<label for="form_companyname">Company Name <span>*</span></label>
			<input type="text" name="form[company_name]" id="form_companyname" value="" placeholder="" />
		</li>

		<li>
			<label for="form_website">Company Website <span>*</span></label>
			<input type="text" name="form[website]" id="form_website" value="" placeholder="" />
		</li>
		<li>
			<label for="form_careers_page">Hiring url:</label>
			<input type="text" name="form[hiring_url]" id="form_careers_page" value="" placeholder="" />
		</li>

		<li>
			<label for="form_firstname">Contact First Name <span>*</span></label>
			<input type="text" name="form[firstname]" id="form_firstname" value="" placeholder="" />
		</li>

		<li>
			<label for="form_lastname">Contact Last Name <span>*</span></label>
			<input type="text" name="form[lastname]" id="form_lastname" value="" placeholder="" />
		</li>

		<li>
			<label for="form_email">Email Address <span>*</span></label>
			<input type="text" name="form[email]" id="form_email" value="" placeholder="" />
		</li>
		<li>
			<label for="form_hiring">Hiring? </label>
			<input type="radio" name="form[hiring]" id="form_hiring" value="1" placeholder="" /> Yes 
			<input type="radio" name="form[hiring]" id="form_hiring_no" value="0" placeholder="" checked /> No 
		</li>
        <li>
			<label for="form_logo">Company Logo <span>*</span></label>
			<input type="file" name="company_logo" id="form_logo" />
		</li>

	</ul>
	<input type="submit" value="Submit" name="submit" />
</form>

</body>
</html>