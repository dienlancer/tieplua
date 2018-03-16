<div class="margin-top-15">
	<h2 class="tieu-de">
		<?php echo $title; ?>		
	</h2>
	<?php 
	$data_donation=App\DonationModel::select('id','fullname','total_cost')->get()->toArray();	
	if(count($data_donation) > 0){
		foreach ($data_donation as $key => $value) {
			$donation_id=$value['id'];
			$donation_name=$value['fullname'];
			$total_cost=$value['total_cost'];
			$query=DB::table('supporter')
					->where('supporter.donation_id',(int)@$donation_id);
			$data_sum=$query->groupBy('supporter.donation_id')
							->selectRaw('sum(supporter.number_money) as donated_cost')->get()->toArray();
			$donated_cost=0;
			if(count($data_sum) > 0){				
				$donated_cost=(int)$data_sum[0]->donated_cost;
			}			
			$donated_percent=$donated_cost / $total_cost * 100;			
			$total_cost_text=fnPrice($total_cost);
			?>
			<div class="margin-top-5 row">
				<div class="col-lg-3"><?php echo $donation_name; ?></div>
				<div class="col-lg-6">
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $donated_percent ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $donated_percent ?>%">
							<?php echo $donated_percent; ?>%
						</div>
					</div>
				</div>
				<div class="col-lg-3"><?php echo $total_cost_text; ?></div>
			</div>	
			<?php
		}
	}
	if(count($items) > 0){
		?>		
		<div class="margin-top-5">
			<form action="<?php echo route('frontend.index.searchSupporter'); ?>" method="post" name="frm-ds-an-nhan" >
				{{ csrf_field() }}
				<div class="titac">
					<select name="month" class="form-control" >
						<option value="">Tháng</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
				</div>
				<div class="titac">
					<select name="year" class="form-control">
						<option value="">Năm</option>
						<option value="2010">2010</option>
						<option value="2011">2011</option>
						<option value="2012">2012</option>
						<option value="2013">2013</option>
						<option value="2014">2014</option>
						<option value="2015">2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>									
					</select>
				</div>
				<div class="titac">
					<select name="payment_method_id" class="form-control">
						<option value="">Loại hình</option>
						<?php 
						$payment_method=App\PaymentMethodModel::whereRaw('status = 1')->select('id','fullname')->get()->toArray();
						foreach ($payment_method as $key => $value) {
							$id=$value['id'];
							$fullname=$value['fullname'];
							?>
							<option value="<?php echo $id; ?>"><?php echo $fullname; ?></option>									
							<?php	
						}
						?>									
					</select>
				</div>
				<div class="titac ">
					<input type="text" placeholder="Tên người hỗ trợ" name="q" class="form-control"/>
				</div>
				<div class="titac box-readmore"><a href="javascript:void(0);" onclick="document.forms['frm-ds-an-nhan'].submit();">Tìm</a></div>
			</form>
			<form method="post" name="frm" class="margin-top-5">
				{{ csrf_field() }}			
				<input type="hidden" name="filter_page" value="1">   
				<table class="table table-striped table-bordered table-hover table-checkable order-column">
					<thead>
						<tr>									
							<th>Họ tên</th>
							<th>Số tiền</th>
							<th>Loại hình</th>		
							<th>Quỹ quyên góp</th>				
						</tr>
					</thead>
					<tbody> 
						<?php 
						foreach ($items as $key => $value) {
							$id=$value['id'];				
							$fullname=$value['fullname'];
							$number_money_text=fnPrice($value['number_money']);
							$payment_method_name=$value['payment_method_name'];			
							$donation_name=$value['donation_name'];				
							?>
							<tr>
								<td><?php echo $fullname; ?></td>
								<td align="right"><?php echo $number_money_text; ?></td>
								<td><?php echo $payment_method_name; ?></td>
								<td><?php echo $donation_name; ?></td>
							</tr>   
							<?php
						}
						?>											                                           
					</tbody>
				</table>
				<div>
					<?php 
					if(count($items) > 0){
						echo $pagination->showPagination();
					}  
					?>
				</div>
			</form>			
		</div>
		<?php
	}
	?>	
</div>	

