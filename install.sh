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
echo "LƯU Ý: Bạn cần phải cài đặt nodejs sẵn trong máy! - pkg install nodejs"
echo "LƯU Ý: SHELL SCRIPT NÀY CHỈ DÀNH CHO TERMUX!"
echo "Để hệ thống hoạt động tối ưu, ít nhất dung lượng máy phải trống khoảng 1-2gb"
echo "Nhấn enter để bắt đầu tiến hành cài đặt..."

read

echo "[!] Tạo thư mục miraiv2..."
mkdir miraiv2/
chmod +x miraiv2/
echo "[!] Hoàn tất tạo thư mục miraiv2, tiến hành trỏ..."
cd miraiv2/
echo "[!] Trỏ thư mục hoàn tất, tiến hành tải bộ cài miraiv2"
git init
git add *
git stash
git pull
git remote add origin https://github.com/catalizCS/miraiv2
git fetch
git checkout origin/master -b master
echo "[!] Đã cài đặt source code thành công, tiến hành cài các gói cần thiết..."
pkg install libpixman libcairo pango xorgproto wget php libjpeg-turbo-dev libjpeg-dev librsvg
npm install
echo "[!] Đã cài các gói cần thiết thành công, tiến hành cài đặt file manager..."
wget https://raw.githubusercontent.com/ging-dev/termux-manager/master/install.sh
bash install.sh
echo "[!] Đã cài đặt file manager hoàn tất!"


echo "==============================================="
echo "Đã cài đặt thành công, để có thể mở file manager"
echo "để mở file manager, bạn chỉ cần copy 'cd && manager'(bỏ dấu ') là có thể mở file manager"
echo "Toàn bộ thư mục của bot được lưu tại '/home/miraiv2'"
echo "Nhấn enter để thoát tiến trình cài đặt..."
read