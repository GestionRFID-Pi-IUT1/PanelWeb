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

if(isset($_GET["remove"])) {
  $req = $bdd->prepare('DELETE FROM utilisateurs WHERE id =:id');
  $req->execute(array('id' => $_GET["remove"])); 
  echo "<script type='text/javascript'>document.location.replace('index.php');</script>";
}

if(isset($_GET["viewuid"])) {
  if($_GET["viewuid"] == 'on'){
    $req = $bdd->prepare('UPDATE systeme SET mode = 1 WHERE id = :id');
    $req->execute(array('id' => $id_Badgeuse));
  } else{
    $req = $bdd->prepare('UPDATE systeme SET mode = 0 WHERE id = :id');
    $req->execute(array('id' => $id_Badgeuse));  
  }
  echo "<script type='text/javascript'>document.location.replace('index.php');</script>";
}

?>

<div class="container">
    <div class="row">
    
      <p></p>
      <h1 style="text-align: center;">Gestions des utilisateurs</h1>
      <p style="text-align: center;">Fait par Adrian Bonventre et Lucien Maldame dans le cadre des TR (IUT1 - UGA)</p>
      <p style="text-align: center;">Main &gt;</p>
      <p></p>
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Utilisateurs</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <a href="adduser.php" type="button" class="btn btn-sm btn-primary btn-create">Créer utilisateur</a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><em class="fa fa-cog"></em></th>
                        <th class="hidden-xs">ID</th>
                        <th>UID RFID</th>
                        <th>Nom</th>
                        <th>Accès</th>
                    </tr> 
                  </thead>
                  <tbody>
                    <?php 
          $utilisateurs = $bdd->query('SELECT * FROM utilisateurs ORDER BY id');
              while($a = $utilisateurs->fetch()) {
                      echo '
                            <tr>
                              <td align="center">
                                <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                                <a href="index.php?remove='.$a['id'].'" class="btn btn-danger"><em class="fa fa-trash"></em></a>
                              </td>
                              <td class="hidden-xs">'. $a['id'] .'</td>
                              <td>'. $a['uid'] .'</td>
                              <td>'. $a['nom'] .'</td>
                              ';
                      if($a['access'] == "1"){
                            echo '<td><span class="label label-success">Autorisé</span></td>';
                        } else {
                          echo '<td><span class="label label-danger">Non autorisé</span></td>';
                        }   
                        echo '</tr>';
                    }
                    ?>  
                  </tbody>
                </table>
            
              </div>
            <div class="panel-footer" style="padding: 10px 20px 40px;">
                <div class="row">
                  <div class="col col-xs-8 ">
                    <a href="historique.php" type="button" class="btn btn-sm btn-primary btn-create">Historiques des passages</a>
                    <div class="border-top my-3"></div>

                    <a href="index.php?viewuid=on" type="button" class="btn btn-sm btn-warning btn-create">Activer le mode ID TAG</a>
                    <a href="index.php?viewuid=off" type="button" class="btn btn-sm btn-danger btn-create">Désactiver le mode ID TAG</a>
                  </div>
                </div>
              </div>
            </div>
    </div>

  </div>
</div>