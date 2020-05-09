<div class="header">
    <h1>Mission in Datasable (Database Online Judging System)</h1>
</div>
<?= form_open('auth/login', ['class'=>'form', 'method' => 'post']) ?>
    <?php if ($this->session->flashdata('err')): ?>
    <div class="alert alert-danger"><?= $this->session->flashdata('err') ?></div>
    <?php endif; ?>
    <?php if (!empty($errors)): ?>
    <div class="alert alert-danger"><?= $errors ?></div>
    <?php endif; ?>
    <div class="form-group">
        <label for="stdid">Username</label>
        <input class="form-control" id="stdid" name="stdid" autofocus placeholder="Masukkan username anda">
    </div>
    <div class="form-group">
        <label for="email">Password</label>
        <input type="password" class="form-control" id="email" name="email" placeholder="Masukkan password anda">
    </div>
    <button class="btn btn-primary">Login</button>
</form>
