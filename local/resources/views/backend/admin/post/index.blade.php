@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Quản Lý Bài Viết</h2>
            </div>
            <div class="pull-right">
                @permission(('post-create'))
                <a class="btn btn-success" href="{{ route('post.create') }}"> Tạo Mới Bài Viết</a>
                @endpermission
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    {!! Form::open(array('route' => 'post.search','method'=>'POST','id'=>'formSearchPost')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="form-group">
                <div class="col-md-6">
                    <div class="row">
                        {!! Form::text('txtSearch',null, array('class' => 'form-control','id'=>'txtSearch')) !!}
                    </div>
                </div>
                <div class="col-md-6">
                    {!! Form::button('Tìm Kiếm', array('id' => 'btnSearchPost','class'=>'btn btn-primary')) !!}
                </div>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
    @if(!empty($keywords))
        <div id="showKeySearch" class="col-md-12">
            <div class="row wrap-search">
                <i class="fa fa-caret-right" aria-hidden="true"></i>{{$keywords}} <a href="{{ route('post.search') }}">X</a>
            </div>
        </div>
        {{ Form::hidden('hdKeyword', $keywords) }}
    @endif
    <table class="table table-bordered">
        <tr>
            <th>TT</th>
            <th>Bài Viết</th>
            <th>Path</th>
            <th>Người Đăng</th>
            <th>Ngày Đăng</th>
            <th>Ngày Cập Nhật</th>
            <th>Tình Trạng</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($posts as $key => $data)
            <td>{{ ++$i }}</td>
            <td>{{ $data->title }}</td>
            <td>{{ $data->path }}</td>
            <td>{{ $data->users->name }}</td>
            <td>{{ $data->created_at }}</td>
            <td>{{ $data->updated_at }}</td>
            <td>{{$data->isPost}}</td>
            <td>
                @permission(('post-edit'))
                <a class="btn btn-primary" href="{{ route('post.edit',$data->id) }}">Edit</a>
                @endpermission
                @permission(('post-delete'))
                {!! Form::open(['method' => 'DELETE','route' => ['post.destroy', $data->id],'style'=>'display:inline']) !!}
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                {!! Form::close() !!}
                @endpermission
            </td>
            </tr>
        @endforeach
    </table>
    {!! $posts->links() !!}
@stop