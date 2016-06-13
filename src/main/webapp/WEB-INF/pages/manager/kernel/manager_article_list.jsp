<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>核心 - 文章管理 - 列表</title>
  
  <!-- head js begin -->
  <%@ include file="../manager_include_js.jsp" %>
  <!-- head js end -->
  <!-- DataTables -->
  <link rel="stylesheet" href="${ctx}/resource/AdminLTE/plugins/datatables/dataTables.bootstrap.css"><!-- M -->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- header begin -->
  <%@ include file="../manager_header.jsp" %>
  <!-- header end -->

  <!-- left begin -->
  <%@ include file="../manager_left.jsp" %>
  <!-- left end -->  
  
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
		所有文章
        <small>列表</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li><a href="#">文章</a></li>
        <li class="active">所有文章</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
	                <tr>
	                  <th>标题</th>
	                  <th>作者</th>
	                  <th>分类</th>
	                  <th>评论</th>
	                  <th>日期</th>
	                </tr>
                </thead>
                <tbody>
                	<!-- 列表 begin -->
	                <c:forEach items="${newsArticles}" var="item">
		                <tr>
		                  <td>${item.title}</td>
		                  <td>${item.userId}</td>
		                  <td>${item.classId}</td>
		                  <td>${item.id}</td>
		                  <td>${item.createTime}</td>
		                </tr>
	                </c:forEach>
                	<!-- 列表 end -->
                </tbody>
                <tfoot>
	                <tr>
	                  <th>标题</th>
	                  <th>作者</th>
	                  <th>分类</th>
	                  <th>评论</th>
	                  <th>日期</th>
	                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <!-- footer begin -->
  <%@ include file="../manager_footer.jsp" %>
  <!-- footer end -->

  <!-- Control Sidebar -->
  <%@ include file="../manager_sidebar.jsp" %>
  <!-- /.control-sidebar -->
  
</div>
<!-- ./wrapper -->

<!-- JS list begin -->
<%@ include file="../manager_js_list.jsp" %>
<!-- JS list end -->


<!-- DataTables -->
<script src="${ctx}/resource/AdminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${ctx}/resource/AdminLTE/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="${ctx}/resource/AdminLTE/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
</body>
</html>
