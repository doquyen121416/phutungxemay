<?php $this->load->view("backend/header"); ?>
<div id="ckfinder-widget"></div>
<script>
	CKFinder.widget( 'ckfinder-widget', {
		width: '100%',
		height: 600,
		skin: 'jquery-mobile',
		swatch: 'a'
	} );
</script>

<?php $this->load->view("backend/footer"); ?>