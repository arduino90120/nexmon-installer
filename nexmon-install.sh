sudo apt update
sudo apt install git gawk qpdf adb flex bison
git clone https://github.com/seemoo-lab/nexmon.git
cd nexmon
bash source setup_env.sh
make
cd patches/bcm4335b/6.30.171.1_sta/nexmon
make
make backup-firmware
make install-firmware
make
adb shell