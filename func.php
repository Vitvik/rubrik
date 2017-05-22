<?php


function get_cat($db){
$sql = 'SELECT id, cat_name FROM category';

$arr = array();
  foreach ($db->query($sql, PDO::FETCH_ASSOC) as $row):
    $arr[] = $row;
  endforeach;

  return $arr;

}

function get_sub_cat($db, $id){
$sql = 'SELECT subcategory.id, subcategory.subcat_name FROM subcategory WHERE subcategory.id_cat_name = '.$id.'';

$arr = array();
  foreach ($db->query($sql, PDO::FETCH_ASSOC) as $row):
    $arr[] = $row;
  endforeach;

  return $arr;

}

function get_records($db, $id_subcat_name, $id_cat_name){
$sql = 'SELECT string.id, string.record FROM string WHERE string.id_subcat_name = '.$id_subcat_name.' AND string.id_cat_name = '.$id_cat_name.'';

$arr = array();
  foreach ($db->query($sql, PDO::FETCH_ASSOC) as $row):
    $arr[] = $row;

  endforeach;

  return $arr;

}


function get_id_post(){
  foreach ($_POST as $key => $value):
    $id = $key;
  endforeach;
  return $id;
}



 ?>
