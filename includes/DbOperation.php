<?php
class DbOperation {
	//Database connection link
	private $con;
	//Class constructor
	function __construct() {
		//Getting the DbConnect.php file
		require_once dirname( __FILE__ ) . '/DbConnect.php';
		//Creating a DbConnect object to connect to the database
		$db = new DbConnect();
		//Initializing our connection link of this class
		//by calling the method connect of DbConnect class
		$this->con = $db->connect();
	}
	/*
	 * The create operation
	 * When this method is called a new record is created in the database
	 */
	function createHero( $col1, $col2, $col3, $col4, $col5, $col6, $col7 ) {
		$stmt = $this->con->prepare( "INSERT INTO najera (columna1g, columna2u, columna3s, columna4t, columna5a, columna6v, columna7o) VALUES (?, ?, ?, ?, ?, ?, ?)" );
		$stmt->bind_param( "sissisi", $col1, $col2, $col3, $col4, $col5, $col6, $col7 );
		if ( $stmt->execute() )
			return true;
		return false;
	}
	/*
	 * The read operation
	 * When this method is called it is returning all the existing record of the database
	 */
	function getHeroes() {
		$stmt = $this->con->prepare( "SELECT columna1g, columna2u, columna3s, columna4t, columna5a, columna6v, columna7o, id FROM najera" );
		$stmt->execute();
		$stmt->bind_result( $col1, $col2, $col3, $col4, $col5, $col6, $col7, $id );
		$heroes = array();
		while ( $stmt->fetch() ) {
			$hero = array();
			$hero[ 'columna1g' ] = $col1;
			$hero[ 'columna2u' ] = $col2;
			$hero[ 'columna3s' ] = $col3;
			$hero[ 'columna4t' ] = $col4;
			$hero[ 'columna5a' ] = $col5;
			$hero[ 'columna6v' ] = $col6;
			$hero[ 'columna7o' ] = $col7;
			$hero[ 'id' ] = $id;
			array_push( $heroes, $hero );
		}
		return $heroes;
	}
	/*
	 * The update operation
	 * When this method is called the record with the given id is updated with the new given values
	 */
	function updateHero( $col1, $col2, $col3, $col4, $col5, $col6, $col7, $id ) {
		$stmt = $this->con->prepare( "UPDATE najera SET columna1g = ?, columna2u = ?, columna3s = ?, columna4t = ?, columna5a = ?, columna6v = ?, columna7o = ? WHERE id = ?" );
		$stmt->bind_param( "sissisii", $col1, $col2, $col3, $col4, $col5, $col6, $col7, $id );
		if ( $stmt->execute() )
			return true;
		return false;
	}
	/*
	 * The delete operation
	 * When this method is called record is deleted for the given id
	 */
	function deleteHero( $id ) {
		$stmt = $this->con->prepare( "DELETE FROM najera WHERE id = ? " );
		$stmt->bind_param( "i", $id );
		if ( $stmt->execute() )
			return true;
		return false;
	}
}