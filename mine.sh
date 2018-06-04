killall ethdcrminer64
nohup taskset -c 1 /rootr/Claymore/ethdcrminer64 -epool local.ethermine.org:8008 -ewal 0x9eaba219ac4ac28c2c008b3d9968cdbb7c5250f0.rig4 -epsw x \
-asm 1 -dcri 28,8 -ethi 16 -wd 0 -erate 0 -logsmaxsize 0 \
-ftime 10 -tstop 85 -tt 55 -fanmin 50 -fanmax 80 \
-mport -3004 &
