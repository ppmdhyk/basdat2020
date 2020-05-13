<div class="row" style="width: 100%">
    <div class="col-md-5" style="padding-top:0.5%">
        <div class="row">
            <div class="col-md-2 imagecontainer">    
                <img src="<?php echo base_url()?>/img/logotitle.png" class="logo">
            </div>
            <!-- <div class="col-md-6" style="text-align:center; padding-top:10px; padding-left:0px">
                <div style="font-family: Roboto;font-style: normal;font-weight: bold;font-size: 32px;line-height: 42px;padding-bottom: 2px;color: #000000;word-spacing: 3px;">S I Q R I N G</div>
                <span style="font-family: Roboto;font-style: normal;font-weight: bold;font-size: 10px;line-height: 12px;color: #000000;">SISTEM PENJURIAN SQL BERBASIS DARING</span>
            </div> -->
        </div>
    </div>
    <div class="col-md-5" style="padding-top:1.2%">
        <span class="mainlabel">WAKTU SERVER : </span><span class="sublabel" id="time-remains"> 22/05/2020 12:00:00</span>
    </div>
    <div class="col-md-2" style="padding-top:1.2%; text-align:center">
        <a href="<?= site_url('auth/logout') ?>" class="pagelogout"><span style="font-family: Roboto;font-style: normal;font-weight: bold;color: #FFFFFF;">Keluar</span></a>
    </div>
</div>
<div class="row" style="padding-top:1%; width:100%;padding-left:50px">
    <div class="col-md-2">
        <span class="mainlabel">NIM : </span><span class="sublabel"> 164172097</span>
    </div>
    <div class="col-md-4">
        <span class="mainlabel">NAMA : </span><span class="sublabel"> <?= $this->session->userdata('stdid'); ?></span>
    </div>
    <div class="col-md-2">
        <span class="mainlabel">SKOR : </span><span class="sublabel"> <?= $score ?></span>
    </div>
</div>
<!-- <div class="row" style="padding-top:0.5%; width:100%;padding-left:30px">
    <?php if ($this->setting->get('announcement') !== ''): ?>
    <div class="announcement">Announcements: <?= $this->setting->get('announcement') ?></div>
</div> -->
<script type="text/javascript">
$(function () {
    var lastUpdate = "<?= $this->setting->lastUpdate('announcement') ?>";
    if (! localStorage['lastUpdate'] || localStorage['lastUpdate'] != lastUpdate) {
        localStorage['lastUpdate'] = lastUpdate;
        alert("new announcement! please view it carefully on the top of the page.");
    }
});
</script>
<?php endif; ?>
<script type="text/javascript">
$(function () {
    var myVar = setInterval(myTimer, 1000);

    function myTimer() {
        var today = new Date();
        var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
        document.getElementById("time-remains").innerHTML = time;
    }

    $('#unlock-btn').click(function () {
        var stdid = prompt('student id');
        //if (/^\d{7}$/.test(stdid)) {
            $.get('<?= site_url('ta/unlock') ?>/' + stdid, function () {
                alert('done.');
            });
       // }
    });
});
</script>
