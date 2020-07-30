<div class="container">

	<div class="row mt-4">
		<div class="col-md-6">

			<form action="" method="post">

				<div class="card">
					<div class="card-header">
						<?= $title; ?>
					</div>
					<div class="card-body">
						<!-- <?php if(validation_errors()): ?>
						<div class="alert alert-warning" role="alert">
							<strong><?php echo validation_errors(); ?></strong>
						</div>
						<?php endif; ?> -->

						
						<div class="form-group">
							<label for="nama">Nama</label>
							<input type="text" class="form-control" name="nama" id="nama" >
							<small  class="form-text text-danger"><?= form_error('nama'); ?></small>

						</div>
						<div class="form-group">
							<label for="nrp">NRP</label>
							<input type="text" class="form-control" name="nrp" id="nrp" >
							<small  class="form-text text-danger"><?= form_error('nrp') ?></small>

						</div>
						<div class="form-group">
							<label for="email">Email address</label>
							<input type="email" class="form-control" name="email" id="email" >
							<small  class="form-text text-danger"><?= form_error('email') ?></small>

						</div>
						<div class="form-group">
							<label for="jurusan">Jurusan</label>
							<select class="form-control" id="jursan" name="jurusan" >
								<option value="Teknik Informatika">Teknik Informatika</option>
								<option value="Komputer Akutansi Bisnis">Komputer Akutansi Bisnis</option>
								<option value="Sistem Komputer">Sistem Komputer</option>
								<option value="Sistem Informasi">Sistem Informasi</option>
							</select>
						</div>
						<button type="submit" class="btn btn-success float-right" name="tambah">Tambah Data</button>
					</div>
				</div>



			</form>


		</div>

	</div>

</div>
