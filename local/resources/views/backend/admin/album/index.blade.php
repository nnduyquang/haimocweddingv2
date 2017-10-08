@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Quản Lý Album</h2>
            </div>
            <div class="pull-right">
                @permission(('album-create'))
                <a class="btn btn-success" href="{{ route('album.create') }}"> Tạo Mới Album</a>
                @endpermission
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    {!! Form::open(array('route' => 'album.search','method'=>'POST','id'=>'formSearchAlbum')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="form-group">
                <div class="col-md-6">
                    <div class="row">
                        {!! Form::text('txtSearch',null, array('class' => 'form-control','id'=>'txtSearch')) !!}
                    </div>
                </div>
                <div class="col-md-6">
                    {!! Form::button('Tìm Kiếm', array('id' => 'btnSearchAlbum','class'=>'btn btn-primary')) !!}
                </div>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
    @if(!empty($keywords))
        <div id="showKeySearch" class="col-md-12">
            <div class="row wrap-search">
                <i class="fa fa-caret-right" aria-hidden="true"></i>{{$keywords}} <a href="{{ route('album.search') }}">X</a>
            </div>
        </div>
        {{ Form::hidden('hdKeyword', $keywords) }}
    @endif
    <table class="table table-bordered">
        <tr>
            <th>TT</th>
            <th>Tên Album</th>
            <th>Loại Album</th>
            <th>Người Đăng</th>
            <th>Ngày Đăng</th>
            <th>Ngày Cập Nhật</th>
            <th>Tình Trạng</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($albums as $key => $data)
            <td>{{ ++$i }}</td>
            <td>{{ $data->name }}</td>
            <td>{{ $data->categoryAlbums->name }}</td>
            <td>{{ $data->users->name }}</td>
            <td>{{ $data->created_at }}</td>
            <td>{{ $data->updated_at }}</td>
            <td>{{$data->isActive}}</td>
            <td>
                @permission(('album-edit'))
                <a class="btn btn-primary" href="{{ route('album.edit',$data->id) }}">Edit</a>
                @endpermission
                @permission(('album-delete'))
                {!! Form::open(['method' => 'DELETE','route' => ['album.destroy', $data->id],'style'=>'display:inline']) !!}
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                {!! Form::close() !!}
                @endpermission
            </td>
            </tr>
        @endforeach
    </table>
    {!! $albums->links() !!}
@stop