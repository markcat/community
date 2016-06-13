<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>核心 - 文章管理 - 编辑</title>
  <!-- head js begin -->
  <%@ include file="../manager_include_js.jsp" %>
  <!-- head js end -->
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="${ctx}/resource/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
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
      	编辑文章
        <small>新增或修改</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li><a href="#">文章</a></li>
        <li class="active">编辑</li>
      </ol>
    </section>
        
	<!--  -->
    <section class="content">    
      <div class="row">    
        <div class="col-md-12">
		    <div class="box box-success">
		      <div class="box-body">
		        
		        <!-- 标题 -->
		        <input class="form-control input-lg" type="text" id="title" placeholder="在此输入标题">
		        <br><br>
		        
		        <!-- 状态 -->		        
                <div class="form-group">
                  <label>状态</label>
                  <select class="form-control" id="status">
                    <option value="public">发布</option>
                    <option value="draft">草稿</option>
                    <option value="pending">等待复核</option>
                  </select>
                </div>
		        
		        <!-- 分类 -->  
                <form role="form">
                <!-- text input -->
                <div class="form-group">
                  <div class="radio">
                    <label>
                      <input type="radio" name="classId" value="1">
						分类1
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="classId" value="2">
						分类2
                    </label>
                  </div>
                </div>
              </form>
		        
		      </div>
		    </div>
        </div>
      </div>
    </section>
	<!--  -->
	
	
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">正文
                <small>完全版编辑器</small>
              </h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fa fa-minus"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
	            <textarea id="editor1" rows="10" cols="80">                    
	            </textarea>
            </div>    
			<!-- 提交按钮 begin -->
		    <div class="box-footer">
		      <button type="button" class="btn btn-primary" onclick="saveForm()">发布</button>
		    </div>
			<!-- 提交按钮 end -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
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


<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${ctx}/resource/AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  function saveForm(){
	  ajaxSave();
  }
  //
  function ajaxSave(){
	  var title = $("#title").val();
	  var status = $("#status").val();
	  var classId = $("input[name='classId']:checked").val();
	  var content = $("#editor1").val();
	  $.get(
	  	"${ctx}/manager/communityarticle/save",
		{
	  		title : title ,
	  		status : status ,
	  		classId : classId ,
	  		content : content
		},
		function(data) {
			if(data.success){
				alert(data.message);
			}else{
				location.href="${ctx}/manager/communityarticle/list";
			}
		}
	  );
  }
  //
  
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>
</body>
</html>
