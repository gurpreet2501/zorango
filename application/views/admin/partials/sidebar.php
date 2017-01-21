<div id="sidebar-wrapper" class="collapse sidebar-collapse">

	<div id="search">
		<!-- <form>
			<input class="form-control input-sm" type="text" name="search" placeholder="Search..." />
			<button type="submit" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
		</form>		 -->
	</div>
	<!-- #search -->

	<nav id="sidebar">
		<ul id="main-nav" class="open-active">
			
            <?php 

                build_menu([['Dashboard', 'data/index']]);

                // build_dropdown_menu('Users', 'fa fa-table', [
                //     ['Internal Admins', 'data/users/admin'],
                //     ['Pro/Businesses', 'users/pro'],
                //     // ['Customers', 'users/customer']
                // ]);

                 // build_dropdown_menu('Manage Location', 'fa fa-table', [
                 //    ['Add Cities', 'data/cities'],
                 //    ['Add States', 'data/states'],
                 //    ['Add Countries', 'data/countries'],
                 // ]);

                // build_dropdown_menu('Warranty Plans', 'fa fa-table', [
                //     ['Combined Plans', 'data/combined_plans'],
                //     ['Simple Plans', 'data/simple_plans']
                // ]);

                build_menu([
                    ['Wedding Items', 'data/wedding_products'],
                ]);
            ?>
		</ul>
	</nav> <!-- #sidebar -->
</div> <!-- /#sidebar-wrapper -->