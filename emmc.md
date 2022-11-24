root@lubancat:~# fio -filename=/dev/mmcblk0 -direct=1 -iodepth 1 -thread -rw=randrw -rwmixread=70 -ioengine=psync -bs=16k -size=200G -numjobs=30 -runtime=100 -group_reporting -name=mytest1mytest1: (g=0): rw=randrw, bs=(R) 16.0KiB-16.0KiB, (W) 16.0KiB-16.0KiB, (T) 16.0KiB-16.0KiB, ioengine=psync, iodepth=1
...
fio-3.16
Starting 30 threads
Jobs: 30 (f=30): [m(30)][100.0%][r=28.5MiB/s,w=12.5MiB/s][r=1827,w=802 IOPS][eta 00m:00s]
mytest1: (groupid=0, jobs=30): err= 0: pid=3744: Thu Nov 24 15:55:05 2022
  read: IOPS=1859, BW=29.1MiB/s (30.5MB/s)(2906MiB/100010msec)
    clat (usec): min=546, max=190880, avg=9804.26, stdev=14121.87
     lat (usec): min=547, max=190882, avg=9806.48, stdev=14121.91
    clat percentiles (usec):
     |  1.00th=[   988],  5.00th=[  1450], 10.00th=[  2008], 20.00th=[  3195],
     | 30.00th=[  4490], 40.00th=[  5932], 50.00th=[  7439], 60.00th=[  8979],
     | 70.00th=[ 10683], 80.00th=[ 12649], 90.00th=[ 16188], 95.00th=[ 21627],
     | 99.00th=[ 71828], 99.50th=[141558], 99.90th=[156238], 99.95th=[162530],
     | 99.99th=[175113]
   bw (  KiB/s): min=13591, max=48972, per=100.00%, avg=29761.42, stdev=224.59, samples=5984
   iops        : min=  845, max= 3057, avg=1857.26, stdev=14.04, samples=5984
  write: IOPS=798, BW=12.5MiB/s (13.1MB/s)(1248MiB/100010msec); 0 zone resets
    clat (usec): min=956, max=220526, avg=14596.17, stdev=19875.27
     lat (usec): min=963, max=220535, avg=14604.90, stdev=19875.28
    clat percentiles (usec):
     |  1.00th=[  1450],  5.00th=[  2114], 10.00th=[  2933], 20.00th=[  4424],
     | 30.00th=[  5997], 40.00th=[  7570], 50.00th=[  9372], 60.00th=[ 11469],
     | 70.00th=[ 14353], 80.00th=[ 19530], 90.00th=[ 29230], 95.00th=[ 39060],
     | 99.00th=[141558], 99.50th=[154141], 99.90th=[179307], 99.95th=[187696],
     | 99.99th=[200279]
   bw (  KiB/s): min= 4890, max=23262, per=100.00%, avg=12780.92, stdev=114.99, samples=5984
   iops        : min=  300, max= 1453, avg=795.73, stdev= 7.20, samples=5984
  lat (usec)   : 750=0.05%, 1000=0.77%
  lat (msec)   : 2=7.43%, 4=15.38%, 10=38.67%, 20=27.76%, 50=8.24%
  lat (msec)   : 100=0.69%, 250=1.01%
  cpu          : usr=0.48%, sys=1.04%, ctx=266381, majf=0, minf=0
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued rwts: total=186010,79890,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=1

Run status group 0 (all jobs):
   READ: bw=29.1MiB/s (30.5MB/s), 29.1MiB/s-29.1MiB/s (30.5MB/s-30.5MB/s), io=2906MiB (3048MB), run=100010-100010msec
  WRITE: bw=12.5MiB/s (13.1MB/s), 12.5MiB/s-12.5MiB/s (13.1MB/s-13.1MB/s), io=1248MiB (1309MB), run=100010-100010msec

Disk stats (read/write):
  mmcblk0: ios=185758/79771, merge=4/2, ticks=1806578/1157425, in_queue=197940, util=99.15%
root@lubancat:~#
