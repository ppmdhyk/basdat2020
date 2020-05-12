<?php $this->load->view('partial/new-main-header', ['score' => $score]); ?>
<div class="helpmain">
    <div class="row" style="padding-top:0.5%; width:100%;padding-left:30px">
        <div class="problemback"><a id="title" href="<?= site_url('main') ?>" style="color: white"><span class="glyphicon glyphicon-chevron-left"></span> Kembali ke daftar soal</a></div><br>
        <div class="problemstatus"><span class="<?= $solved ? 'sukses' : 'belum' ?>"><?= $solved ? 'Jawaban anda benar' : 'Anda belum mengisi jawaban' ?></span></div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div id="description" class="block">
                <h2>Description <small>Deskripsi dari misi</small></h2>
                <?= $problem->description ?>
            </div>
            <div class="block">
                <h2>Tables <small>Tabel yang digunakan untuk menyelesaikan misi ini(gunakan semua tabel yang ada dibawah ini)</small></h2>
                <div class="dbtables">
                <?php foreach ($test_tables as $tableName => $table): ?>
                    <hr>
                    <h3><?= $tableName ?> <button data-target="#table-<?= $tableName ?>" class="btn fold"><span class="glyphicon glyphicon-plus"></span></button></h3>
                
                    <div id="table-<?= $tableName ?>" class="">
                        <?php $this->load->view('partial/table', ['table' => $table, 'schema' => $test_schema[$tableName]]); ?>
                    </div>
                
                <?php endforeach; ?>
                </div>
            </div>
            <div class="block">
                <h2>Answers <small>Jawaban yang diinginkan harus sesuai pada tabel dibawah ini (perhatikan nama kolomnya)</small></h2>
                <?php $this->load->view('partial/table', ['table' => $test_result, 'schema' => false]); ?>
            </div>
            <script type="text/javascript">
        /*
            $(function() {
                var $el = $('.dbtables');
                if ($el.width() < $el.get(0).scrollWidth)
                    $('.dbtables').doubleScroll({contentElement: $('.dbtables')});
                $('button.fold').click(function () {
                
                    var el = $(this).attr('data-target'),
                        span = $(this).find('span');
                    $(el).find('tbody').toggle(20);
                    var css = span.hasClass('glyphicon-minus') ? 'glyphicon-plus' : 'glyphicon-minus';
                    span.attr('class', 'glyphicon ' + css);
                });
                $('.folded tbody').hide();
                
            });
            */
            $(function() {
            var el2 = $('button.fold').attr('data-target');
            $(el2).find('tbody').toggle(20); 
            var flag=1;
            // alert("bagian awal"); 
            var $el = $('.dbtables');
            if ($el.width() < $el.get(0).scrollWidth)
                    $('.dbtables').doubleScroll({contentElement: $('.dbtables')});
            
            $('button.fold').click(function () {
                /*
                    if(flag==1){
                        alert("flag 1");
                        flag=2;
                        $(el2).show();
                    }else{
                        alert("flag 2");
                        flag=1;
                        $(el2).hide();
                }
                */
                
                    
                    var el = $(this).attr('data-target'),
                    span = $(this).find('span');
                    //alert(el);
                    if(flag==1){
                    //  alert("flag 1");
                        flag=2;
                        $(el).find('tbody').toggle(20); 
                        //$(el2).show();
                    }else{
                        // alert("flag 2");
                        flag=1;
                        $(el).find('tbody').toggle(20);
                        //$(el2).hide();
                }
                    
                    var css = span.hasClass('glyphicon-minus') ? 'glyphicon-plus' : 'glyphicon-minus';
                    span.attr('class', 'glyphicon ' + css);
                    
                
            });
            // alert("bagian akhir"); 
            $('.folded tbody').hide();
                
            });
            </script>
        </div>
    </div>
</div>