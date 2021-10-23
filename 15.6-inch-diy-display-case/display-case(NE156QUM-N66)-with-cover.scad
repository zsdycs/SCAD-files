// 屏幕参数-----------------------------------------------------------------------------------------------
$thickness = 3; // 屏幕厚 2.5
$length = 351; // 屏幕长 350
$min_width = 206; // 屏幕最小宽 205

$plate_width = 11.5; // 屏幕小板宽 11
$plate_thickness = 2; // 屏幕小板厚
$plate_length = 280; // 屏幕小板长 280

$screen_protect = 2; // 屏幕盖板边框 2
$cover_base = 5; // 盖板承载宽度 三边
$plate_base = 4; // 小板底部盖板承载宽度 底边

$thickness_protect = 3; // 屏幕背部保护 厚 3
$screen_panel = 1.5; // 屏幕 盖板 厚 1.5

$port_length = 30; // 屏幕接口长 30
$port_plate_left = 67; // 屏幕接口离板左距离 67

// 背部参数-----------------------------------------------------------------------------------------------

$back_pin_length = 25; // 背部 edp 接口长 25
$back_pin_width = 3; // 背部 edp 接口宽 3

$back_protect = 3; // 背板厚 3

// $back_port_length = 20; // 背部 线孔 长 20
// $back_port_width = 10; // 背部 线孔 宽 10
// $back_port_cube_length = $back_port_length - $back_port_width/2; // 背部 线孔方块 长
// $back_port_cylinder_width = $back_port_width/2; // 背部 线孔圆柱 半径

$back_depot_length = 60 + 25*2 + 2*2 + 40; // 背部驱动仓 长 61 + 25*2 + 2*2 + 20 板子长度 + edp 接口长 + 间隔壁 + 空间
$back_depot_width = 103.5 - 1.5; // 背部驱动仓 宽 103.5
$back_depot_height = 5; // 背部驱动仓 高 5

$back_box_height = 17; // 背部驱动仓外壳高 170

$back_depot_board_length = 60; // 驱动板长
$back_depot_board_width = 103.5 - 1.5; // 驱动板宽
$back_depot_board_height = 6.5; // 驱动板高

$back_depot_board_suspension = 6.5; // 驱动板悬浮高度

// --------------------------------------------------------------------------------------------------------

// 外壳 ~
$shell_size_x = $length + ($cover_base + $screen_protect)*2;
$shell_size_y = $cover_base + $min_width + $plate_width + $plate_base + $screen_protect*2;
$shell_size_z = $thickness + $thickness_protect + $screen_panel;
$shell_size = [$shell_size_x, $shell_size_y, $shell_size_z];

// 屏幕 ~
$screen_size_x = $length;
$screen_size_y = $min_width;
$screen_size_z = $thickness;
$screen_size = [$screen_size_x, $screen_size_y, $screen_size_z];

// 屏幕位置 ~
$screen_translate_x = ($shell_size_x - $screen_size_x)/2;
$screen_translate_y = $screen_protect + $plate_base + $plate_width;
$screen_translate_z = $thickness_protect;
$screen_translate = [$screen_translate_x, $screen_translate_y, $screen_translate_z];

// 屏幕小板 ~
$plate_size_x = $plate_length;
$plate_size_y = $plate_width;
$plate_size_z = $thickness;
$plate_size = [$plate_size_x, $plate_size_y, $plate_size_z];

// 屏幕小板位置 ~
$plate_translate_x = (($length + $cover_base*2 + $screen_protect*2) - $plate_length)/2; // 屏幕长 + 盖板基底 + 边框
$plate_translate_y = $plate_base + $screen_protect; // 盖板底部基底 + 屏幕盖板边框
$plate_translate_z = $thickness_protect;
$plate_translate = [$plate_translate_x, $plate_translate_y, $plate_translate_z];

// 屏幕接口 ~
$port_size_x = $port_length;
$port_size_y = $plate_width + $plate_base + $screen_protect;
$port_size_z = $thickness;
$port_size = [$port_size_x, $port_size_y, $port_size_z];

