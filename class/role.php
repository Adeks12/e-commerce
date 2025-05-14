<?php

class Role extends dbobject
{
    public function role_list($data)
    {
		$table_name    = "role";
		$primary_key   = "role_id";
		$columner = array(
			array( 'db' => 'role_id', 'dt' => 0 ),
			array( 'db' => 'role_id', 'dt' => 1 ),
			array( 'db' => 'role_name',  'dt' => 2 ),
			array( 'db' => 'created',     'dt' => 3, 'formatter' => function( $d,$row ) {
						return $d;
					}
				)
			);
		$filter = "";
//		$filter = " AND role_id='100'";
		$datatableEngine = new engine();
	
		echo $datatableEngine->generic_table($data,$table_name,$columner,$primary_key,$filter);

    }
    public function saveRole($data)
    {
        $validation = $this->validate($data,array('role_name'=>'required','role_enabled'=>'required|int'),array('role_name'=>'Role Name','role_enabled'=>'Enable Role'));
        if(!$validation['error'])
        {
            $data['created'] = date('Y-m-d h:i:s');
            
            if($data['operation'] == "new")
            {
                // Get the highest role_id and increment it
                $sql = "SELECT MAX(CAST(role_id AS UNSIGNED)) as max_id FROM role";
                $result = $this->db_query($sql);
                $next_id = (int)($result[0]['max_id'] ?? 0) + 1;
                $data['role_id'] = str_pad($next_id, 3, "0", STR_PAD_LEFT);
                
                // Check if this role_id already exists
                $check_sql = "SELECT role_id FROM role WHERE role_id = '$data[role_id]'";
                $exists = $this->db_query($check_sql);
                
                if(!empty($exists)) {
                    return json_encode(array('response_code'=>291,'response_message'=>'Role ID already exists. Please try again.'));
                }
                
                $count = $this->doInsert('role',$data,array('op','operation','id', 'nrfa-csrf-token-label'));
                if($count > 0)
                {
                    return json_encode(array('response_code'=>0,'response_message'=>'Role Created Successfully')); 
                }else
                {
                    return json_encode(array('response_code'=>291,'response_message'=>'Role Could not be Created'));
                }
            }else
            {
                $count = $this->doUpdate('role',$data, array('nrfa-csrf-token-label'), array('role_id'=>$data['role_id']));
                if($count > 0)
                {
                    return json_encode(array('response_code'=>0,'response_message'=>'Role Update Successfully')); 
                }else
                {
                    return json_encode(array('response_code'=>291,'response_message'=>'Role Could not be Updated'));
                }
            }
            
        }
        else
        {
            return json_encode(array("response_code"=>34,"response_message"=>$validation['messages'][0]));
        }
    }
    public function getNextRoleId()
    {
        $sql    = "select CONCAT('00',max(role_id) +1) as rolee FROM role";
        $result = $this->db_query($sql);
        return $result[0]['rolee'];
        
    }
}