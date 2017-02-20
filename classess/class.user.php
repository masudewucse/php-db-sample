<?php
class USER
{	

	private $conn;

	
	public function __construct()
	{
		$database = new Database();
		$db = $database->dbConnection();
		$this->conn = $db;
    }
	
	public function runQuery($sql)
	{
		$stmt = $this->conn->prepare($sql);
		return $stmt;
	}

	public function lasdID()
	{
		$stmt = $this->conn->lastInsertId();
		return $stmt;
	}
	
	public function register($fname, $lname, $uname,$umail,$upass, $utype, $code)
	{

//		echo $umail;
//		exit;

		try
		{
			$new_password = password_hash($upass, PASSWORD_DEFAULT);
			
			$stmt = $this->conn->prepare("INSERT INTO users(fname, lname, uname, email, pass, utype, tokenCode) 
		                                               VALUES(:fname, :lname, :uname, :umail, :upass, :utype, :active_code)");
												  
			$stmt->bindparam(":fname", $fname);
			$stmt->bindparam(":lname", $lname);
			$stmt->bindparam(":uname", $uname);
			$stmt->bindparam(":umail", $umail);
			$stmt->bindparam(":upass", $new_password);
			$stmt->bindparam(":utype", $utype);
			$stmt->bindparam(":active_code",$code);


			$stmt->execute();	
			
			return $stmt;	
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}				
	}






	public function doLogin($uname,$umail,$upass)
	{
		try
		{
			$stmt = $this->conn->prepare("SELECT * FROM users WHERE uname=:uname OR email=:umail AND oauth_provider!='facebook'");
			$stmt->execute(array(':uname'=>$uname, ':umail'=>$umail));
			$userRow=$stmt->fetch(PDO::FETCH_ASSOC);
			if($stmt->rowCount() == 1)
			{

				if($userRow['userStatus']=="Y") {

					if (password_verify($upass, $userRow['pass'])) {


						$_SESSION['user_session'] = array();
						$_SESSION['user_session'] = $userRow;
						return true;
					} else {
						return false;
					}

				}else
				{
					echo "<script>window.location='login.php?inactive'</script>";
					//header("Location: login.php?inactive");
//					$login->redirect($config['baseUrl'].'dashboard/');
					//exit;
				}
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}


	public function facebookUserLoginSession($oauth_provider,$oauth_uid, $email){


		try
		{
			$stmt = $this->conn->prepare("SELECT * FROM users WHERE oauth_provider=:oauth_provider AND oauth_uid=:oauth_uid AND email=:umail");
			$stmt->execute(array(':oauth_provider'=>$oauth_provider,
				':oauth_uid'=>$oauth_uid,
				':umail'=>$email
			));
			$userRow=$stmt->fetch(PDO::FETCH_ASSOC);
			if($stmt->rowCount() == 1)
			{
					$_SESSION['user_session'] = array();
					$_SESSION['user_session'] = $userRow;
					return true;
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}

	}


	public function doSocialLogon($oauth_uid, $email, $social){

		try
		{
			$stmt = $this->conn->prepare("SELECT * FROM users WHERE oauth_uid=:oauth_uid AND email=:umail AND oauth_provider=:social");
			$stmt->execute(array(':oauth_uid'=>$oauth_uid, ':umail'=>$email, ':social'=>$social));
			$userRow=$stmt->fetch(PDO::FETCH_ASSOC);
			if($stmt->rowCount() == 1)
			{



					$_SESSION['user_session'] = array();
					$_SESSION['user_session'] = $userRow;
					return true;
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}

	}

	public function is_loggedin()
	{
		if(isset($_SESSION['user_session']['id']) && isset($_SESSION['user_session']['email']))
		{
			return true;
		}
	}
	
	public function redirect($url)
	{
		//header("Location: $url");
		echo "<script>window.location='".$url."'</script>";
	}
	
	public function doLogout()
	{
		session_destroy();
		unset($_SESSION['user_session']);
		return true;
	}

	public function redirectWithMessage($url,$message){
		//header("Location: $url?msg=loginFirst");
		echo "<script>window.location='".$url."'</script>";
	}

    public function userDetails($uid){

		try
		{
			$stmt = $this->conn->prepare("SELECT * FROM users WHERE id = :uid");
			$stmt->execute(array(':uid'=>$uid));
			$result = $stmt->fetchAll();

			return $result;

		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}

	public function userImage($img,$authProvider){

		try
		{
			$profilepic = ($img)?'img/profile/'.$img:'img/placeholder.png';
			$profilepic = ($authProvider)?$img:$profilepic;
			return $profilepic;

		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}

	}


	public function send_mail($email,$message,$subject, $from = null)
	{
		$fr = ($from)?$from:'masud.indeed@gmail.com';
		// To send HTML mail, the Content-type header must be set
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

// Additional headers
		$headers .= 'To: '.$email . "\r\n";
		$headers .= 'From: '.$fr.''."\r\n";
		//$headers .= 'Cc: masud.indeed@gmail.com' . "\r\n";
		//$headers .= 'Bcc: masud.indeed@gmail.com' . "\r\n";

// Mail it
		$sent = mail($email, $subject, $message, $headers);
		return $sent;
	}
	
	
	
	function addNumbers($a,$b){
		return $a+$b;
	}



	
	function userInfoByEmail($email){
		try{
			$stmt  = $this->conn->prepare("SELECT * FROM users where email=:email AND oauth_provider=:fb");
			$stmt->execute(array('email'=>$email,'fb'=>'facebook'));
			//$stmt->execute();
			$result = $stmt->fetchAll();

			return $result;
			
		}catch(PDOException $e){
			echo $e->getMessage();
		}
		
	}

}
?>