// 屏幕接口位置 ~
$port_translate_x = (($length + $cover_base*2 + $screen_protect*2) - $plate_length)/2 + $port_plate_left + $screen_protect + $cover_base;
$port_translate_y = 0;
$port_translate_z = 0;
$port_translate = [$port_translate_x, $port_translate_y, $port_translate_z];

// 屏幕面板 ~
$screen_panel_size_x = $length + $cover_base*2;
$screen_panel_size_y = $cover_base + $min_width + $plate_width + $plate_base; // 屏幕宽度 + 盖板承载宽度（顶部） + 小板底部盖板承载宽度 底边
$screen_panel_size_z = $screen_panel;
$screen_panel_size = [$screen_panel_size_x, $screen_panel_size_y, $screen_panel_size_z];

// 屏幕面板位置 ~
$screen_panel_translate_x = $screen_protect;
$screen_panel_translate_y = $screen_protect;
$screen_panel_translate_z = $thickness_protect + $thickness;
$screen_panel_translate = [$screen_panel_translate_x, $screen_panel_translate_y, $screen_panel_translate_z];

// 背部驱动仓外壳
$back_depot_shell_size_x = $back_depot_length + $back_protect*2;
$back_depot_shell_size_y = $back_depot_width + $back_protect*2;
$back_depot_shell_size_z = $back_depot_height + $back_protect;
$back_depot_shell_size = [$back_depot_shell_size_x, $back_depot_shell_size_y, $back_depot_shell_size_z];

// 背部驱动仓外壳位置
$back_depot_shell_translate_x = ($shell_size_x - $back_depot_shell_size_x)/2;
$back_depot_shell_translate_y = ($shell_size_y - $back_depot_shell_size_y)/2;
$back_depot_shell_translate_z = -$back_depot_shell_size_z;
$back_depot_shell_translate = [$back_depot_shell_translate_x, $back_depot_shell_translate_y, $back_depot_shell_translate_z];

// 背部驱动仓
$back_depot_size_x = $back_depot_length;
$back_depot_size_y = $back_depot_width;
$back_depot_size_z = $back_depot_height;
$back_depot_size = [$back_depot_size_x, $back_depot_size_y, $back_depot_size_z];

// 背部驱动仓盖板镂空
$back_depot_board_size = [$back_depot_size_x, $back_depot_size_y, $back_depot_height + $back_protect];

// 背部驱动板模拟大小
$back_depot_board_mock_size = [$back_depot_board_length, $back_depot_board_width, $back_depot_board_height];

// 背部驱动仓位置
$back_depot_translate_x = ($shell_size_x - $back_depot_length)/2;
$back_depot_translate_y = ($shell_size_y - $back_depot_width)/2;
$back_depot_translate_z = -$back_depot_height;
$back_depot_translate = [$back_depot_translate_x, $back_depot_translate_y, $back_depot_translate_z];

// 背部驱动仓盖板镂空位置
$back_depot_board_translate = [$back_depot_translate_x, $back_depot_translate_y, -($back_depot_height + $back_protect)];

// 背部驱动板模拟位置
$back_depot_board_mock_translate = [($shell_size_x - $back_depot_board_length)/2,($shell_size_y - $back_depot_board_width)/2, -$back_depot_board_height];

// 背部 edp 接口
$back_pin_size_x = $back_pin_length;
$back_pin_size_y = $back_depot_shell_size_y;
$back_pin_size_z = $back_pin_width;
$back_pin_size = [$back_pin_size_x, $back_pin_size_y, $back_pin_size_z];

// 背部 edp 接口位置 TODO
$back_pin_translate_x = (($length + $cover_base*2 + $screen_protect*2) - $plate_length)/2 + $port_plate_left + $screen_protect + $cover_base + ($port_size_x - $back_pin_size_x)/2;
$back_pin_translate_y = $back_depot_shell_translate_y;
$back_pin_translate_z = -($back_pin_width + $back_protect);
$back_pin_translate = [$back_pin_translate_x, $back_pin_translate_y, $back_pin_translate_z];

