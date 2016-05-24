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
						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>
						
						<button class="btn btn-success">
							<i class="ace-icon fa fa-search"></i>
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
							<a href="#">主页</a>
						</li>
						
						<li class="active">资产统计</li>
						
					</ul><!-- /.breadcrumb -->

					
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">					
					<div class="page-content-area">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
									
								<div class="row">
									<div class="col-xs-12">
													
										<div class="tabbable">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active">
													<a data-toggle="tab" href="#home">
														<i class="green ace-icon fa fa-search bigger-120"></i>
														资产分组汇总
													</a>
												</li>

												<li class="">
													<a data-toggle="tab" href="#messages">
														<i class="green ace-icon fa fa-search bigger-120"></i>
														资产消耗汇总
													</a>
												</li>
												
												<li class="">
													<a data-toggle="tab" href="#stock">
														<i class="green ace-icon fa fa-search bigger-120"></i>
														出入库明细
													</a>
												</li>
											</ul>

											<div class="tab-content">
												<div id="home" class="tab-pane fade active in">
													
													<form class="form-search">
														<span>															
															<input type="text" placeholder="Search ..." style="width:300px;" class="nav-search-input" id="nav-search-input" autocomplete="off">
															<button class="btn btn-sm btn-primary" style="margin-top:-4px;"> 查 询 </button>
														</span>
													</form>
													
													<div class="space-4"></div>
																			
													<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace">
															<span class="lbl"></span>
														</label>
													</th>
													<th>名称</th>
													<th>型号规格</th>
													<th class="hidden-480">单位</th>
													<th>
														数量
													</th>
													<th class="hidden-480">单价</th>
													<th>金额</th>
													<th>品牌</th>
													<th>供应商</th>
													<th>入库日期</th>
													<th>申购人</th>
													<th>项目负责人</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>2016年5月24号</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>2016年5月24号</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>2016年5月24号</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>2016年5月24号</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
											</tbody>
										</table>
												</div>

												<div id="messages" class="tab-pane fade">
													<form class="form-search">
														<span>															
															<input type="text" placeholder="Search ..." style="width:300px;" class="nav-search-input" id="nav-search-input" autocomplete="off">
															<button class="btn btn-sm btn-primary" style="margin-top:-4px;"> 查 询 </button>
														</span>
													</form>
													
													<div class="space-4"></div>
																			
													<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace">
															<span class="lbl"></span>
														</label>
													</th>
													<th>名称</th>
													<th>型号规格</th>
													<th class="hidden-480">单位</th>
													<th>
														数量
													</th>
													<th class="hidden-480">单价</th>
													<th>金额</th>
													<th>品牌</th>
													<th>供应商</th>
													<th>消耗数量</th>
													<th>申购人</th>
													<th>项目负责人</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>测试人</td>
													<td>负责人</td>													
												</tr>
											</tbody>
										</table>
												</div>

												<div id="stock" class="tab-pane fade">
													<form class="form-search">
														<span>															
															<input type="text" placeholder="Search ..." style="width:300px;" class="nav-search-input" id="nav-search-input" autocomplete="off">
															<button class="btn btn-sm btn-primary" style="margin-top:-4px;"> 查 询 </button>
														</span>
													</form>
													
													<div class="space-4"></div>
																			
													<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace">
															<span class="lbl"></span>
														</label>
													</th>
													<th>名称</th>
													<th>型号规格</th>
													<th class="hidden-480">单位</th>
													<th>
														数量
													</th>
													<th class="hidden-480">单价</th>
													<th>金额</th>
													<th>品牌</th>
													<th>供应商</th>
													<th>申购人</th>
													<th>出入库</th>
													<th>日期</th>
													<th>出入数量</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>入库</td>
													<td>2016年5月24日</td>
													<td>12</td>											
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>入库</td>
													<td>2016年5月24日</td>	
													<td>12</td>											
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>入库</td>
													<td>2016年5月24日</td>
													<td>12</td>												
												</tr>
												<tr>
													<td class="center">
														<label class="position-relative">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>
													<td>
														<a href="#">电容</a>
													</td>
													<td>0.01uF/6300VAC(57*29*45mm)</td>
													<td class="hidden-480">只</td>
													<td>6</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning">600</span>
													</td>
													<td>新容</td>
													<td>公司</td>
													<td>12</td>
													<td>出库</td>
													<td>2016年5月24日</td>
													<td>12</td>												
												</tr>
											</tbody>
										</table>
												</div>
												
										</div>
																			
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
