#rm -f thttpd.pinout

#~/pin/pin -t ~/pin/source/tools/ManualExamples/obj-ia32/$1 -o thttpd.pinout -- /usr/local/sbin/thttpd -D -C /usr/local/www/thttpd_config -u root -g

/home/sxl463/pin-3.6-gcc-linux/pin -t -t /home/sxl463/pin-3.6-gcc-linux/source/tools/ManualExamples/obj-intel64/funcgvrelation.so -o thttpd.pinout -- ./thttpd -D -C /usr/local/www/thttpd_config -u root -g
