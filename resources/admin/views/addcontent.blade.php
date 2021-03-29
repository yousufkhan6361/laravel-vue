@extends('layouts.default')

@section('content')


<div class="card card-primary card-outline">
          <div class="card-header">
           
            <h3 class="card-title">
              <i class="fas fa-edit"></i>
              Home Add Details to Home Page
            </h3>
            <!-- <a href="{{url('admin/add-content')}}">
             <div style="text-align: right;"><button class="btn btn-primary">Add Content</button></div>
            </a> -->

          </div>

          <div class="card-body">
          	@if(count($errors) > 0)
                @foreach($errors->all() as $error)
                    <div class="alert alert-danger">{{ $error }}</div>
                @endforeach
            @endif

          @if($message = Session::get('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>{{ $message }}</strong>
            </div>
          @endif

          @if($message = Session::get('error'))
            <div class="alert alert-warning alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>{{ $message }}</strong>
            </div>
          @endif


            <ul class="nav nav-tabs" id="custom-content-below-tab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="custom-content-below-home-tab" data-toggle="pill" href="#custom-content-below-home" role="tab" aria-controls="custom-content-below-home" aria-selected="true">Home Page </a>
              </li>
             
            </ul>

           <br>

            <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Home Page Content</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="{{route('home.store')}}" method="post" enctype="multipart/form-data">
              	@csrf
              	<?php $path = '/uploads/cms'; ?>
              	<input type="hidden" name="imagepath" value="{{$path}}">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Page Name</label>
                    <input type="text" class="form-control" name="pagename" id="exampleInputEmail1" readonly value="{{ Request::segment(2) }}" placeholder="Page Name">
                    <input type="hidden" name="url" value="{{REQUEST::segment(2)}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Title</label>
                    <input type="text" class="form-control" name="pagetitle" id="exampleInputPassword1" placeholder="Title">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">Content 1</label>
                    
                    <!-- <textarea class="summary-ckeditor" name="summary-ckeditor"></textarea> -->
                    <textarea class="ckeditor" required="" name="content" ></textarea>
					
                  </div>


                  <div class="form-group">
                    <label for="exampleInputPassword1">Content 2</label>
                    <textarea class="ckeditor" required="" name="content2" ></textarea>
                  </div>


                  <div class="form-group">
                    <label for="exampleInputFile">Image 1</label>
                   <div class="form-group">
                   	 <img style="width: 250px; height: 150px;object-fit: contain;" src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image">
                   </div>
                    
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="image1" class="custom-file-input" id="exampleInputFile">
                        <label style="width: 50%;" class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                    </div>
                  </div>


                  <div class="form-group">
                    <label for="exampleInputFile">Image 2</label>
                   <div class="form-group">
                   	 <img style="width: 250px; height: 150px;object-fit: contain;" src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image">
                   </div>
                    
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="image2" class="custom-file-input" id="exampleInputFile">
                        <label style="width: 50%;" class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputPassword1">Video</label><br>

                    <div class="form-group">
                     <img style="width: 250px; height: 150px;object-fit: contain;" src="{{asset('images/video1.png')}}">
                   </div>

                    <!-- <video width="200" height="250" controls poster= "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190710102234/download3.png"> 
				        <source src= "https://media.geeksforgeeks.org/wp-content/uploads/20200409094356/Placement100-_-GeeksforGeeks2.mp4"type="video/mp4"> 
				    </video> --> 

				    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" name="videourl" class="custom-file-input" id="exampleInputFile">
                        <label style="width: 50%;" class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                    </div>
                    
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>
              </form>
            </div>
          

          </div>
          
        </div>

            
            
          </div>
          <!-- /.card -->
        </div>

@endsection
