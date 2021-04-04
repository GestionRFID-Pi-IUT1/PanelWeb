<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="main.css">

<?php
include "config/config.php";

try {
    $bdd = new PDO('mysql:host='.$db_host.';dbname='.$db_name.';charset=utf8', $db_username, $db_password);
} catch (Exception $e) {
    echo "Erreur connexion base de donnée";
}

if(!empty($_POST['uid']) && !empty($_POST['nom'])) {
  $req = $bdd->prepare('SELECT * FROM utilisateurs WHERE uid = :uid');
  $req->execute(array('uid' => $_POST['uid']));
  if($req->rowCount() == 0) {
    $access = 0;
    if($_POST['access'] == "on"){
      $access = 1;
    }
    $req = $bdd->prepare('INSERT INTO utilisateurs(uid,nom,access) VALUES (:uid, :nom, :access)');
    $req->execute(array(
      'uid' => $_POST['uid'],
      'nom' => $_POST['nom'],
      'access' => $access));
  }
}

if(isset($_GET["viewuid"])) {
  if($_GET["viewuid"] == 'on'){
    $req = $bdd->prepare('UPDATE systeme SET mode = 1 WHERE id = :id');
    $req->execute(array('id' => $id_Badgeuse));
  } else{
    $req = $bdd->prepare('UPDATE systeme SET mode = 0 WHERE id = :id');
    $req->execute(array('id' => $id_Badgeuse));  
  }
  echo "<script type='text/javascript'>document.location.replace('adduser.php');</script>";
}
?>

<div class="container">
    <div class="row">
    
      <p></p>
      <h1 style="text-align: center;">Ajout d'utilisateur</h1>
      <p style="text-align: center;">Fait par Adrian Bonventre et Lucien Maldame dans le cadre des TR (IUT1 - UGA)</p>
      <p style="text-align: center;"><a href="index.php">Main</a> &gt; Ajout d'utilisateur</p>
      <p></p>
      <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Ajouter un utilisateur</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <a href="index.php" type="button" class="btn btn-sm btn-danger btn-create">Retour</a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th>UID RFID</th>
                        <th>Nom</th>
                        <th>Accès</th>
                        <th>Validation</th>
                    </tr> 
                  </thead>
                  <tbody>
                  	<form method="post">
                      <tr>
                        <td><input type="text" name="uid"></td>
                        <td><input type="text" name="nom"></td>
                        <td><input type="checkbox" name="access" id="choix_simple"> Accès</td>
                        <td><button type="submit" class="btn btn-sm btn-primary btn-create">Valider</button></td>
                      </tr>
                    </form>
                  </tbody>
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-8 ">
                    <a href="adduser.php?viewuid=on" type="button" class="btn btn-sm btn-warning btn-create">Activer le mode ID TAG</a>
                    <a href="adduser.php?viewuid=off" type="button" class="btn btn-sm btn-danger btn-create">Désactiver le mode ID TAG</a>                
                  </div>
                </div>
              </div>
            </div>
      </div>
</div>
</div>