// 背部驱动仓外壳上层框位置
$back_box_translate = [$back_depot_shell_translate_x, $back_depot_shell_translate_y, -$back_depot_shell_size_z*2];

// 背部驱动仓外壳上层镂空
$back_upper_part_size = [$back_depot_size_x, $back_depot_size_y, $back_depot_shell_size_z];

// 背部驱动仓外壳上层镂空位置
$back_upper_part_translate = [$back_depot_translate_x, $back_depot_translate_y, -$back_depot_shell_size_z*2];

// // 背部 线孔 方形
// $back_port_size_x = $back_port_cube_length;
// $back_port_size_y = $back_depot_shell_size_y;
// $back_port_size_z = $back_port_width;
// $back_port_size = [$back_port_size_x, $back_port_size_y, $back_port_size_z];

// // 背部 线孔 方形 位置
// $back_port_translate_x = ($shell_size_x - $back_port_size_x)/2;
// $back_port_translate_y = ($shell_size_y - $back_port_size_y)/2;
// $back_port_translate_z = -(($back_depot_size_z - $back_port_size_z)/2 + $back_port_size_z);
// $back_port_translate = [$back_port_translate_x, $back_port_translate_y, $back_port_translate_z];

// // 背部 线孔 圆柱
// $back_port_cylinder_r = $back_port_cylinder_width;
// $back_port_cylinder_h = $back_depot_shell_size_y;

// // 背部 线孔 圆柱左 位置
// $back_port_cylinder_left_translate_x = ($shell_size_x - $back_port_size_x)/2;
// $back_port_cylinder_left_translate_y = ($shell_size_y - $back_port_size_y)/2;
// $back_port_cylinder_left_translate_z = -(($back_depot_size_z - $back_port_cylinder_width*2)/2 + $back_port_cylinder_width);
// $back_port_cylinder_left_translate = [$back_port_cylinder_left_translate_x, $back_port_cylinder_left_translate_y, $back_port_cylinder_left_translate_z];

// // 背部 线孔 圆柱右 位置
// $back_port_cylinder_right_translate_x = ($shell_size_x - $back_port_size_x)/2 + $back_port_cube_length;
// $back_port_cylinder_right_translate_y = ($shell_size_y - $back_port_size_y)/2;
// $back_port_cylinder_right_translate_z = -(($back_depot_size_z - $back_port_cylinder_width*2)/2 + $back_port_cylinder_width);
// $back_port_cylinder_right_translate = [$back_port_cylinder_right_translate_x, $back_port_cylinder_right_translate_y, $back_port_cylinder_right_translate_z];

difference(){
    // 外壳
    color("DimGray")cube(center = false,size = $shell_size);
    // 屏幕
    translate($screen_translate){
        color("Black")cube(center = false,size = $screen_size);
    }
    // 屏幕小板
    translate($plate_translate){
        color("Gray")cube(center = false,size = $plate_size);
    }
    // 屏幕接口
    translate($port_translate){
        color("LightSalmon")cube(center = false,size = $port_size);
    }
    // 屏幕面板
    translate($screen_panel_translate){
        color("Blue")cube(center = false,size = $screen_panel_size);
    }
    
    // 文字
    translate([$shell_size_x/2,$shell_size_y - ($shell_size_y / 6), 0]){
        mirror([1,0,0])linear_extrude(height = 1.2) {
        text(text = "Designed by lipk in Suzhou, October 24, 2021.",font = "Consolas:style=Regular",size = 3,halign = "center", spacing=0.9);
     }
    }
}

