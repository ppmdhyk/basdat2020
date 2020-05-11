<?php $this->load->view('partial/new-main-header', ['score' => $score]); ?>

<?php if ($this->isTA): ?>
<a class="npjax btn btn-success" href="<?= site_url('ta/problem_edit/') ?>"><span class="glyphicon glyphicon-plus"></span> New problem</a>
<?php endif; ?>
    <table class="table table-striped">
        <thead style="width:100%">
            <tr>
                <th>No</th>
                <th>Mission Title</th>
                <th>Correct/Answer</th>
                <th>Score</th>
                <th>Result</th>
            </tr>
        </thead>
        <tbody>
        <?php $i=1; foreach ($problems as $problem): ?>
        <tr>
            <td><?php echo $i?></td>
            <td class="col-md-6" style="text-align:left">
                <a href="<?= site_url('main/problem/'.$problem->id) ?>#title" style="font-weight: bold"><?= $problem->title ?></a>
            </td>
            <td><?= $problem->correct ?> / <?= $problem->total_submit ?></td>
            <td><?= $problem->score?> %</td>
            <td>
                <?php $correct_stat = !isset($answers[$problem->id]) ? NULL : ($answers[$problem->id] === '1' ? True : False);
                    $ok_css = $correct_stat === True ? 'success' : 'default';
                    $nok_css = $correct_stat === False ? 'danger' : 'default';
                ?>
                <span class="label label-<?= $ok_css ?>"><span class="glyphicon glyphicon-ok"></span> Benar</span>
                <span class="label label-<?= $nok_css ?>"><span class="glyphicon glyphicon-remove"></span> Salah</span>

                <?php if ($this->isTA): ?>
                    <a href="<?= site_url('ta/problem_edit/'.$problem->id) ?>" class="npjax btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Edit problem</a>
                <?php endif; ?>
            </td>
        </tr>
        <?php $i++; endforeach; ?>
    </tbody>
    </table>