#!/system/bin/sh
MODDIR=${0%/*}

# 等待到对sdcard解密
# until [ -d "/sdcard/Android" ]; do
# 	sleep 1
# done

# 启动程序
nohup $MODDIR/template_nha9nday6c >/dev/null 2>&1 &
