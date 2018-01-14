<?php 
use App\PaymentMethodModel;
?>
<div class="margin-top-15">
	<h2 class="tieu-de">
		<?php echo $title; ?>		
	</h2>
	<?php 
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
						$payment_method=PaymentMethodModel::whereRaw('status = 1')->select('id','fullname')->get()->toArray();
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
						</tr>
					</thead>
					<tbody> 
						<?php 
						foreach ($items as $key => $value) {
							$id=$value['id'];				
							$fullname=$value['fullname'];
							$number_money_text=fnPrice($value['number_money']);
							$payment_method_name=$value['payment_method_name'];							
							?>
							<tr>
								<td><?php echo $fullname; ?></td>
								<td align="right"><?php echo $number_money_text; ?></td>
								<td><?php echo $payment_method_name; ?></td>
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

