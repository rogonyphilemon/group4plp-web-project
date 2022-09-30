<style>
	.logo {
    margin: auto;
    font-size: 20px;
    /*background: black;*/
    padding: 5px 11px;
    border-radius: 40% 50%;
    color: hotpink;
}
</style>

<nav class="navbar navbar-dark bg-dark fixed-top " style="padding:0;">
  <div class="container-fluid mt-2 mb-2">
  	<div class="col-lg-12">
  		<div class="col-md-1 float-left" style="display: flex;">
  			<div class="logo">
  				<img src="MKUU.jpg" alt="..." width="40%">
  			</div>
  		</div>
	  	<div class="col-md-2 float-right text-white">
	  		<a href="ajax.php?action=logout" class="text-white"><?php echo $_SESSION['login_name'] ?> <i class="fa fa-power-off"></i></a>
	    </div>
    </div>
  </div>
  
</nav>