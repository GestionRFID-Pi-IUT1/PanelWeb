<?php
    system("gpio -g mode 17 out");   # GPIO04 – broche 11 en OUT    
    if($_POST['val'] == 'on')  # test à ON  - si pas ON c’est forcement OFF
    {
        system("gpio -g write 17 1");  #  GPIO04 – broche 11 mise à 1 
    }
    else
    {
        system("gpio -g write 17 0"); #  GPIO04 – broche 11 mise à 0
    }
    header('Location: index.php');   # après chaque clic, afficher la page index.php
?>