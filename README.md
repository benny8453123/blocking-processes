blocking-processes
===
Two sample are follow to lkmpg cp11.1 and cp11.2

# sleep
## how to test?
### Module part
get into sleep/ and make first
1. `sudo insmod sleep.ko`

### Userspace part
get into test/ and make first
1. `./test.sh`

::: info
Key point:
1. Using atomic
	> 1. ATOMIC_INIT
	> 2. atomic_read
	> 3. atomic_cmpxchg
	> 4. atomic_set

2. Using wait queue 
	> 1. DECLARE_WAIT_QUEUE_HEAD
	> 2. wait_event_interruptible
	> 3. wake_up
:::

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

::: info
Key point:
1. Using struct completion and api
	> 1. init_completion
	> 1. complete_all
	> 2. complete_and_exit
	> 3. wait_for_completion

2. Using kernel multi-threads
	> 1. struct task_struct
	> 2. kthread_create
	> 3. wake_up_process
	> 4. kthread_stop
:::
