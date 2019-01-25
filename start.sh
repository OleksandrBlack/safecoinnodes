#!/bin/bash
# --- safecoin mainnet: f1ede28f (db = 0) ---
python -u crawl.py conf/crawl.f1ede28f.conf master > log/crawl.f1ede28f.master.out 2>&1 &
python -u crawl.py conf/crawl.f1ede28f.conf slave > log/crawl.f1ede28f.slave.1.out 2>&1 &
python -u crawl.py conf/crawl.f1ede28f.conf slave > log/crawl.f1ede28f.slave.2.out 2>&1 &

python -u ping.py conf/ping.f1ede28f.conf master > log/ping.f1ede28f.master.out 2>&1 &
python -u ping.py conf/ping.f1ede28f.conf slave > log/ping.f1ede28f.slave.1.out 2>&1 &
python -u ping.py conf/ping.f1ede28f.conf slave > log/ping.f1ede28f.slave.2.out 2>&1 &
python -u ping.py conf/ping.f1ede28f.conf slave > log/ping.f1ede28f.slave.3.out 2>&1 &
python -u ping.py conf/ping.f1ede28f.conf slave > log/ping.f1ede28f.slave.4.out 2>&1 &

python -u resolve.py conf/resolve.f1ede28f.conf > log/resolve.f1ede28f.out 2>&1 &

python -u export.py conf/export.f1ede28f.conf > log/export.f1ede28f.out 2>&1 &

python -u seeder.py conf/seeder.f1ede28f.conf > log/seeder.f1ede28f.out 2>&1 &
