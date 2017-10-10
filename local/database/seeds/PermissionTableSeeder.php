<?php

use Illuminate\Database\Seeder;
use App\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permission = [
//            KHỞI TẠO BAN ĐẦU
//            [
//                'name' => 'role-list',
//                'display_name' => 'Xem Danh Sách Quyền',
//                'description' => 'Được Xem Danh Sách Quyền',
//				'category_permission_id'=>1
//            ],
//            [
//                'name' => 'role-create',
//                'display_name' => 'Tạo Quyền Mới',
//                'description' => 'Được Tạo Quyền Mới',
//				'category_permission_id'=>1
//            ],
//            [
//                'name' => 'role-edit',
//                'display_name' => 'Cập Nhật Quyền',
//                'description' => 'Được Cập Nhật Quyền',
//				'category_permission_id'=>1
//            ],
//            [
//                'name' => 'role-delete',
//                'display_name' => 'Xóa Quyền',
//                'description' => 'Được Xóa Quyền',
//				'category_permission_id'=>1
//            ]
//            ,
//            [
//                'name' => 'user-list',
//                'display_name' => 'Xem Danh Sách Users',
//                'description' => 'Được Xem Danh Sách Users',
//				'category_permission_id'=>2
//            ],
//            [
//                'name' => 'user-create',
//                'display_name' => 'Tạo User',
//                'description' => 'Được Tạo User Mới',
//				'category_permission_id'=>2
//            ],
//            [
//                'name' => 'user-edit',
//                'display_name' => 'Cập Nhật User',
//                'description' => 'Được Cập Nhật User',
//				'category_permission_id'=>2
//            ],
//            [
//                'name' => 'user-delete',
//                'display_name' => 'Xóa user',
//                'description' => 'Được Xóa User',
//				'category_permission_id'=>2
//            ],
////            KẾT THÚC KHỞI TẠO BAN ĐẦU
//            [
//                'name' => 'news-list',
//                'display_name' => 'Xem Toàn Bộ Tin Tức',
//                'description' => 'Được Xem Toàn Bộ Tin Tức',
//                'category_permission_id'=>3
//            ],
//            [
//                'name' => 'news-create',
//                'display_name' => 'Tạo Tin Tức Mới',
//                'description' => 'Được Tạo Tin Tức Mới',
//                'category_permission_id'=>3
//            ],
//            [
//                'name' => 'news-edit',
//                'display_name' => 'Cập Nhật Tin Tức',
//                'description' => 'Được Cập Nhật Tin Tức',
//                'category_permission_id'=>3
//            ],
//            [
//                'name' => 'news-delete',
//                'display_name' => 'Xóa Tin Tức',
//                'description' => 'Được Xóa Tin Tức',
//                'category_permission_id'=>3
//            ],
//            [
//                'name' => 'config-list',
//                'display_name' => 'Toàn Quyền Cấu Hình',
//                'description' => 'Được Toàn Quyền Cấu Hình',
//                'category_permission_id'=>4
//            ],
//            [
//                'name' => 'config-create',
//                'display_name' => 'Thêm Mới Cấu Hình',
//                'description' => 'Được Thêm Mới Cấu Hình',
//                'category_permission_id'=>4
//            ],
//            [
//                'name' => 'config-edit',
//                'display_name' => 'Cập Nhật Cấu Hình',
//                'description' => 'Được Cập Nhật Cấu Hình',
//                'category_permission_id'=>4
//            ],
//            [
//                'name' => 'config-delete',
//                'display_name' => 'Xóa Cấu Hình',
//                'description' => 'Được Xóa Cấu Hình',
//                'category_permission_id'=>4
//            ],

//            [
//                'name' => 'location-list',
//                'display_name' => 'Xem Danh Sách Địa Điểm',
//                'description' => 'Được Xem Danh Sách Địa Điểm',
//                'category_permission_id'=>5
//            ],
//            [
//                'name' => 'location-create',
//                'display_name' => 'Thêm Mới Địa Điểm',
//                'description' => 'Được Thêm Mới Địa Điểm',
//                'category_permission_id'=>5
//            ],
//            [
//                'name' => 'location-edit',
//                'display_name' => 'Cập Nhật Địa Điểm',
//                'description' => 'Được Cập Nhật Địa Điểm',
//                'category_permission_id'=>5
//            ],
//            [
//                'name' => 'location-delete',
//                'display_name' => 'Xóa Địa Điểm',
//                'description' => 'Được Xóa Địa Điểm',
//                'category_permission_id'=>5
//            ]
//            [
//                'name' => 'album-list',
//                'display_name' => 'Xem Danh Sách Album',
//                'description' => 'Được Xem Danh SáchAlbum',
//                'category_permission_id'=>6
//            ],
//            [
//                'name' => 'album-create',
//                'display_name' => 'Thêm Mới Album',
//                'description' => 'Được Thêm Mới Album',
//                'category_permission_id'=>6
//            ],
//            [
//                'name' => 'album-edit',
//                'display_name' => 'Cập Nhật Album',
//                'description' => 'Được Cập Nhật Album',
//                'category_permission_id'=>6
//            ],
//            [
//                'name' => 'album-delete',
//                'display_name' => 'Xóa Địa Album',
//                'description' => 'Được Xóa Album',
//                'category_permission_id'=>6
//            ]
//            [
//                'name' => 'quotation-list',
//                'display_name' => 'Xem Danh Sách Báo Giá',
//                'description' => 'Được Xem Danh Sách Báo Giá',
//                'category_permission_id'=>8
//            ],
//            [
//                'name' => 'quotation-create',
//                'display_name' => 'Thêm Mới Báo Giá',
//                'description' => 'Được Thêm Mới Báo Giá',
//                'category_permission_id'=>8
//            ],
//            [
//                'name' => 'quotation-edit',
//                'display_name' => 'Cập Nhật Báo Giá',
//                'description' => 'Được Cập Nhật Báo Giá',
//                'category_permission_id'=>8
//            ],
//            [
//                'name' => 'quotation-delete',
//                'display_name' => 'Xóa Địa Báo Giá',
//                'description' => 'Được Xóa Báo Giá',
//                'category_permission_id'=>8
//            ],
//            [
//                'name' => 'categoryalbum-list',
//                'display_name' => 'Xem Danh Sách Loại Album',
//                'description' => 'Được Xem Danh Sách Loại Album',
//                'category_permission_id'=>9
//            ],
//            [
//                'name' => 'categoryalbum-create',
//                'display_name' => 'Thêm Mới Loại Album',
//                'description' => 'Được Thêm Mới Loại Album',
//                'category_permission_id'=>9
//            ],
//            [
//                'name' => 'categoryalbum-edit',
//                'display_name' => 'Cập Nhật Loại Album',
//                'description' => 'Được Cập Nhật Loại Album',
//                'category_permission_id'=>9
//            ],
//            [
//                'name' => 'categoryalbum-delete',
//                'display_name' => 'Xóa Địa Loại Album',
//                'description' => 'Được Xóa Loại Album',
//                'category_permission_id'=>9
//            ]
            [
                'name' => 'post-list',
                'display_name' => 'Xem Danh Sách Bài Viết',
                'description' => 'Được Xem Danh Sách Bài Viết',
                'category_permission_id'=>10
            ],
            [
                'name' => 'post-create',
                'display_name' => 'Thêm Mới Bài Viết',
                'description' => 'Được Thêm Mới Bài Viết',
                'category_permission_id'=>10
            ],
            [
                'name' => 'post-edit',
                'display_name' => 'Cập Nhật Bài Viết',
                'description' => 'Được Cập Nhật Bài Viết',
                'category_permission_id'=>10
            ],
            [
                'name' => 'post-delete',
                'display_name' => 'Xóa Địa Bài Viết',
                'description' => 'Được Xóa Bài Viết',
                'category_permission_id'=>10
            ]

        ];
        foreach ($permission as $key => $value) {
            Permission::create($value);
        }
    }
}
