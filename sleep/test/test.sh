./cat_nonblock /proc/sleep
tail -f /proc/sleep &
./cat_nonblock /proc/sleep
kill %1
./cat_nonblock /proc/sleep
