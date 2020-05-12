<div class="row" style="width: 100%">
    <div class="col-md-5" style="padding-top:0.5%">
        <div class="row">
            <div class="col-md-2 imagecontainer">    
                <img src="<?php echo base_url()?>/img/LOGO POLITEKNIK NEGERI MALANG 1.png" class="logo">
            </div>
            <div class="col-md-6" style="text-align:center; padding-top:10px; padding-left:0px">
                <div style="font-family: Roboto;font-style: normal;font-weight: bold;font-size: 32px;line-height: 42px;padding-bottom: 2px;color: #000000;word-spacing: 3px;">S I Q R I N G</div>
                <span style="font-family: Roboto;font-style: normal;font-weight: bold;font-size: 10px;line-height: 12px;color: #000000;">SISTEM PENJURIAN SQL BERBASIS DARING</span>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="padding-top:1.2%">
        <span class="mainlabel">WAKTU SERVER : </span><span class="sublabel"> 22/05/2020 12:00:00</span>
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
    var elTimeRemains = $('#time-remains');
    var expireTime = <?= (strtotime($this->setting->get('end_time'))) ?>-25082;
    var startTime = <?= (strtotime($this->setting->get('start_time'))) ?>;
    var nowTime = <?= (strtotime("now")) ?>;
 
  //  alert(expireTime); 
   // alert(new Date().getTime()/1000);
 // alert(Math.round(new Date().getTime()/1000));
    var computeInterval = function () {
     /*   var totalSec = expireTime - parseInt(new Date().getTime() / 1000, 10),
            hours = parseInt( totalSec / 3600 ) % 24,
            minutes = parseInt( totalSec / 60 ) % 60,
            seconds = totalSec % 60,
            result = (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds  < 10 ? "0" + seconds : seconds);
    
       
        if (totalSec > expireTime) {
            location.reload();
        } else {
            elTimeRemains.text(result);
        }
        */
        
           var totalSec = expireTime - parseInt(new Date().getTime() / 1000, 10),
            hours = parseInt( totalSec / 3600 ) % 24,
            minutes = parseInt( totalSec / 60 ) % 60,
            seconds = totalSec % 60,
            result = (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds  < 10 ? "0" + seconds : seconds);
    
       
       if (totalSec > expireTime) {
            location.reload();
        }
        else if (totalSec == 0) {
            alert('Waktu Habis')
            
            localStorage.clear();
            sessionStorage.clear();
            location.reload();
           
            totalSec=100;
        } else if(totalSec==600){
            alert('Waktu kurang 10 menit');
        } else if(totalSec <= 0){
            result="00:00:00";
             <?php // session_destroy();?>
        }
        else {
            elTimeRemains.text(result);
        }
        
        
    };
    var interval = setInterval(computeInterval, 1000);
    computeInterval();

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
