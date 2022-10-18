blocking-processes
===
# sleep
## how to test?
### Module part
get into sleep/ and make first
1. `sudo insmod sleep.ko`

### Userspace part
get into test/ and make first
1. `./test.sh`


# completions
## how to test?
### Module part(Only)
get into completions/ and make first
1. `sudo insmod completions.ko; sleep 1; sudo rmmod completions; sudo dmesg`
```
ben@ben-OptiPlex-7060:/working/ben/module/blocking-processes/completions$ sudo insmod completions.ko; sleep 1; sudo rmmod completions; sudo dmesg
[ 4131.452876] completions example
[ 4131.453204] Turn the crank
[ 4131.453214] Flywheel spins up
[ 4132.465561] completions exit
```
