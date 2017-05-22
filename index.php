<?php
include "conf.php";
include "func.php";
$db = new PDO("mysql:host=$host;dbname=$dbname", $username, $pass);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/styles.css" />
  <title>Document</title>
</head>
<body>
  <div class="wrapper">
    <div class="content">
      <header>
          <?php
           include 'header_inc.php';
          ?>
          <div class="wrap">
              <h1>Task</h1><br />
          </div>
      </header>

      <?php
      $data = get_cat($db);

      ?>
      <div class=" wrap">


      <ul class="category">
        <form method="post">
        <?php
          foreach ($data as $row):
            $id_cat_name = $row['id'];
          ?>
          <li>
            <input type="submit" name="<?php echo $id_cat_name ?>" value="<?php echo $row['cat_name']?>">
          </li>

              <?php //begin SUBCATEGORY

                if(!empty($_POST)):
                  $id_cat_name_post = get_id_post();

                    if($id_cat_name == $id_cat_name_post):
                    $arr = get_sub_cat($db, $id_cat_name_post);
                    $count = count($arr);
                    //unset($_POST);
                          if ($count > 0){
                            foreach ($arr as $row):
                                $id_subcat_name = $row['id'];
                            ?>
                              <li>
                              <input type="submit" name="<?php echo $id_subcat_name?>" value="<?php echo $row['subcat_name']?>">
                              </li>
                                    <?php //begin records
                                  //  var_dump($_POST);
                                    $id_subcat_name_post = get_id_post();
                                      if(!empty($_POST) && $id_subcat_name_post == $id_subcat_name):

//                                      var_dump($id_sub);

                                          $arr = get_records($db, $id_subcat_name, $id_cat_name);
                                            foreach ($arr as $row):
                                              $id_record =$row['id'];
                                            ?>
                                              <li>
                                              <a href="<?php echo $id_record ?>"><?php echo $row['record']?></a>
                                              </li>
                                            <?php
                                            endforeach;

                                      endif;
                                      //end records

                            endforeach;
                          }
                          else{
                             //begin records
                                if(!empty($_POST)):
                                  $id_cat_name = get_id_post();
                                  $id_subcat_name = '0';
                                  $arr = get_records($db, $id_subcat_name, $id_cat_name);
                                      foreach ($arr as $row):
                                        $id_record = $row['id'];
                                      ?>
                                        <li>
                                        <a href="<?php echo $id_record ?>"><?php echo $row['record']?></a>
                                        </li>
                                      <?php
                                      endforeach;

                                endif;
                              //end records
                          } //category -> rows
                    endif;
                endif;
                //end SUBCATEGORY
          endforeach;
        ?>
        </form>
      </ul>
      </div>
    </div>
    <footer>
      <?php
        include "footer_inc.php";
      ?>
    </footer>
  </div>
</body>
</html>
