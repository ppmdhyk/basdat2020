<?php $this->load->view('partial/new-main-header', ['score' => $score]); ?>
<div class="helpmain">
    <div class="row" style="padding-top:0.5%; width:100%;padding-left:30px">
      <div class="announcement"> <?= $notif ?></div> 
    </div>
    <br>
    <strong style="padding-left: 1.5%;">HAL-HAL YANG PERLU DIPERHATIKAN !</strong>
    <br>
    <br>
    <ol>
        <li>Bacalah soal dengan seksama.</li>
        <li>Gunakan <strong>lowercase (huruf kecil)</strong> pada penulisan syntax query SQL.</li>
        <li>Gunakan <strong>keseluruhan tabel</strong> sumber yang terdapat pada soal.</li>
        <li>Pastikan <strong>nama kolom sesuai dengan</strong> jawaban yang diinginkan.</li>
        <li>Gunakan fitur <strong>“Cek SQL”</strong> untuk melihat hasil syntax query SQL jawaban yang dimasukkan.</li>
        <li>Jawaban tersimpan setelah tombol <strong>“Simpan Jawaban”</strong> ditekan.</li>
        <li>Jawaban dapat diubah selama belum menekan tombol <strong>“Selesai”</strong> dan waktu pengerjaan masih tersedia.</li>
        <li>Tekan tombol <strong>“Selesai”</strong> untuk menyatakan bahwa pengerjaan soal telah selesai dan jawaban tidak dapat diubah kembali.</li>
        <li>Jika waktu telah habis, maka jawaban otomatis tidak dapat diubah kembali (Selesai).</li>
    </ol>
    
    <br>
    <br>
    <br>
    <br>
    <div style="text-align:center"><a href="<?= $tombol ?>" class="ready">Mulai</a></div>
    <br>
    <br>
    <br>
    
</div>

   