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
				
				<!--%@include file="include/menu.jspf" %-->
				
				<!-- Collect the nav links, forms, and other content for toggling -->
				<ul class="nav nav-list">
				
					<li class="active open hsub">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> 资源管理
							<span class="badge badge-primary">6</span>
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>
						
						<ul class="submenu">
							<li class="">
								<a href="/stock/register">
									<i class="menu-icon fa fa-caret-right"></i>
									资产登记
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="/stock/instock">
									<i class="menu-icon fa fa-caret-right"></i>
									资产入库
								</a>

								<b class="arrow"></b>
							</li>							
							
							<li class="">
								<a href="/stock/outstock">
									<i class="menu-icon fa fa-caret-right"></i>
									资产出库
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="/stock/reinstock">
									<i class="menu-icon fa fa-caret-right"></i>
									资产再入库
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="active">
								<a href="/stock/search">
									<i class="menu-icon fa fa-caret-right"></i>
									资产查询
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="/stock/report">
									<i class="menu-icon fa fa-caret-right"></i>
									资产统计
								</a>

								<b class="arrow"></b>
							</li>																					
						</ul>
					</li>
					
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-cogs"></i>

							<span class="menu-text">
								系统管理

								<!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-primary">3</span>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="/stock/user">
									<i class="menu-icon fa fa-caret-right"></i>
									用户管理
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="/stock/permission">
									<i class="menu-icon fa fa-caret-right"></i>
									权限分配
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="/stock/base">
									<i class="menu-icon fa fa-caret-right"></i>
									基表维护
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
<!-- /.navbar-collapse -->
				
				
				

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
						
						<li class="active">资产查询</li>
						
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
													<form class="form-search">
														<span>
														类型：
														<select id="types" multiple="multiple" ></select>
														&nbsp;分类：
														<select id="categories" multiple="multiple" ></select>
														&nbsp;关键字：<input type="text" id="key" placeholder="关键字 ..." style="width:200px;" class="nav-search-input" id="nav-search-input" autocomplete="off">
														<button class="btn btn-sm btn-primary" style="margin-top:-4px;margin-left:5px;" ng-click="searchAssets(0)"> 查 询 </button>
														</span>
													</form>
													<form class="form-search" style="margin-top:5px;margin-bottom:45px;">
														<div style="float:left;margin-top:8px;">开始：</div>														
														<div class="input-group" style="width:200px;float:left;margin-left:3px;">
															<input class="form-control date-picker" id="begin" type="text" data-date-format="yyyy-mm-dd" />
															<span class="input-group-addon">
																<i class="fa fa-calendar bigger-110"></i>
															</span>
														</div>
														<div style="float:left;margin-top:8px;">&nbsp;&nbsp;结束：</div>														
														<div class="input-group" style="width:200px;float:left;margin-left:4px;">
															<input class="form-control date-picker" id="end" type="text" data-date-format="yyyy-mm-dd" />
															<span class="input-group-addon">
																<i class="fa fa-calendar bigger-110"></i>
															</span>
														</div>														
													</form>
													
													<div class="space-4"></div>
													<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>													
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
												<tr ng-repeat="asset in AssetsDTO.assets">
													<td>
														<a href="#" ng-bind="asset.name"></a>
													</td>
													<td ng-bind="asset.model"></td>
													<td class="hidden-480" ng-bind="asset.unit"></td>
													<td ng-bind="asset.quantity"></td>
													<td class="hidden-480">
														<span class="label label-sm label-warning" ng-bind="asset.cost">100</span>
													</td>
													<td class="hidden-480">
														<span class="label label-sm label-warning" ng-bind="asset.amount">600</span>
													</td>
													<td ng-bind="asset.brand"></td>
													<td ng-bind="asset.vendor"></td>
													<td ng-bind="asset.record_date"></td>
													<td ng-bind="asset.requisitioners"></td>
													<td ng-bind="asset.manager"></td>													
												</tr>
												<tr>
												<td colSpan="11" align="center">
													<table cellspacing="0" cellpadding="0" border="0" style="table-layout:auto;" class="ui-pg-table">
														<tbody>
															<tr>
																<td id="first_grid-pager" class="ui-pg-button ui-corner-all">
																	<span class="ui-icon ace-icon fa fa-angle-double-left bigger-140"></span>
																</td>
																<td id="prev_grid-pager" class="ui-pg-button ui-corner-all" style="cursor: default;">
																	<span class="ui-icon ace-icon fa fa-angle-left bigger-140"></span>
																</td>
																<td class="ui-pg-button " style="width: 4px; cursor: default;">
																	<span class="ui-separator"></span>
																</td>

																<!--td class="ui-pg-button ui-state-disabled" style="width: 4px; cursor: default;">
																	<span class="ui-separator"></span>
																</td-->
																<td dir="ltr">第<span id="sp_1_grid-pager" ng-bind="pageNo"></span>页，总共<span id="sp_1_grid-pager" ng-bind="pageCount"></span>页
																</td>
																<td class="ui-pg-button ui-state-disabled" style="width: 4px; cursor: default;">
																<span class="ui-separator"></span>
																</td>
																<td id="next_grid-pager" class="ui-pg-button ui-corner-all" style="cursor: default;">
																<span class="ui-icon ace-icon fa fa-angle-right bigger-140"></span>
																</td>
																<td id="last_grid-pager" class="ui-pg-button ui-corner-all" style="cursor: default;">
																<span class="ui-icon ace-icon fa fa-angle-double-right bigger-140"></span>
																</td>
																<td dir="ltr">
																</td>
															</tr>
														</tbody>
													</table>												
												</td>
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
		<script type="text/javascript" src="../assets/js/multiple-select.js"></script>
		<script src="../assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="../assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="../assets/js/date-time/locales/bootstrap-datepicker.zh-CN.js" charset="UTF-8"></script>
		
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
	
	$('.date-picker').datepicker({
		autoclose: true,
		todayHighlight: true,
		language: 'zh-CN'
	}).next().on(ace.click_event, function(){
		$(this).prev().focus();
	});
});