difference(){
    // 背部驱动仓外壳
    translate($back_depot_shell_translate){
        color("Gold")cube(center = false,size = $back_depot_shell_size);
    }
    
    // 背部驱动仓
    translate($back_depot_translate){
        color("Yellow")cube(center = false,size = $back_depot_size);
    }
    
    // 背部驱动仓盖板镂空 TODO
    translate($back_depot_board_translate){
        color("Yellow")cube(center = false,size = $back_depot_board_size);
    }
    
    // 背部 edp 接口
    translate($back_pin_translate){
        color("MediumBlue")cube(center = false,size = $back_pin_size);
    }

    // 背部驱动板下 插线 镂空
    translate([($shell_size_x - $back_depot_board_length)/2,($shell_size_y - $back_depot_board_width)/2 - $back_protect, -($back_depot_board_suspension + $back_depot_board_height)]){
        color("DarkMagenta")cube(center = false,size = [$back_depot_board_length, $back_depot_board_width + $back_protect, $back_depot_board_height + 3.5]);
    }
    
    // 背部驱动板上 插线 镂空
    translate([($shell_size_x - $back_depot_board_length)/2, ($shell_size_y - $back_depot_board_width)/2 - $back_protect, -3.5 -$back_depot_board_suspension]){
        color("DarkMagenta")cube(center = false,size = [$back_depot_board_length, $back_depot_board_width + $back_protect*2, 3.5]);
    }

}
    
    // 背部驱动板模拟 TODO
    // translate($back_depot_board_mock_translate){
    //     color("DarkMagenta")cube(center = false,size = $back_depot_board_mock_size);
    // }

    // 背部驱动板固定 左
    translate([($shell_size_x - $back_depot_board_length)/2 - $back_protect,($shell_size_y - $back_depot_board_width)/2, -$back_depot_board_height - $back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [$back_protect, $back_depot_board_width, $back_depot_board_height]);
    }
    // 背部驱动板固定 右
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length,($shell_size_y - $back_depot_board_width)/2, -$back_depot_board_height - $back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [$back_protect, $back_depot_board_width, $back_depot_board_height]);
    }
    // 背部驱动板固定 底
    translate([($shell_size_x - $back_depot_board_length)/2 - $back_protect,($shell_size_y - $back_depot_board_width)/2, -$back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [$back_protect*2 + $back_depot_board_length, $back_depot_board_width, $back_protect]);
    }

difference() {
    // 背部驱动仓外壳上层框
    translate($back_box_translate){
        color("Gold")cube(center = false,size = [$back_depot_shell_size_x, $back_depot_shell_size_y, $back_depot_shell_size_z + 3]);
    }
    
    // 背部驱动仓外壳上层镂空
    translate($back_upper_part_translate){
        color("Yellow")cube(center = false,size = [$back_depot_size_x, $back_depot_size_y, $back_depot_shell_size_z + 3]);
    }
    
    // 背部驱动板下 插线 镂空
    translate([($shell_size_x - $back_depot_board_length)/2,($shell_size_y - $back_depot_board_width)/2 - $back_protect, -($back_depot_board_suspension + $back_depot_board_height)]){
        color("DarkMagenta")cube(center = false,size = [$back_depot_board_length, $back_depot_board_width + $back_protect, $back_depot_board_height + 3.5]);
    }
    
    // 背部驱动板上 插线 镂空
    translate([($shell_size_x - $back_depot_board_length)/2, ($shell_size_y - $back_depot_board_width)/2 - $back_protect, -3.5 -$back_depot_board_suspension]){
        color("DarkMagenta")cube(center = false,size = [$back_depot_board_length, $back_depot_board_width + $back_protect*2, 3.5]);
    }
}
difference() {
    // 背部驱动板下 插线 保护
    translate([($shell_size_x - $back_depot_board_length)/2,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, -($back_depot_board_suspension + $back_depot_board_height)]) {
        color("Yellow")cube(center = false,size = [$back_depot_board_length, 1.5, $back_depot_board_height + 3.5]);
    }

    // 背部驱动板下 插线 保护 孔 HDMI
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.3 - $back_depot_board_suspension]) {
        color("MediumBlue")cube(center = false,size = [11.5, $back_depot_board_width, 3.3]);
    }

    // 背部驱动板下 插线 保护 孔 Type-C 1
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 9.1,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.1 - $back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [9.3, $back_depot_board_width, 3.1]);
    }

    // 背部驱动板下 插线 保护 孔 Type-C 2
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.1,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.1 - $back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [9.3, $back_depot_board_width, 3.1]);
    }

    // 背部驱动板下 插线 保护 孔 micro-usb
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.3 - 2.3 - 8,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3 - $back_depot_board_suspension - 0.8]){
        color("MediumBlue")cube(center = false,size = [8, $back_depot_board_width, 3]);
    }
}
    // 背部驱动板上 插线 保护
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 26.5 - 8.5, ($shell_size_y - $back_depot_board_width)/2 + $back_depot_width, -($back_depot_board_suspension + $back_depot_board_height)]){
        color("Gray")cube(center = false,size = [8.5, $back_protect, $back_depot_board_height + 3.5]);
    }

    // 背部驱动板下 插线 保护 孔 HDMI 边角 1
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension + 0]) {
        rotate([-90, 60, 0]) { 
            color("Gray")cylinder(1.5, 1, 1, $fn=3);
        }
    }

    // 背部驱动板下 插线 保护 孔 HDMI 边角 2
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - $back_depot_board_suspension + 0]) {
        rotate([-90, 0, 0]) { 
            color("Gray")cylinder(1.5, 1, 1, $fn=3);
        }
    }

    // 背部驱动板下 插线 保护 孔 micro-usb 边角 1
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.3 - 2.3,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension - 0.8]) {
        rotate([-90, 60, 0]) { 
            color("Gray")cylinder(1.5, 1, 1, $fn=3);
        }
    }

    // 背部驱动板下 插线 保护 孔 micro-usb 边角 2
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.3 - 2.3 - 8,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension - 0.8]) {
        rotate([-90, 0, 0]) { 
            color("Gray")cylinder(1.5, 1, 1, $fn=3);
        }
    }

