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
                    <?php $this->load->view('partial/table', ['table' => $test_result, 'schema' => false]); ?>
                </div> 
            </div>
            <div class="problemrow">
                <span class="problemspantitle">Tabel Sumber</span><span class="problemspansubtitle">Daftar tabel sumber yang harus digunakan</span>
                <div class="problemcontainer">
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
                    // $(function() {
                    // var el2 = $('button.fold').attr('data-target');
                    // $(el2).find('tbody').toggle(20); 
                    // var flag=1;
                    // // alert("bagian awal"); 
                    // var $el = $('.dbtables');
                    // if ($el.width() < $el.get(0).scrollWidth)
                    //         $('.dbtables').doubleScroll({contentElement: $('.dbtables')});
                    
                    // $('button.fold').click(function () {
                    //     /*
                    //         if(flag==1){
                    //             alert("flag 1");
                    //             flag=2;
                    //             $(el2).show();
                    //         }else{
                    //             alert("flag 2");
                    //             flag=1;
                    //             $(el2).hide();
                    //     }
                    //     */
                        
                            
                    //         var el = $(this).attr('data-target'),
                    //         span = $(this).find('span');
                    //         //alert(el);
                    //         if(flag==1){
                    //         //  alert("flag 1");
                    //             flag=2;
                    //             $(el).find('tbody').toggle(20); 
                    //             //$(el2).show();
                    //         }else{
                    //             // alert("flag 2");
                    //             flag=1;
                    //             $(el).find('tbody').toggle(20);
                    //             //$(el2).hide();
                    //     }
                            
                    //         var css = span.hasClass('glyphicon-minus') ? 'glyphicon-plus' : 'glyphicon-minus';
                    //         span.attr('class', 'glyphicon ' + css);
                            
                        
                    // });
                    // // alert("bagian akhir"); 
                    // $('.folded tbody').hide();
                        
                    // });

                    $('button.fold').click(function () { 
                        var el = $(this).attr('data-target');
                        var tbody = $(el).find('tbody');
                        var span = $(this).find('span');
                        tbody.toggle(20);
                        var css = span.hasClass('glyphicon-minus') ? 'glyphicon-plus' : 'glyphicon-minus';
                        span.attr('class', 'glyphicon ' + css);
                    });
            </script>
        </div>
        <!-- <div class="col-md-6">
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
        </div> -->
        <div class="col-md-6">
        <div id="sql" class="problemcontainer">
            <h2>Console <small>Tempat menuliskan jawaban syntax query SQL</small></h2>
            <?= form_open('main/problem/' . $problem->id, ['id'=>'form-sql','method' => 'post', 'data-pjax' => 'true']) ?>
            <div class="row">
                <div class="col-md-12 form-group">
                    <?php $this->load->view('partial/textarea', ['query' => $query, 'input_name' => 'query', 'schema' => $test_schema]); ?>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 form-group">
                <div style="text-align: center" style="width:100%">
                    <input type="hidden" name="type">
                    <input id="test-sql" type="button" class="btntestsql" value="Cek SQL" style="background: #E28C4D;border: 1px solid #DEDEDE;box-sizing: border-box; border-radius: 20px;margin-top: 1%;width: 30%;font-family: Roboto;font-style: normal;font-weight: bold;font-size: 14px;line-height: 14px;color: #FFFFFF; padding: 10px 10px 10px 10px">
                    <input id="submit-sql" type="button" class="btnsubmitsql" value="Simpan Jawaban" style="background: #5FA048;border: 1px solid #DEDEDE;box-sizing: border-box; border-radius: 20px;margin-top: 1%;width: 30%;font-family: Roboto;font-style: normal;font-weight: bold;font-size: 14px;line-height: 14px;color: #FFFFFF; padding: 10px 10px 10px 10px">
                    <input id="submit-btn" type="submit" style="display:none">
                    <script type="text/javascript">
                        $(function () {
                            var hiddenField = function (type) {
                                return function () {
                                    $('#form-sql input[name="type"]').val(type);
                                    $('#submit-btn').click();
                                };
                            };
                            $('#test-sql').click(hiddenField('Test'));
                            $('#submit-sql').click(hiddenField('Submit'));
                        });
                    </script>
                </div>
                </div>
            </div>
            </form>
        </div>
        <div id="result" class="block">
            <h2>Hasil <small>Hasil cek syntax query SQL</small></h2>
			<?php if (isset($result->error)): ?>
                <?php if($result->error): ?>
                <div class="alert alert-danger">Database error: <?= $result->error ?></div>
                <?php endif; ?>
                <?php if($result->type == "judge"): ?>
                    <?php if($result->is_correct): ?>
                        <div class="alert alert-success">Jawaban Kamu Benar. Silahkan menuju soal selanjutnya <a href="<?= site_url('main') ?>">Go Back</a>.</div>
                    <?php else: ?>
                        <div class="alert alert-danger">Jawaban Kamu Salah.</div>
                    <?php endif; ?>
                <?php endif; ?>
                <?php if ($result->type == 'test'): ?>
                    <?php ! $result->error && $this->load->view('partial/table', ['table' => $result->data, 'schema' => false]); ?>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
    </div>
</div>