<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ngApp" value="app"/>
<c:set var="ngController" value="appCtrl"/>
<%@include file="include/header.jspf" %>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<!-- #section:basics/sidebar.layout.shortcuts -->
						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>

						<!-- /section:basics/sidebar.layout.shortcuts -->
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->
				
				<%@include file="include/menu.jspf" %>

				<!-- /section:basics/sidebar.layout.minimize -->
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">Home</a>
						</li>

						<li>
							<a href="#">Other Pages</a>
						</li>
						
						<li class="active">Blank Page</li>
						
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" style="top:5px;">
						<button class="btn btn-custom btn-primary">增&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;加</button>&nbsp;
						<button class="btn btn-custom btn-primary">修&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改</button>&nbsp;
						<button class="btn btn-custom btn-primary">保&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存</button>&nbsp;
						<button class="btn btn-custom btn-primary">删&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;除</button>
					</div>
					<!-- /section:basics/content.searchbox -->
					
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">					
					<div class="page-content-area">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
									
								<div class="row">
									<div class="col-xs-12">
										<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</th>
													<th>标题</th>
													<th>类型</th>
													<th class="hidden-480">领队</th>
													<th>
														<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
														景点
													</th>
													<th class="hidden-480">出发地</th>
													<th>目的地</th>
												</tr>
											</thead>

											<tbody ng-repeat="activity in data.activities">
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">{{activity.title}}</a>
													</td>
													<td>{{activity.type_enum}}</td>
													<td class="hidden-480">{{activity.leader}}</td>
													<td>{{activity.scenic_spots}}</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">{{activity.departure}}</span>
													</td>

													<td>{{activity.destination}}</td>
												</tr>

											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->
									
									


								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->
			
			<%@include file="include/footer.jspf" %>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='../assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='../assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='../assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="../assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="../assets/js/ace-elements.min.js"></script>
		<script src="../assets/js/ace.min.js"></script>
		
		<script>
		jQuery(function($) {
			$(document).on('click', 'th input:checkbox' , function(){
				var that = this;
				$(this).closest('table').find('tr > td:first-child input:checkbox')
				.each(function(){
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});
			});
		});
		
		angular.module('app', ['ngResource'])
		.factory('activityDAO', function($resource) {
			return {
						getActivities:function() {
							return $resource('/api/search_activities.json');
						}
				   };	
		})
		.controller('appCtrl', ['$scope', 'activityDAO', 
			function($scope, activityDAO) {
				
				$scope.searchActivities = function(searchTerm, index) {
					activityDAO.getActivities().save({searchTerm:searchTerm, index:index}, function(data) {
						$scope.data = data;
					});
				};
				
				$scope.searchActivities(null, 0);
				
			}
		]);
		</script>
	</body>
</html>
