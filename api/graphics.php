<?php
require_once 'config.php';

$title  = "Arduino In/Out Temperature";
$today  = date("D, d F h:i");

$log    = array();
$inout  = new InOut();

if (isset($_GET['json'])) {
	header('Cache-Control: no-cache, must-revalidate');
	header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');
	header('Content-type: application/json');

    $date = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');

    switch ($_GET['json']) {
        case 'temp':
            die($inout->getTemperatures( $date ));
            break;

        case 'humidity':
            die($inout->getHumiditys( $date ));
            break;

        case 'dew_point':
            die($inout->getDewPoints( $date ));
            break;
    }
}
?><!DOCTYPE html>
<html>
<head>
	<title><?php echo $title . $today ?></title>
	<meta name="author" value="hewertho.mn">
	<meta http-equiv="refresh" content="300">
	<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
	<link href="http://netdna.bootstrapcdn.com/bootswatch/2.3.2/slate/bootstrap.min.css"rel="stylesheet" type="text/css" >
</head>
<body>
	<div class="container">
		<h1><?php echo $title ?></h1>
		<hr>
		<div class="row">
			<div class="span4">
				<h3><?php echo $today ?></h3>
			</div>
			<div class="span3">
				<br>
				<a class="btn btn-link btn-small" href="https://vimeo.com/70988658"><i class="icon-facetime-video"></i> vimeo.com/70988658</a>
			</div>
			<div class="span4">
				<form class="form-horizontal pull-right">
					<select class="span2" name="date">
						<?php foreach (Temperature::getDates() as $date): ?>
							<option value="<?php echo $date ?>" <?php echo $date == @$_GET['date'] ? 'selected' : '' ?>><?php echo date_format(date_create($date), 'd/m/Y') ?></option>
						<?php endforeach ?>
					</select>
					<input type="submit" class="btn btn-inverse" value="Ok">
				</form>
			</div>
		</div>

		<div class="well well-small">
			<div  id="chart_temp" style="width:100%; height: 100%"></div>
		</div>

		<div class="well well-small">
			<div id="chart_humidity" style="width:100%; height: 100%"></div>
		</div>

		<div class="well well-small">
			<div id="chart_dew_point" style="width:100%; height: 100%"></div>
			<a href="http://pt.wikipedia.org/wiki/Ponto_de_orvalho" target="_blank">Ponto de orvalho</a>
		</div>

		<a href="http://hewertho.mn" class="pull-right">hewertho.mn</a>
	</div>

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');ga('create', 'UA-42715915-1', 'hewertho.mn');ga('send', 'pageview');</script>
</body>
</html>