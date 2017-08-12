<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside class="aside">
	<div class="aside-inner">
		<nav data-sidebar-anyclick-close="" class="sidebar">
			<ul class="nav">
				<li class="nav-heading "><span data-localize="sidebar.heading.HEADER">系统管理</span> <i class="icon-plus" style="float: right; cursor: pointer;" data-toggle="tooltip" data-placement="top" title="" data-original-title="添加工程" onclick="$('#myModal').modal('toggle');"></i>
				</li>
				<li class=" ">
					<a href="center/main.html" title="首页"> <em class="icon-home"></em> <span>首页</span></a>
				</li>
				<li class=" ">
					<a href="center/project.html" title="工程管理"> <em class="fa fa-briefcase"></em> <span>工程管理</span></a>
				</li>
				<li class=" ">
					<a href="center/service.html" title="线路管理"> <em class="fa fa-ellipsis-h"></em> <span>线路管理</span></a>
				</li>
				<li class=" ">
					<a href="center/service.html" title="实景预览"> <em class="fa fa-file-photo-o"></em> <span>实景预览</span></a>
				</li>
				<li class=" ">
					<a href="center/service.html" title="线性参考"> <em class="fa fa-location-arrow"></em> <span>线性参考</span></a>
				</li>
				<li class=" ">
					<a href="dashboard_h.html" title="用户管理">
						<em class="fa fa-user"></em>
						<span class="">用户管理</span>
					</a>
				</li>
				<li class=" ">
					<a href="dashboard_h.html" title="角色管理">
					<em class="fa fa-users"></em>
						<span class="">角色管理</span>
					</a>
				</li>
				<li class=" ">
					<a href="dashboard_h.html" title="部门管理">
					<em class="fa fa-tree"></em>
						<span class="">部门管理</span>
					</a>
				</li>
				<li class=" ">
					<a href="dashboard_h.html" title="系统配置">
					<em class="fa fa-wrench"></em>
						<span class="">系统配置</span>
					</a>
				</li>
			</ul>
		</nav>
	</div>
</aside>