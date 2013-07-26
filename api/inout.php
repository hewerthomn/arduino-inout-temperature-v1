<?php
header('Cache-Control: no-cache, must-revalidate');
header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');
header('Content-type: application/json');

require 'config.php';

$log    = array();
$logger = new InOut();

if (isset($_GET['T']) && isset($_GET['H']) && isset($_GET['D'])) {

    $log = array(
        'temp_interna'      => $_GET['T'],
        'humidity_interna'  => $_GET['H'],
        'dew_point_interna' => $_GET['D']
    );

    $data = Temperature::get();

    if ($data['temp'] > 0) {
        $log['temp_externa'] = $data['temp'];
        $log['humidity_externa'] = $data['humidity'];
        $log['dew_point_externa'] = Temperature::dew_point($data['temp'], $data['humidity']);

        $r = $logger->save( $log );
    }

    $result = "<{$data['city']}|{$data['humidity']} {$data['temp']}|{$data['time']}>";

    die($result);
}
