@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Quản Lý Loại Album</h2>
            </div>
            <div class="pull-right">
                @permission(('categoryalbum-create'))
                <a class="btn btn-success" href="{{ route('categoryalbum.create') }}"> Tạo Mới Loại Album</a>
                @endpermission
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    <table class="table table-bordered">
        <tr>
            <th>TT</th>
            <th>Tên</th>
            <th>Ngày Đăng</th>
            <th>Ngày Cập Nhật</th>
            <th>Tình Trạng</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($categoryalbums as $key => $data)
            <td>{{ ++$i }}</td>
            <td>{{ $data->name }}</td>
            <td>{{ $data->created_at }}</td>
            <td>{{ $data->updated_at }}</td>
            <td>{{$data->isActive}}</td>
            <td>
                @permission(('categoryalbum-edit'))
                <a class="btn btn-primary" href="{{ route('categoryalbum.edit',$data->id) }}">Edit</a>
                @endpermission
                @permission(('categoryalbum-delete'))
                {!! Form::open(['method' => 'DELETE','route' => ['news.destroy', $data->id],'style'=>'display:inline']) !!}
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                {!! Form::close() !!}
                @endpermission
            </td>
            </tr>
        @endforeach
    </table>
    {!! $categoryalbums->links() !!}
@stop