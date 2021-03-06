<div class="row">
    <div class="col-md-8"><h1>Mission in Datasable (Database Online Judge System)</h1></div>
    <div class="col-md-4" style="padding-top: 20px">
        Time Remains: <span id="time-remains">00:00:00</span>
        <a href="<?= site_url('main/help') ?>" class="btn btn-default">Help</a>
        <?php /*<a href="<?= site_url('auth/logout') ?>" class="btn btn-primary">Finish Test!</a> */ ?>
        <?php if ($this->isTA): ?>
        <a href="<?= site_url('ta/log') ?>" class="btn btn-info">TA Logviewer</a>
        <a href="<?= site_url('ta/setting') ?>" class="btn btn-info">TA Settings</a>
        <button id="unlock-btn" class="btn btn-danger">unlock student</button>
        <?php endif; ?>
    </div>
</div>
<h4>Username: <?= $this->session->userdata('stdid'); ?></h4>
<h4>Score: <?= $score ?></h4>
<?php if ($this->setting->get('announcement') !== ''): ?>
<strong style="color: red">Announcements: <?= $this->setting->get('announcement') ?></strong>
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

<hr>
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
