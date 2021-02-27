#!/usr/bin/env bash
cat << "EOF"
  __  __   _                  _     ___                 _             _   _
 |  \/  | (_)  _ __    __ _  (_)   |_ _|  _ __    ___  | |_    __ _  | | | |
 | |\/| | | | | '__|  / _` | | |    | |  | '_ \  / __| | __|  / _` | | | | |
 | |  | | | | | |    | (_| | | |    | |  | | | | \__ \ | |_  | (_| | | | | |
 |_|  |_| |_| |_|     \__,_| |_|   |___| |_| |_| |___/  \__|  \__,_| |_| |_|

special thanks to:
 Trần Xuân Thanh(ging-dev) for termux-manager - https://github.com/ging-dev/termux-manager
 Phạm Quang Huy(huybopbi) for contribute this method :3


EOF

echo "==============================================="
echo "                MIRAI INSTALL                  "
echo "==============================================="
echo "==============================================="
echo "Install file make by CatalizCS with love <3"
echo "GITHUB: https://github.com/CatalizCS/miraiv2"
echo "MIRAIPROJECT LÀ MÃ NGUỒN MỞ, HOÀN TOÀN KHÔNG ĐƯỢC BUÔN BÁN Ở BẤT CỨ NƠI NÀO, HÃY CẨN THẬN!!"
echo "LƯU Ý: SHELL SCRIPT NÀY CHỈ DÀNH CHO TERMUX!"
echo "Để hệ thống hoạt động tối ưu, ít nhất dung lượng máy phải trống khoảng 1-2gb"
echo "Nhấn enter để bắt đầu tiến hành cài đặt..."
read

echo "[!] Tiến hành cập nhật, cài đặt các gói library còn thiếu..."
pkg install libpixman libcairo pango xorgproto wget php libjpeg-turbo-progs libjpeg-turbo-static libjpeg-turbo librsvg librsvg-static -y
git clone https://github.com/catalizCS/miraiv2
cd miraiv2
echo "[!] Đã cài đặt source code thành công, tiến hành cài các gói cần thiết..."
npm install
npm install sqlite3
echo "[!] Đã cài các gói cần thiết thành công, tiến hành cài đặt file manager..."
wget https://raw.githubusercontent.com/catalizcs/storage-data/master/install-fmanager.sh
bash install-fmanager.sh
echo "[!] Đã cài đặt file manager hoàn tất!"


echo "==============================================="
echo "Đã cài đặt thành công, tiếp theo hãy mở manager và edit file config.json, thêm appstate"
echo "để mở file manager, bạn chỉ cần copy và paste 'cd && manager'(bỏ dấu ') là có thể mở file manager"
echo "Toàn bộ thư mục của bot được lưu tại '/home/miraiv2'"
echo "Nhấn enter để thoát tiến trình cài đặt..."
read