difference() {
    // 背部驱动板下 插线 保护 孔 Type-C 1 填充
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 9.1,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.1 - $back_depot_board_suspension]){
        color("Gray")cube(center = false,size = [9.3, 1.5, 3.1]);
    }
    // 背部驱动板下 插线 保护 孔 Type-C 1 镂空
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 9.1 + 1.7,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.1 - $back_depot_board_suspension]){
        color("Gray")cube(center = false,size = [9.3 - (1.7*2), 1.5, 3.1]);
    }
    // 背部驱动板下 插线 保护 孔 Type-C 圆角 1
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 9.1 + 1.7,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension - 1.6]){
        rotate([-90, 0, 0]){
            color("Gray")cylinder(h=1.5, r=1.7,center = false, $fn=1000);
        }
    }
    // 背部驱动板下 插线 保护 孔 Type-C 圆角 2
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 9.1 + 9.3 - 1.7,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension - 1.6]){
        rotate([-90, 0, 0]){
            color("Gray")cylinder(h=1.5, r=1.7,center = false, $fn=1000);
        }
    }
}

difference() {
    // 背部驱动板下 插线 保护 孔 Type-C 2 填充
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.1,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.1 - $back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [9.3, 1.5, 3.1]);
    }
    // 背部驱动板下 插线 保护 孔 Type-C 2 镂空
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.1 + 1.7,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5, - 3.1 - $back_depot_board_suspension]){
        color("MediumBlue")cube(center = false,size = [9.3 - (1.7*2), 1.5, 3.1]);
    }
    // 背部驱动板下 插线 保护 孔 Type-C 圆角 3
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.1 + 1.7,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension - 1.6]){
        rotate([-90, 0, 0]){
            color("Gray")cylinder(h=1.5, r=1.7,center = false, $fn=1000);
        }
    }

    // 背部驱动板下 插线 保护 孔 Type-C 圆角 4
    translate([($shell_size_x - $back_depot_board_length)/2 + $back_depot_board_length - 6.1 - 11.2 - 4.5 - 4.5 - 9.3 - 9.1 + 9.3 - 1.7,($shell_size_y - $back_depot_board_width)/2 - $back_protect + 1.5,- $back_depot_board_suspension - 1.6]){
        rotate([-90, 0, 0]){
            color("Gray")cylinder(h=1.5, r=1.7,center = false, $fn=1000);
        }
    }
}

