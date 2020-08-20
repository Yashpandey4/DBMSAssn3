#!/bin/bash
shopt -s nullglob

for i in ./*/*; do
  cd "$i"
  echo "$i"
  echo "5 7"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_5_7_1000000_10000.txt 7 5 output_5_7.txt 2>&1 | tee fail_log_0 || true 
  echo "7 10"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_7_10_1000000_10000.txt 10 7 output_7_10.txt 2>&1 | tee fail_log_1 || true 
  echo "2 5"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_2_5_1000000_10000.txt 5 2 output_2_5.txt 2>&1 | tee fail_log_2 || true 
  echo "7 40"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_7_40_1000000_10000.txt 40 7 output_7_40.txt 2>&1 | tee fail_log_3 || true 
  echo "10 7"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_10_7_1000000_10000.txt 7 10 output_10_7.txt 2>&1 | tee fail_log_4 || true 
  echo "3 60"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_3_60_1000000_10000.txt 60 3 output_3_60.txt 2>&1 | tee fail_log_5 || true 
  echo "10 100"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_10_100_1000000_10000.txt 100 10 output_10_100.txt 2>&1 | tee fail_log_6 || true 
  echo "5 50"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_5_50_1000000_10000.txt 50 5 output_5_50.txt 2>&1 | tee fail_log_7 || true 
  echo "10 10"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_10_10_1000000_10000.txt 10 10 output_10_10.txt 2>&1 | tee fail_log_8 || true
  echo "10 5"
  timeout 600 ./rtree /home/prats/Downloads/dbmsa3eval/dbms_rTree-master/data/queries_10_5_1000000_10000.txt 5 10 output_10_5.txt 2>&1 | tee fail_log_9 || true
  cd ../..
done