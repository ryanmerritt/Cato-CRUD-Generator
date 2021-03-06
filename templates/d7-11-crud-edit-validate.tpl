/**
 * the <<$tablename_no_prefix>>/edit form validation function
 */
function <<$tablename_no_prefix_singular>>_edit_validate($form, &$form_state) {
  # FIX - run some type of query here to make sure the user owns the <<$tablename_no_prefix_singular>>_id
  $q = "SELECT * FROM {<<$tablename>>} WHERE id = :id AND project_id = :project_id";
  $<<$tablename_no_prefix_singular>> = db_query($q, 
                      array(
                            ':id' => $<<$tablename_no_prefix_singular>>_id, 
                            ':project_id' => get_project_id(),
                    ))->fetchObject();
  # form_set_error('username', 'Validation on the username field failed. Try again.');
}

