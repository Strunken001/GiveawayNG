	<?php if($multi_contest == '2') { ?>

	<div class="contest_header">

		<div class="contest_header_sub">

			<div class="contest_header_box">
				<div class="contest_header_icon"><i class="fas fa-crown"></i></div>
				<div class="c cs2">Past Contests & Winners</div>
			</div>

		</div>

	</div>

	<div class="contest_ranking">

		<div class="contest_rankings_box">

			<?php

			$sql = mysqli_query($db,"SELECT * FROM `contest` WHERE `end` < CURDATE() ORDER BY `id` DESC");
			
			while($fetch = mysqli_fetch_array($sql)) {
				// SELECT u.name AS winner_username FROM users u JOIN content c ON u.id = c.iduser WHERE c.contest = 13 ORDER BY c.rating DESC LIMIT 1

				$contest_id = $fetch['id'];


				// prepare the SQL query
				$total_join_sql2 = mysqli_query($db, "SELECT u.name AS winner_username, c.photo AS contest_photo  , c.id AS photo_id FROM users u JOIN content c ON u.id = c.iduser WHERE c.contest = $contest_id ORDER BY c.rating DESC LIMIT 1");

				// check for errors
				if (!$total_join_sql2) {
				    die("Error: " . mysqli_error($db));
				}

				// fetch the result
				$row = mysqli_fetch_array($total_join_sql2);



				$total_join_sql = mysqli_query($db,"SELECT `rating`, `views` FROM `content` WHERE contest   = '".$fetch['id']."'");

				

				$fetch_joinsql = mysqli_fetch_array($total_join_sql);

				?>

			<?php if (!is_null($row)): ?>
			<div class="ranking_items" data-page="0" data-stop="0">
				<div class="ranking_item ">
					<div class="ranking_item_photo">
						<a href="">
							<img src="<?php echo $settings['site_url'].'_uploads/_photos/'.$row["contest_photo"]?>_400.jpg">
						</a>
					</div>
					<div class="ranking_item_name">
						<a href="<?php echo $settings['site_url'].'photo-'.$row['photo_id'];?>" class="text_dec_none"><span>
							<?php echo $row["winner_username"];?>
						</span>
						</a><br>
						<a href= "<?php echo $settings['site_url'].'index.php?contest='.$contest_id;?>" >
							<span style="font-size:12px;color:#777;font-weight:400;">
								Contest : <?php echo $fetch['title'];?></span>
							</div>
						</a>
					<div class="ranking_item_votes">
						<span style="color:#222;font-weight:700;"><?php echo $fetch_joinsql['rating'] ?? '0';?></span> ratings</div>
					<div class="ranking_item_views"><span style="color:#222;font-weight:700;"><?php echo $fetch_joinsql['views'] ?? '0';?></span> views</div>
				</div>
			</div>
			<?php endif; ?>
				<?php

				// echo '


				// <a href="index.php?contest='.$fetch['id'].'" class="contests_item_a">
				// 	<div class="contests_item">
				// 		<div class="contests_item_title">'.$fetch['title'].'</div>
				// 		<div class="contests_item_title"> End Date :'.date('d-m-Y', strtotime($fetch['end'])).'</div>
				// 		<div class="contests_item_title"> The winner of this content  :'. $row["winner_username"].'</div>
				// 		<div class="contests_item_title"> 
				// 		<img src='. $settings['site_url'].'_uploads/_photos/'.$row["contest_photo"].'_400.jpg /></div>
						
				// 	</div>
				// </a>';

			}
			?>

		</div>

	</div>

	<?php } ?>