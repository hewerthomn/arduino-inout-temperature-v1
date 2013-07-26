<?php
class InOut {

	private $table = 'temperaturas';

	private $conn;

	public function __construct() {
		$this->conn = Connection::getInstance();
	}

	public function save($log = array()) {
		$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		try {

			$sql = "INSERT INTO {$this->table} (temp_interna, humidity_interna, dew_point_interna, temp_externa, humidity_externa, dew_point_externa, datahora)
					VALUES (:temp_interna, :humidity_interna, :dew_point_interna, :temp_externa, :humidity_externa, :dew_point_externa, :datahora);";

			$stmt = $this->conn->prepare($sql);
			$stmt->bindParam('temp_interna', $log['temp_interna'], PDO::PARAM_INT);
			$stmt->bindParam('humidity_interna', $log['humidity_interna'], PDO::PARAM_INT);
			$stmt->bindParam('dew_point_interna', $log['dew_point_interna']);
			$stmt->bindParam('temp_externa', $log['temp_externa'], PDO::PARAM_STR);
			$stmt->bindParam('humidity_externa', $log['humidity_externa']);
			$stmt->bindParam('dew_point_externa', $log['dew_point_externa']);
			$stmt->bindParam('datahora', date('y-m-d h:i:s'));

			return $stmt->execute();

		} catch (Exception $e) {
			echo $e->getMessage();
			return false;
		}
	}

	public function getTemperatures($date = null) {
		try {

			$date = ($date == null) ? date('Y-m-d') : $date;
			$sql = "SELECT temp_interna, temp_externa, DATE_FORMAT(datahora, '%k:%i') AS hora
					FROM {$this->table}
					WHERE DATE(datahora) = :datahora
					ORDER BY id";

			$stmt = $this->conn->prepare( $sql );
			$stmt->bindParam(':datahora', $date, PDO::PARAM_STR);

			if ($stmt->execute()) {
				$logs = $stmt->fetchAll(PDO::FETCH_OBJ);
			}

			$result = array();
			$result[] = array('Data/Hora', 'My Room', 'PVH');

			foreach ($logs as $key => $value) {

				$result[] = array(
					$value->hora,
					(int) $value->temp_interna,
					(int) $value->temp_externa
				);
			}

			return json_encode($result);

		} catch (Exception $e) {

			die( $e->getMessage() );
		}
	}

	public function getHumiditys($date = null) {
		try {

			$date = ($date == null) ? date('Y-m-d') : $date;
			$sql = "SELECT humidity_interna, humidity_externa, DATE_FORMAT(datahora, '%k:%i') AS hora
					FROM {$this->table}
					WHERE DATE(datahora) = :datahora
					ORDER BY id;";

			$stmt = $this->conn->prepare( $sql );
			$stmt->bindParam(':datahora', $date);

			if ($stmt->execute()) {
				$logs = $stmt->fetchAll(PDO::FETCH_OBJ);
			}

			$result = array();
			$result[] = array('Data/Hora', 'My Room', 'PVH');

			foreach ($logs as $key => $value) {

				$result[] = array(
					$value->hora,
					(int) $value->humidity_interna,
					(int) $value->humidity_externa
				);
			}

			return json_encode($result);

		} catch (Exception $e) {

			die( $e->getMessage() );
		}
	}

	public function getDewPoints($date = null) {
		try {

			$date = ($date == null) ? date('Y-m-d') : $date;
			$sql = "SELECT dew_point_interna, dew_point_externa, DATE_FORMAT(datahora, '%k:%i') AS hora
					FROM {$this->table}
					WHERE DATE(datahora) = :datahora
					ORDER BY id;";

			$stmt = $this->conn->prepare( $sql );
			$stmt->bindParam(':datahora', $date);

			if ($stmt->execute()) {
				$logs = $stmt->fetchAll(PDO::FETCH_OBJ);
			}

			$result = array();
			$result[] = array('Data/Hora', 'My Room', 'PVH');

			foreach ($logs as $key => $value) {

				$result[] = array(
					$value->hora,
					(int) $value->dew_point_interna,
					(int) $value->dew_point_externa
				);
			}

			return json_encode($result);

		} catch (Exception $e) {

			die( $e->getMessage() );
		}
	}

	public function getAll($date = null) {
		try {

			$date = ($date == null) ? date('Y-m-d') : $date;
			$sql = "SELECT temp_interna, temp_externa, humidity_interna, humidity_externa, dew_point_interna, dew_point_externa, DATE_FORMAT(datahora, '%k:%i') AS hora
					FROM {$this->table}
					WHERE DATE(datahora) = :datahora
					ORDER BY id;";

			$stmt = $this->conn->prepare( $sql );
			$stmt->bindParam(':datahora', $date);

			if ($stmt->execute()) {
				$logs = $stmt->fetchAll(PDO::FETCH_OBJ);
			}

			$result = array();
			$result[] = array('Data/Hora', 'Temp Interna', 'Temp Externa', 'Humidade Interna', 'Humidade Externa', 'P.O. Interno', 'P.O. Externo');

			foreach ($logs as $key => $value) {

				$result[] = array(
					$value->hora,
					(int) $value->temp_interna,
					(int) $value->temp_externa,
					(int) $value->humidity_interna,
					(int) $value->humidity_externa,
					(int) $value->dew_point_interna,
					(int) $value->dew_point_externa
				);
			}

			return json_encode($result);

		} catch (Exception $e) {

			die( $e->getMessage() );
		}
	}
}