angular.module('app', ['ngResource'])
.factory('appDAO', function($resource) {
	return {
		getAllAssetsType:function() {
			return $resource('/api/get_all_assets_type.json');
		},
		getAllCategories:function() {
			return $resource('/api/get_all_category.json');
		},
		getActivities:function() {
			return $resource('/api/search_activities.json');
		},
		searchAssets:function() {
			return $resource('/api/search_assets.json');
		}
  	};	
})
.controller('appCtrl', ['$scope', 'appDAO', 
	function($scope, appDAO) {	
		
		$scope.searchActivities = function(searchTerm, index) {
			appDAO.getActivities().save({searchTerm:searchTerm, index:index}, function(data) {
				$scope.data = data;
			});
		};
		
		$scope.pageNo = 0;
		$scope.pageCount = 0;
		$scope.pageSize = 10;
		$scope.query = {
			"type": [],
			"category": [],
			"key": "",
			"begin": "",
			"end": "",
			"index":0
		};
		
		$scope.searchAssets = function(index) {			
			$scope.query['type'] = $("#types").val(); 
			$scope.query['category'] = $("#categories").val();
			$scope.query['key'] = $("#key").val();
			$scope.query['begin'] = $scope.getFormateDate($("#begin").val()); 
			$scope.query['end'] = $scope.getFormateDate($("#end").val()); 
			$scope.query['index'] = index;
			appDAO.searchAssets().save($scope.query, function(data) {
				$scope.AssetsDTO = data;
				$scope.pageCount = data.pageCount;
				$scope.pageNo = data.pageNo + 1;
			});
		};
		
		$scope.next = function() {
			
			
		};
		
		$scope.go = function() {
			$scope.query['index'] = 0;
			
			
		};
		
		$scope.first = function() {
			$scope.searchAssets(0);
		};
		
		$scope.last = function() {
						
		};
		
		$scope.getAllAssetsType = function() {
			appDAO.getAllAssetsType().get(function(data) {
				$scope.AssetsTypes = data.AssetsTypes;
			});
		};
		
		$scope.getAllCategories = function() {
			appDAO.getAllCategories().get(function(data) {
				$scope.AssetsCategories = data.AssetsCategories;
			});
		};
		
		$scope.searchActivities(null, 0);
		$scope.getAllCategories();
		$scope.getAllAssetsType();
		
		$scope.getFormateDate = function(date){
			var returnDate = null;
			if (date != null) {
				var formateDate = new Date(date);
				returnDate = new Date(formateDate.getFullYear(), formateDate.getMonth(), formateDate.getDate());
			}
			return returnDate;
		};
				
	}
]);

</script>

<script>
$(function() {
	$.ajax( {  
		url:'/api/get_all_assets_type',
	    type:'get',  
	    cache: false,  
	    dataType: 'json',  
	    success:function(data) {
	    	for (var i = 0; i < data.AssetsTypes.length; i++) {
     	  		var type = data.AssetsTypes[i];
     	  		var html = "<option value='" + type.id + "'>&nbsp;" + type.name + "</option>";
          	    $("#types").append(html);
     	  	}
	    	$("#types").multipleSelect({
                width: '100%',
          		filter: true,
          		animate: 'slide',
          		selectAll: true,
          		placeholder: "请选择类型",
          		selectAllText: ' 全选 ',
                allSelected: ' 全部 ',
                width: "200px",
                countSelected: '# of % selected',
                noMatchesFound: '无匹配项',
            });    
	    },  
	    error: function(data) {
	    	 
	    }  
	});
	
	$.ajax( {  
		url:'/api/get_all_category',
	    type:'get',  
	    cache: false,  
	    dataType: 'json',  
	    success:function(data) {
	    	for (var i = 0; i < data.AssetsCategories.length; i++) {
     	  		var category = data.AssetsCategories[i];
     	  		var html = "<option value='" + category.id + "'>&nbsp;" + category.name + "</option>";
          	    $("#categories").append(html);
     	  	}
	    	$("#categories").multipleSelect({
                width: '100%',
          		filter: true,
          		animate: 'slide',
          		selectAll: true,
          		placeholder: "请选择分类",
          		selectAllText: ' 全选 ',
                allSelected: ' 全部 ',
                width:"200px",
                countSelected: '# of % selected',
                noMatchesFound: '无匹配项',
            });    
	    },  
	    error: function(data) {
	    	 
	    }  
	});
});	
</script>
</body>
</html>
