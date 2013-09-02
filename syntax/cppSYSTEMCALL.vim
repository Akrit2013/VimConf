syn keyword syscalls	eaccess faccessat 
syn keyword syscalls	sleep ualarm usleep fchownat getcwd
syn keyword syscalls	get_current_dir_name getwd fexecve execv execle execl execvp execlp 
syn keyword syscalls	pathconf fpathconf sysconf confstr 
syn keyword syscalls	group_member 
syn keyword syscalls	ttyname ttyname_r
syn keyword syscalls	isatty ttyslot linkat symlinkat readlinkat unlinkat tcgetpgrp
syn keyword syscalls	tcsetpgrp getlogin getlogin_r setlogin 
syn keyword syscalls	revoke profil getusershell endusershell setusershell daemon getpass 
syn keyword syscalls	syscall lockf fdatasync crypt encrypt swab ctermid
syn keyword syscalls	fork clone execve exit _exit getdtablesize getpgid setpgid getpgrp setpgrp getpid getppid getpriority setpriority modify_ldt nanosleep nice pause personality prctl ptrace sched_get_priority_max sched_get_priority_min sched_getparam sched_getscheduler sched_rr_get_interval sched_setparam sched_setscheduler sched_yield vfork
syn keyword syscalls	wait wait3 waitpid wait4 capget capset getsid setsid fcntl open creat close read write readv writev pread pwrite lseek _llseek dup dup2 flock poll truncate ftruncate umask fsync access chdir fchdir chmod fchmod chown fchown lchown chroot stat lstat fstat statfs fstatfs readdir getdents 
syn keyword syscalls	mkdir mknod rmdir rename link symlink unlink readlink mount umount ustat utime utimes quotactl ioctl _sysctl acct getrlimit setrlimit getrusage uselib ioperm iopl outb reboot swapon swapoff bdflush sysfs sysinfo adjtimex alarm getitimer setitimer gettimeofday settimeofday stime time times uname vhangup nfsservctl vm86	
syn keyword syscalls	create_module delete_module init_module query_module brk sbrk mlock munlock mlockall munlockall mmap munmap mremap msync mprotect getpagesize sync cacheflush getdomainname setdomainname gethostid sethostid gethostname sethostname socketcall socket bind connect accept send sendto sendmsg recv recvfrom recvmsg listen select shutdown getsockname getpeername getsockopt setsockopt sendfile socketpair getuid setuid getgid setgid getegid setegid geteuid seteuid setregid setreuid getresgid setresgid getresuid setresuid
syn keyword syscalls	setfsgid setfsuid getgroups setgroups ipc sigaction sigprocmask sigpending sigsuspend signal kill sigvec ssetmask msgctl msgget msgsnd msgrcv pipe semctl semget semop shmctl shmget shmat shmdt
syn keyword syscalls	lseek64 pread64 pwrite64  truncate64  ftruncate64  lockf64  euidaccess 
syn keyword oldsyscalls get_kernel_syms	sigblock siggetmask sigsetmask sigmask sigpause
