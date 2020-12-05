
<!---copy-right ---->
<div class="copy-right">
	<div class="container">
	
		<div class="footer-social-icons wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<ul>
				<li><a class="facebook" href="https://www.facebook.com/"><span>Facebook</span></a></li>
				<li><a class="twitter" href="https://twitter.com/"><span>Twitter</span></a></li>
				<li><a class="flickr" href="https://www.flickr.com/"><span>Flickr</span></a></li>
				<li><a class="googleplus" href="https://myaccount.google.com/"><span>Google+</span></a></li>
				<li><a class="dribbble" href="https://dribbble.com/"><span>Dribbble</span></a></li>
			</ul>
		</div>
		<p class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">© <?php echo date('Y'); ?> SIstem Informasi Geografis</p>
	</div>
</div>
<!--- /copy-right ---->

     <!-- DATA TABLE SCRIPTS -->
    <script src="<?php echo base_url(); ?>assets/template/js/dataTables/jquery.dataTables.js"></script>
    <script src="<?php echo base_url(); ?>assets/template/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#page').dataTable();
            });
    </script>
         <!-- CUSTOM SCRIPTS -->
    <script type="text/javascript">
      
      function setMapToForm(latitude, longitude) 
        {
          $('input[name="latitude"]').val(latitude);
          $('input[name="longitude"]').val(longitude);
        }

    </script>
	<script> 
  window.setTimeout(function() { $(".alert").fadeTo(500, 0).slideUp(500, function(){ $(this).remove(); }); }, 3000);
   </script>
</body>
</html>