//////////////////////////////////////////////////////////////////////   注意 盖子需要分开打印   //////////////////////////////////////////////////////////////////////

// 驱动板仓盖子
difference() {
    // 填充
    translate([($shell_size_x - $back_depot_board_length)/2 - $back_protect*2,($shell_size_y - $back_depot_board_width)/2 - 40, -($back_depot_board_suspension + $back_depot_board_height + $back_protect) - 30]){
        color("Lime")cube(center = false,size = [$back_protect*2 + $back_protect*2 + $back_depot_board_length, $back_depot_board_width, $back_depot_board_suspension + $back_depot_board_height + $back_protect]);
    }
    // 镂空
    translate([($shell_size_x - $back_depot_board_length)/2 - $back_protect - 0.2,($shell_size_y - $back_depot_board_width)/2 - 40, -($back_depot_board_suspension + $back_depot_board_height) - 30]){
        color("Lime")cube(center = false,size = [0.4 + $back_protect*2 + $back_depot_board_length, $back_depot_board_width, $back_depot_board_suspension + $back_depot_board_height]);
    }
    // 开盖口
    translate([($shell_size_x - $back_protect*2 + $back_protect*2 + $back_depot_board_length)/2 - ($back_protect*2 + $back_depot_board_length),($shell_size_y)/2 - ($back_depot_board_width / 16) - 40, -($back_depot_board_suspension + $back_depot_board_height) + $back_depot_board_height + $back_protect - 30]){
        color("Black")cube(center = false,size = [$back_protect*2 + $back_protect*2 + $back_depot_board_length, $back_depot_board_width / 8, $back_depot_board_suspension - $back_protect]);
    }
}

difference() {
    // 驱动板仓盖子 卡扣 1
    translate([($shell_size_x - $back_depot_board_length)/2 - $back_protect - 0.2,($shell_size_y - $back_depot_board_width)/2 - 40, -($back_depot_board_suspension + $back_depot_board_height) + $back_depot_board_height + $back_protect - 30]){
        color("Red")cube(center = false,size = [$back_protect/2, $back_depot_board_width, $back_depot_board_suspension - $back_protect]);
    }
    // 开盖口
    translate([($shell_size_x - $back_protect*2 + $back_protect*2 + $back_depot_board_length)/2 - ($back_protect*2 + $back_depot_board_length),($shell_size_y)/2 - ($back_depot_board_width / 16) - 40, -($back_depot_board_suspension + $back_depot_board_height) + $back_depot_board_height + $back_protect - 30]){
        color("Black")cube(center = false,size = [$back_protect*2 + $back_protect*2 + $back_depot_board_length, $back_depot_board_width / 8, $back_depot_board_suspension - $back_protect]);
    }
}

difference() {
    // 驱动板仓盖子 卡扣 2
    translate([($shell_size_x - $back_depot_board_length)/2 - $back_protect - 0.2 + 0.4 + $back_protect*2 + $back_depot_board_length - $back_protect/2,($shell_size_y - $back_depot_board_width)/2 - 40, -($back_depot_board_suspension + $back_depot_board_height) + $back_depot_board_height + $back_protect - 30]){
        color("Red")cube(center = false,size = [$back_protect/2, $back_depot_board_width, $back_depot_board_suspension - $back_protect]);
    }
    // 开盖口
    translate([($shell_size_x - $back_protect*2 + $back_protect*2 + $back_depot_board_length)/2 - ($back_protect*2 + $back_depot_board_length),($shell_size_y)/2 - ($back_depot_board_width / 16) - 40, -($back_depot_board_suspension + $back_depot_board_height) + $back_depot_board_height + $back_protect - 30]){
        color("Black")cube(center = false,size = [$back_protect*2 + $back_protect*2 + $back_depot_board_length, $back_depot_board_width / 8, $back_depot_board_suspension - $back_protect]);
    }
}
