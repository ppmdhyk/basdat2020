<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SIQRING</title>
   <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="<?= base_url('css/bootstrap.min.css') ?>">

    <!-- Optional theme -->
    <link rel="stylesheet" href="<?= base_url('css/bootstrap-theme.min.css') ?>">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="<?= base_url('css/codemirror.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= base_url('css/codemirror/show-hint.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= base_url('css/codemirror/sqljudge.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= base_url('css/main.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= base_url('css/datatable.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= base_url('css/new.css') ?>">
    
    <script src="<?= base_url('js/jquery.min.js') ?>"></script>
</head>
<body class="login_body">
    <?= $body ?>
    <script src="<?= base_url('js/bootstrap.min.js') ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/codemirror.js'); ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/codemirror/sql.js'); ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/codemirror/show-hint.js'); ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/codemirror/sql-hint.js'); ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/codemirror/matchbrackets.js'); ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/pjax.js') ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/jquery-ui-1.10.4.min.js') ?>"></script>
    <script type="text/javascript" src="<?= base_url('js/jquery.doublescroll.js') ?>"></script>
	<script type="text/javascript" src="<?= base_url('js/datatables.js') ?>"></script>
	<script type="text/javascript" src="<?= base_url('js/problem.js') ?>"></script>

	<?php /* TODO: tinymce is causing slow load on Main#problem() which doesn't even needs it, temp fix */ ?>
	<?php if($this->router->fetch_class() == 'TA'): ?>
		<script type="text/javascript" src="<?= base_url('js/tinymce/tinymce.min.js') ?>"></script>
	<?php endif; ?>
    <script type="text/javascript">
    $(document).pjax('a:not(.npjax)', '#container');
    $(document).on('submit', 'form[data-pjax]', function(event) {
        $.pjax.submit(event, '#container')
    });
    </script>
</body>
</html>
