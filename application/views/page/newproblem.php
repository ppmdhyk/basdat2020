<?php $this->load->view('partial/page-main-header', ['score' => $score]); ?>
<div class="helpmain">
    <div class="row" style="padding-top:0.5%; width:100%;padding-left:30px">
        <div class="col-md-6">
            <div class="problemback"><a id="title" href="<?= site_url('main') ?>" style="color: white"><span class="glyphicon glyphicon-chevron-left"></span> Kembali ke daftar soal</a></div><br>
        </div>
        <div class="col-md-6">
            <div class="problemstatus"><span class="<?= $solved ? 'sukses' : 'belum' ?>"><?= $solved ? 'Jawaban anda benar' : 'Anda belum mengisi jawaban' ?></span></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="problemrow">
                <span class="problemspantitle">Judul Soal</span>
                <div class="problemcontainer">
                    <?= $problem->description ?>
                </div> 
            </div>
            <div class="problemrow">
                <span class="problemspantitle">Tabel Jawaban</span><span class="problemspansubtitle">Tampilan tabel yang diinginkan</span>
                <div class="problemcontainer">
                    
                </div> 
            </div>
            <div class="problemrow">
                <span class="problemspantitle">Tabel Sumber</span><span class="problemspansubtitle">Tampilan tabel yang diinginkan</span>
                <div class="problemcontainer">
                   
                </div> 
            </div>
            <script type="text/javascript">
      
            </script>
        </div>
        <div class="col-md-6">
            <div class="problemrow">
                <span class="problemspantitle">Console</span><span class="problemspansubtitle">Tempat menuliskan jawaban syntax query SQL</span>
                <br>
                <textarea class="textareaproblem"></textarea> 
            </div>
            <div class="problemrow">
                <div class="problembuttondiv">
                    <input id="test-sql" type="button" style="font-family: Roboto;font-style: normal;width: 30%; border: 1px solid #DEDEDE;box-sizing: border-box;border-radius: 20px;color: #FFFFFF;background:#E28C4D;" value="Cek SQL">
                    <input id="submit-sql" type="button" style="font-family: Roboto;font-style: normal;width: 30%; border: 1px solid #DEDEDE;box-sizing: border-box;border-radius: 20px;color: #FFFFFF;background:#5FA048;" value="Simpan Jawaban">
                </div>
            </div>
            <div class="problemrow">
                <span class="problemspantitle">Hasil</span><span class="problemspansubtitle">Hasil cek syntax query SQL</span>
                <div class="problemlongcontainer">
                    
                </div> 
            </div>
        </div>
    </div>
</div>