<%-- 
    Document   : edit
    Created on : Nov 2, 2021, 4:29:37 PM
    Author     : laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../admin_layout.jsp" %>
    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Sản Phẩm</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Sản Phẩm</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Sửa Sản Phẩm</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="../product/update" method="post">
                  <input type="hidden" name="id" value="${product.id}" />
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputProductName">Tên Sản Phẩm*</label>
                    <input type="text" name="name" value="${product.name}"  class="form-control" id="exampleProductName" placeholder="VD: Cam,Quýt,....">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPrice">Giá*</label>
                    <input type="number"  name="price" value="${product.price}" class="form-control" id="exampleInputPrice" placeholder="VD: 300000,...">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputFile">Ảnh Sản Phẩm</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file"  name="image" value="${product.image}" class="custom-file-input" id="exampleInputFile">
                        <label class="custom-file-label" for="exampleInputFile">Chọn file ảnh</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text">Upload</span>
                      </div>
                    </div>
                  </div>
                 <div class="form-group">
                    <label for="exampleInputAmount">Sô lượng*</label>
                    <input type="number"  name="amount" value="${product.amount}" class="form-control" id="exampleInputAmount" placeholder="VD: 30,40,...">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputTitle">Tiêu Đề*</label>
                    <input type="text"  name="title" value="${product.title}" class="form-control" id="exampleInputTitle" placeholder="VD: Sản phẩm tốt">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputDescription">Mô Tả*</label>
                    <input type="text"  name="description" value="${product.description}" class="form-control" id="exampleInputDescription" placeholder="VD: Bla bla,.....">
                  </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Sửa</button>
                </div>
              </form>
            </div>
            
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<%@ include file="../footer.jsp" %>
