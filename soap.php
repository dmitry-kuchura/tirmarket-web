<?php

	ini_set('soap.wsdl_cache_enabled',0);
	ini_set('soap.wsdl_cache_ttl',0);

	try {
		$soap 	  = new SoapClient('https://logservice.msht.eu:8889/xlgroup/ws/SiteExchange?wsdl',['login'=>'SiteExchange','password'=>'fdjrm47365']);
		$response = $soap->GetCategoriesList();
		print_r($response->return);
		
	} catch (SoapFault $e) {
		print_r($e);
		print_r($e->getMessage());
	}
	
	die;
	try {

		$soap 	  = new SoapClient('http://tir.maccen.com:8081/webservice/ws/Exchange.1cws?wsdl',['trace' => 1]);
		$response = $soap->getCategories();
		print_r($response->return);
		die;
	} catch (SoapFault $e) {
		print_r($e);
		print_r($e->getMessage());
	}
	