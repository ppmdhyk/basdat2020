<?= form_open('auth/login', ['class'=>'form', 'method' => 'post']) ?>
<div class="logincontainer">
    <div class="imagecontainer">
        <img src="<?php echo base_url()?>/img/LOGO POLITEKNIK NEGERI MALANG 1.png" class="logo">
    </div>
    <div class="loginheader">
        <span class="title">S I Q R I N G</span>
        <br>
        <span class="subtitle">SISTEM PENJURIAN SQL BERBASIS DARING</span>
    </div>
    <div class="logininput">
        <?php if ($this->session->flashdata('err')): ?>
        <div class="loginalert"><?= $this->session->flashdata('err') ?></div>
        <?php endif; ?>
        <?php if (!empty($errors)): ?>
        <div class="loginalert"><?= $errors ?></div>
        <?php endif; ?>
        <input class="form-control" id="stdid" name="stdid" autofocus placeholder="Masukkan username anda" required>
        <input type="password" class="form-control" id="email" name="email" placeholder="Masukkan password anda" required>
        <button type="submit">Masuk</button>
    </div>
    <div class="loginversion">
        <span class="version">VERSION 1.0.0</span>
    </div>
</div>
</form>
<!-- <div class="loginfooter">
        <img src="<?php echo base_url()?>/img/hub polin 1.png" class="logofooter">
        <span class="footer">@2020 HUB POLINEMA</span>
</div> -->
