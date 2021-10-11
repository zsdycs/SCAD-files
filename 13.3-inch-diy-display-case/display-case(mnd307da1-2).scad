$thickness = 2.5; // 屏幕厚 2.5
$length = 291; // 屏幕长 291
$min_width = 187; // 屏幕最小宽 187

$plate_width = 8; // 屏幕小板宽 8
$plate_distance = 35; // 屏幕小板左右 35
$plate_length = 221; // 屏幕小板长 221

$plate_protect = 1.5; // 预留小板底部与边缘的距离 1.5

$port_length = 25; // 屏幕接口长 25
$port_plate_left = 56; // 屏幕接口离板左距离 56

$thickness_protect = 2; // 屏幕背部保护 厚 2
$screen_panel = 1.2; // 屏幕 盖板 厚 1.2

$back_pin_length = 25; // 背部 edp 接口长 25
$back_pin_width = 3; // 背部 edp 接口宽 3

$back_protect = 3; // 背板厚 3

$back_port_length = 20; // 背部 线孔 长 20
$back_port_width = 8; // 背部 线孔 宽 8
$back_port_cube_length = $back_port_length - $back_port_width/2; // 背部 线孔方块 长
$back_port_cylinder_width = $back_port_width/2; // 背部 线孔圆柱 半径

$back_depot_length = 130; // 背部驱动仓 长 130
$back_depot_width = 90; // 背部驱动仓 宽 90
$back_depot_height = 8; // 背部驱动仓 高 8

// 外壳
$shell_size_x = $length + ($plate_width + $plate_protect)*2;
$shell_size_y = $min_width + ($plate_width + $plate_protect)*2;
$shell_size_z = $thickness + $thickness_protect + $screen_panel;
$shell_size = [$shell_size_x, $shell_size_y, $shell_size_z];

// 屏幕
$screen_size_x = $length;
$screen_size_y = $min_width;
$screen_size_z = $thickness;
$screen_size = [$screen_size_x, $screen_size_y, $screen_size_z];

// 屏幕位置
$screen_translate_x = $plate_width + $plate_protect;
$screen_translate_y = $plate_width + $plate_protect;
$screen_translate_z = $thickness_protect;
$screen_translate = [$screen_translate_x, $screen_translate_y, $screen_translate_z];

// 屏幕小板
$plate_size_x = $plate_length;
$plate_size_y = $plate_width;
$plate_size_z = $thickness;
$plate_size = [$plate_size_x, $plate_size_y, $plate_size_z];

// 屏幕小板位置
$plate_translate_x = $plate_distance + $plate_width + $plate_protect;
$plate_translate_y = $plate_protect;
$plate_translate_z = $thickness_protect;
$plate_translate = [$plate_translate_x, $plate_translate_y, $plate_translate_z];

// 屏幕接口
$port_size_x = $port_length;
$port_size_y = $plate_width;
$port_size_z = $thickness + $thickness_protect;
$port_size = [$port_size_x, $port_size_y, $port_size_z];

// 屏幕接口位置
$port_translate_x = $port_plate_left + $plate_distance + $plate_width + $plate_protect;
$port_translate_y = $plate_protect;
$port_translate_z = 0;
$port_translate = [$port_translate_x, $port_translate_y, $port_translate_z];

// 屏幕面板
$screen_panel_size_x = $length + $plate_width*2;
$screen_panel_size_y = $min_width + $plate_width*2;
$screen_panel_size_z = $screen_panel;
$screen_panel_size = [$screen_panel_size_x, $screen_panel_size_y, $screen_panel_size_z];

// 屏幕面板位置
$screen_panel_translate_x = $plate_protect;
$screen_panel_translate_y = $plate_protect;
$screen_panel_translate_z = $thickness_protect + $thickness;
$screen_panel_translate = [$screen_panel_translate_x, $screen_panel_translate_y, $screen_panel_translate_z];

// 背部驱动仓外壳
$back_depot_shell_size_x = $back_depot_length + $back_protect*2;
$back_depot_shell_size_y = $back_depot_width + $back_protect;
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

