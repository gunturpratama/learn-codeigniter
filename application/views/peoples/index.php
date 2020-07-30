<div class="container">

	<h3><?= $title; ?></h3>


	<div class="row">
		<div class="col-md-4">
			<form action="<?= base_url('peoples') ?>" method="post">
				<div class="input-group mb-3">
					<input type="text" class="form-control" name="key" placeholder="Search Keyword" autocomplete="off"
						autofocus>
					<div class="input-group-append">
						<input class="btn btn-outline-primary" type="submit" name="submit">
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="row mt-3">
		<div class="col-md">
			<h5>Hasil Pencarian : <?= $total_rows; ?></h5>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				<?php if(empty($peoples)) : ?>
				<tr>
					<td colspan="4">
						<div class="alert alert-danger" role="alert">
							<strong>Data Tidak Ketemu</strong>
						</div>
					</td>
				</tr>
				<?php endif; ?>
				<?php foreach($peoples as $people): ?>
				<tbody>
					<th><?= ++$start; ?></th>
					<td><?= $people['name']; ?></td>
					<td><?= $people['email']; ?></td>
					<td>
						<a href="" class="badge badge-warning">detail</a>
						<a href="" class="badge badge-success">ubah</a>
						<a href="" class="badge badge-danger">danger</a>
					</td>
				</tbody>
				<?php endforeach ?>
			</table>

		</div>


	</div>
	<?= $this->pagination->create_links(); ?>
</div>
