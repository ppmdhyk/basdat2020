<?php $this->load->view('partial/new-main-header', ['score' => $score]); ?>

<?php if ($this->isTA): ?>
<a class="npjax btn btn-success" href="<?= site_url('ta/problem_edit/') ?>"><span class="glyphicon glyphicon-plus"></span> New problem</a>
<?php endif; ?>
<div style="margin-left: 50px; margin-right: 50px">
<table id="example" class="row-border">
<thead style=" font-family: Roboto; font-style: normal;font-weight: normal; font-size: 14px; line-height: 20px; color: #FFFFFF; text-align: center; background-color: #4D9BE2;border: 1px solid transparent;border-radius: 20px;">
        <tr>
            <th>NOMOR</th>
            <th>JUDUL SOAL</th>
            <th>SKOR SOAL</th>
            <th>STATUS JAWABAN</th>
            <!-- <th>Result</th> -->
        </tr>
    </thead>
    <tbody style="font-family: Roboto; font-style: normal;font-weight: bold; font-size: 14px; line-height: 20px;border-color: #FFFFFF">
        <?php $i = 1; foreach ($problems as $problem): ?>
        <tr>
            <!-- <td><?= $problem->order ?></td> -->
            <td style="text-align: center"><?php echo $i ?></td>
            <td class="col-md-7">
                <a href="<?= site_url('main/problem/'.$problem->id) ?>#title" style="font-weight: bold"><?= $problem->title ?></a>
            </td>
            <!-- <td><?= $problem->correct ?> / <?= $problem->total_submit ?></td> -->
            <td style="text-align: center"><?= $problem->score?> %</td>
            <td>
                <?php $correct_stat = !isset($answers[$problem->id]) ? NULL : ($answers[$problem->id] === '1' ? True : False);
                    $ok_css = $correct_stat === True ? 'success' : 'default';
                    $nok_css = $correct_stat === False ? 'danger' : 'default';
                ?>
                <span class="label label-<?= $ok_css ?>"><span class="glyphicon glyphicon-ok"></span> Correct</span>
                <span class="label label-<?= $nok_css ?>"><span class="glyphicon glyphicon-remove"></span> Wrong answer</span>

                <?php if ($this->isTA): ?>
                    <a href="<?= site_url('ta/problem_edit/'.$problem->id) ?>" class="npjax btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Edit problem</a>
                <?php endif; ?>
            </td>
        </tr>
        <?php $i++; endforeach; ?>
    </tbody>
</table>
</div>
<br>
<div style="text-align:center"><a class="done">Selesai</a></div>
<script>
   $(document).ready(function() {
    $('#example').DataTable( {
        "scrollY":        "50%",
        "scrollCollapse": true,
        "paging":         false,
        "searching" :  false,
        "info"  : false,
        "ordering" : false
    } );
} );
</script>