// 背部驱动仓位置
$back_depot_translate_x = ($shell_size_x - $back_depot_length)/2;
$back_depot_translate_y = ($shell_size_y - $back_depot_width)/2 + $back_protect;
$back_depot_translate_z = -$back_depot_height;
$back_depot_translate = [$back_depot_translate_x, $back_depot_translate_y, $back_depot_translate_z];

// 背部 edp 接口
$back_pin_size_x = $back_pin_length;
$back_pin_size_y = $back_depot_shell_size_y;
$back_pin_size_z = $back_pin_width;
$back_pin_size = [$back_pin_size_x, $back_pin_size_y, $back_pin_size_z];

// 背部 edp 接口位置
$back_pin_translate_x = $back_depot_translate_x + $back_protect;
$back_pin_translate_y = $back_depot_shell_translate_y;
$back_pin_translate_z = -($back_pin_width + $back_protect);
$back_pin_translate = [$back_pin_translate_x, $back_pin_translate_y, $back_pin_translate_z];

// 背部 线孔 方形
$back_port_size_x = $back_port_cube_length;
$back_port_size_y = $back_depot_shell_size_y;
$back_port_size_z = $back_port_width;
$back_port_size = [$back_port_size_x, $back_port_size_y, $back_port_size_z];

// 背部 线孔 方形 位置
$back_port_translate_x = ($shell_size_x - $back_port_size_x)/2;
$back_port_translate_y = ($shell_size_y - $back_port_size_y)/2;
$back_port_translate_z = -$back_port_width;
$back_port_translate = [$back_port_translate_x, $back_port_translate_y, $back_port_translate_z];

// 背部 线孔 圆柱
$back_port_cylinder_r = $back_port_cylinder_width;
$back_port_cylinder_h = $back_depot_shell_size_y;

// 背部 线孔 圆柱左 位置
$back_port_cylinder_left_translate_x = ($shell_size_x - $back_port_size_x)/2;
$back_port_cylinder_left_translate_y = ($shell_size_y - $back_port_size_y)/2;
$back_port_cylinder_left_translate_z = -$back_port_cylinder_width;
$back_port_cylinder_left_translate = [$back_port_cylinder_left_translate_x, $back_port_cylinder_left_translate_y, $back_port_cylinder_left_translate_z];

// 背部 线孔 圆柱右 位置
$back_port_cylinder_right_translate_x = ($shell_size_x - $back_port_size_x)/2 + $back_port_cube_length;
$back_port_cylinder_right_translate_y = ($shell_size_y - $back_port_size_y)/2;
$back_port_cylinder_right_translate_z = -$back_port_cylinder_width;
$back_port_cylinder_right_translate = [$back_port_cylinder_right_translate_x, $back_port_cylinder_right_translate_y, $back_port_cylinder_right_translate_z];

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
    
    // 背部 edp 接口
    translate($back_pin_translate){
        color("MediumBlue")cube(center = false,size = $back_pin_size);
    }
    
    // 背部 线孔 方形
    translate($back_port_translate){
        color("MediumBlue")cube(center = false,size = $back_port_size);
    }
    
    // 背部 线孔 圆柱左
    translate($back_port_cylinder_left_translate){
        rotate([-90, 0, 0]){
            color("DarkMagenta")cylinder(h=$back_port_cylinder_h,r=$back_port_cylinder_r,center = false);
        }
    }
    
    // 背部 线孔 圆柱右
    translate($back_port_cylinder_right_translate){
        rotate([-90, 0, 0]){
            color("DarkMagenta")cylinder(h=$back_port_cylinder_h,r=$back_port_cylinder_r,center = false);
        }
    }
    
    // 文字
    translate([$shell_size_x/2,$shell_size_y/2,-($back_depot_height + $back_protect)]){
        mirror([1,0,0])linear_extrude(height = 0.6) {
        text(text = "Designed by lipk in Suzhou, October 11, 2021.",font = "Consolas:style=Regular",size = 3,halign = "center", spacing=0.9);
     }
    }
}










