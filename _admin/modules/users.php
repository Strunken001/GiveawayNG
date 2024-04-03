
	<div class="pop_ncat" data-id="0">

		<div class="pop_ncat_box pop_ncat_boxuser">

			<div class="pop_ncat_head">Edit user</div>

			<div class="sat">
				<div class="sat_left">E-mail</div>
				<div class="sat_right">
					<input type="text" placeholder="E-mail ..." maxlength="100" id="euser_email" name="euser_email" />
				</div>
			</div>

			<div class="sat">
				<div class="sat_left">Name</div>
				<div class="sat_right">
					<input type="text" placeholder="Name ..." maxlength="100" id="euser_name" name="euser_name" />
				</div>
			</div>


			<div class="sat">
				<div class="sat_left">Phone Number</div>
				<div class="sat_right">
					<input type="text" placeholder="2343176544305" maxlength="100" id="mobile_number" name="mobile_number" />
				</div>
			</div>


			<div class="sat">
				<div class="sat_left">Username (no spaces, only A-Z)</div>
				<div class="sat_right">
					<input type="text" placeholder="Username ..." maxlength="100" id="euser_user" name="euser_user" />
				</div>
			</div> 
			<?php
			if($_SESSION['_logged_role'] ==2){
				?>
			<div class="sat">
			<div class="sat_left">Role</div>
			<div class="sat_right">
				<select name="assignrole">
					<option value="2">Super Admin</option>
					<option value="1">Admin</option>
					<option value="3">User</option>
				</select> 
			</div>
			</div>
			<?php
			}
			?>

			<div class="pop_ncat_op margin_top12">
				<div class="pop_ncat_op_cancel">Cancel</div>
				<div class="pop_ncat_op_submit_su"><i class="fas fa-check"></i>&nbsp;&nbsp;Save</div>
			</div>
			
		</div>

	</div>

	<div class="padding_20 boxn12">
    <div class="title_with_export">
        <div>Registered Users</div>
        <button class="export_button" >Export</button>
    </div>
    <div class="pgtitle"><span class="bold"><?=$fetch_count['total_users'];?></span> registered users</div>
</div>

	<div class="padding_20">

		<div class="users_dash_cap">
			<div class="users_dash_col center users_dash_col_1">Picture</div>
			<div class="users_dash_col users_dash_col_2">User information</div>
			<div class="users_dash_col users_dash_col_3">E-mail address</div>
			<div class="users_dash_col users_dash_col_4">Phone Number</div>
			<div class="users_dash_col users_dash_col_5">Registration date</div>
			<?php
			if(isset($_SESSION['_logged_admin']) && $_SESSION['_logged_role']==2)
			{
				?>
			<div id="optionslist" class="users_dash_col center users_dash_col_6">Options</div>
			<?php
			}
			?>
		</div>

		<div class="no_results">
			<div class="no_results_icon"><i class="fas fa-exclamation-triangle"></i></div>
			<div class="no_results_text">No results</div>
		</div>

		<div class="users_results" data-page="0" data-stop="0"></div>

		<div class="cloading"><i class="fas fa-spinner fa-spin"></i></div>

	</div>