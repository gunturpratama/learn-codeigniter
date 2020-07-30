<div class="container">

	<?php if($this->session->flashdata('flash')): ?>
	<div class="div row mt-3">
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			Data Mahasiswa <strong>berhasil</strong> <?= $this->session->flashdata('flash'); ?>.
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	</div>
	<?php endif; ?>
	<div class="row mt-3">
		<div class="col-md-6">
			<a href="<?= base_url(); ?>/mahasiswa/tambah" class="btn btn-primary">Tambah Data Mahasiswa</a>
		</div>

	</div>


	<div class="row mt-3">
		<div class="col-md-6">
			<form action="" method="post">
				<div class="input-group mb-3">
					<input type="text" name="keyword" class="form-control" placeholder="Cari data mahasiswa..">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="submit">Cari</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="row mt-3">
		<div class="col-md-6">
			<ul class="list-group">
				<h3>Daftar Mahasiswa</h3>
				<?php if(empty($list_mahasiswa)) : ?>
				<div class="alert alert-danger" role="alert">
					Maaf Data Tidak Ada !
				</div>
				<?php endif; ?>
				<?php foreach($list_mahasiswa as $mhs): ?>
				<li class="list-group-item">
					<?= $mhs['nama']; ?>
					<a href="<?= base_url(); ?>mahasiswa/hapus/<?= $mhs['id']; ?>"
						class="badge badge-danger float-right " onclick="return confirm('yakin bang jago?')">Hapus</a>
					<a href="<?= base_url(); ?>mahasiswa/detail/<?= $mhs['id']; ?>"
						class="badge badge-primary float-right">Detail</a>
					<a href="<?= base_url(); ?>mahasiswa/ubah/<?= $mhs['id']; ?>"
						class="badge badge-success float-right">Ubah</a>
				</li>
				<?php endforeach;?>

			</ul>
		</div>
	</div>
</div>
