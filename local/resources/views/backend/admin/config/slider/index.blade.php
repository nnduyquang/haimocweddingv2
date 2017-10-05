@extends('backend.admin.master')
@section('styles')
@stop
@section('scripts')
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Quản Lý Slider</h2>
            </div>
            <div class="pull-right">
                @permission(('config-create'))
                <a class="btn btn-success" href="{{ route('config.slider.create') }}">Thêm Slider</a>
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
            <th>Hình Slider</th>
            <th>Sắp Xếp</th>
            <th>Ngày Tạo</th>
            <th>Ngày Cập Nhật</th>
            <th>Tình Trạng</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($sliders as $key => $data)
            <tr>
                <td>{{ ++$i }}</td>
                <td>  {{ Html::image($data->slider_image,'',array('id'=>'showSliderImage','class'=>'showHinhSlider'))}}</td>
                <td>{{ $data->slider_order }}</td>
                <td>{{ $data->created_at }}</td>
                <td>{{ $data->updated_at }}</td>
                <td>{{$data->slider_is_active==1?'Đang Hiện':'Tạm Tắt'}}</td>
                <td>
                    @permission(('config-edit'))
                    <a class="btn btn-primary" href="{{ route('config.slider.edit',$data->id) }}">Edit</a>
                    @endpermission
                    @permission(('config-delete'))
                    {!! Form::open(['method' => 'DELETE','route' => ['config.slider.destroy', $data->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                    @endpermission
                </td>
            </tr>
        @endforeach
    </table>
    {!! $sliders->links() !!}
@stop