<?php
	function env($key, $value){
		$path = __DIR__.'/dbConfig.php';
		if(!file_exists($path))
			return $value;
		$config = require $path;
		return $config[$key];
	}
?>