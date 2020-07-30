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

						<input type="hidden" value="<?= $mahasiswa['id']; ?>" name="id" id="idEdit">
						<div class="form-group">
							<label for="nama">Nama</label>
							<input type="text" class="form-control" name="nama" id="nama" value="<?= $mahasiswa['nama']; ?>">
							<small  class="form-text text-danger"><?= form_error('nama'); ?></small>

						</div>
						<div class="form-group">
							<label for="nrp">NRP</label>
							<input type="text" class="form-control" name="nrp" id="nrp" value="<?= $mahasiswa['nrp']; ?>">
							<small  class="form-text text-danger"><?= form_error('nrp') ?></small>

						</div>
						<div class="form-group">
							<label for="email">Email address</label>
							<input type="email" class="form-control" name="email" id="email" value="<?= $mahasiswa['email']; ?>">
							<small  class="form-text text-danger"><?= form_error('email') ?></small>

						</div>
						<div class="form-group">
							<label for="jurusan">Jurusan</label>
							<select class="form-control" id="jursan" name="jurusan" >
								<?php foreach($jurusan as $j) : ?>
									<?php if($j == $mahasiswa['jurusan']) : ?>
								<option value="<?= $j; ?>" selected><?= $j; ?></option>
								<?php else : ?>
									<option value="<?= $j; ?>"><?= $j; ?></option>
								<?php endif?>
								<?php endforeach; ?>
								
							</select>
						</div>
						<button type="submit" class="btn btn-success float-right" name="ubah">Ubah Data</button>
					</div>
				</div>



			</form>


		</div>

	</div>

</div>
