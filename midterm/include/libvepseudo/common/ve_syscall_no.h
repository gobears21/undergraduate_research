VE_SYSCALL(0, ve_read, B, ve_read)
VE_SYSCALL(1, ve_write, B, ve_write)
VE_SYSCALL(2, ve_open, B, ve_open)
VE_SYSCALL(3, ve_close, N, ve_close)
VE_SYSCALL(4, ve_stat, B, ve_stat)
VE_SYSCALL(5, ve_fstat, B, ve_fstat)
VE_SYSCALL(6, ve_lstat, B, ve_lstat)
VE_SYSCALL(7, ve_poll, B, ve_poll)
VE_SYSCALL(8, ve_lseek, N, ve_lseek)
VE_SYSCALL(9, ve_mmap, B, ve_mmap)
VE_SYSCALL(10, ve_mprotect, B, ve_mprotect)
VE_SYSCALL(11, ve_munmap, B, ve_munmap)
VE_SYSCALL(12, ve_brk, B, ve_brk)
VE_SYSCALL(13, ve_rt_sigaction, B, ve_rt_sigaction)
VE_SYSCALL(14, ve_rt_sigprocmask, B, ve_rt_sigprocmask)
VE_SYSCALL(15, ve_rt_sigreturn, B, ve_rt_sigreturn)
VE_SYSCALL(16, ve_ioctl, B, ve_ioctl)
VE_SYSCALL(17, ve_pread64, B, ve_pread64)
VE_SYSCALL(18, ve_pwrite64, B, ve_pwrite64)
VE_SYSCALL(19, ve_readv, B, ve_readv)
VE_SYSCALL(20, ve_writev, B, ve_writev)
VE_SYSCALL(21, ve_access, B, ve_access)
VE_SYSCALL(22, ve_pipe, B, ve_pipe)
VE_SYSCALL(23, ve_select, B, ve_select)
VE_SYSCALL(24, ve_sched_yield, B, ve_sched_yield)
VE_SYSCALL(25, ve_mremap, B, NULL)
VE_SYSCALL(26, ve_msync, B, ve_msync)
VE_SYSCALL(27, ve_mincore, B, NULL)
VE_SYSCALL(28, ve_madvise, B, ve_madvise)
VE_SYSCALL(29, ve_shmget, B, ve_shmget)
VE_SYSCALL(30, ve_shmat, B, ve_shmat)
VE_SYSCALL(31, ve_shmctl, B, ve_shmctl)
VE_SYSCALL(32, ve_dup, N, ve_dup)
VE_SYSCALL(33, ve_dup2, N, ve_dup2)
VE_SYSCALL(34, ve_pause, B, ve_pause)
VE_SYSCALL(35, ve_nanosleep, B, ve_nanosleep)
VE_SYSCALL(36, ve_getitimer, B, ve_getitimer)
VE_SYSCALL(37, ve_alarm, N, ve_alarm)
VE_SYSCALL(38, ve_setitimer, B, ve_setitimer)
VE_SYSCALL(39, ve_getpid, N, ve_getpid)
VE_SYSCALL(40, ve_sendfile, B, ve_sendfile)
VE_SYSCALL(41, ve_socket, N, ve_socket)
VE_SYSCALL(42, ve_connect, B, ve_connect)
VE_SYSCALL(43, ve_accept, B, ve_accept)
VE_SYSCALL(44, ve_sendto, B, ve_sendto)
VE_SYSCALL(45, ve_recvfrom, B, ve_recvfrom)
VE_SYSCALL(46, ve_sendmsg, B, ve_sendmsg)
VE_SYSCALL(47, ve_recvmsg, B, ve_recvmsg)
VE_SYSCALL(48, ve_shutdown, N, ve_shutdown)
VE_SYSCALL(49, ve_bind, B, ve_bind)
VE_SYSCALL(50, ve_listen, N, ve_listen)
VE_SYSCALL(51, ve_getsockname, B, ve_getsockname)
VE_SYSCALL(52, ve_getpeername, B, ve_getpeername)
VE_SYSCALL(53, ve_socketpair, B, ve_socketpair)
VE_SYSCALL(54, ve_setsockopt, B, ve_setsockopt)
VE_SYSCALL(55, ve_getsockopt, B, ve_getsockopt)
VE_SYSCALL(56, ve_clone, B, ve_clone)
VE_SYSCALL(57, ve_fork, B, ve_fork)
VE_SYSCALL(58, ve_vfork, B, ve_vfork)
VE_SYSCALL(59, ve_execve, B, ve_execve)
VE_SYSCALL(60, ve_exit, B, ve_exit)
VE_SYSCALL(61, ve_wait4, B, ve_wait4)
VE_SYSCALL(62, ve_kill, N, ve_kill)
VE_SYSCALL(63, ve_uname, B, ve_uname)
VE_SYSCALL(64, ve_semget, B, ve_semget)
VE_SYSCALL(65, ve_semop, B, ve_semop)
VE_SYSCALL(66, ve_semctl, B, ve_semctl)
VE_SYSCALL(67, ve_shmdt, B, ve_shmdt)
VE_SYSCALL(68, ve_msgget, N, ve_msgget)
VE_SYSCALL(69, ve_msgsnd, B, ve_msgsnd)
VE_SYSCALL(70, ve_msgrcv, B, ve_msgrcv)
VE_SYSCALL(71, ve_msgctl, B, ve_msgctl)
VE_SYSCALL(72, ve_fcntl, B, ve_fcntl)
VE_SYSCALL(73, ve_flock, N, ve_flock)
VE_SYSCALL(74, ve_fsync, N, ve_fsync)
VE_SYSCALL(75, ve_fdatasync, N, ve_fdatasync)
VE_SYSCALL(76, ve_truncate, B, ve_truncate)
VE_SYSCALL(77, ve_ftruncate, N, ve_ftruncate)
VE_SYSCALL(78, ve_getdents, B, ve_getdents)
VE_SYSCALL(79, ve_getcwd, B, ve_getcwd)
VE_SYSCALL(80, ve_chdir, B, ve_chdir)
VE_SYSCALL(81, ve_fchdir, N, ve_fchdir)
VE_SYSCALL(82, ve_rename, B, ve_rename)
VE_SYSCALL(83, ve_mkdir, B, ve_mkdir)
VE_SYSCALL(84, ve_rmdir, B, ve_rmdir)
VE_SYSCALL(85, ve_creat, B, ve_creat)
VE_SYSCALL(86, ve_link, B, ve_link)
VE_SYSCALL(87, ve_unlink, B, ve_unlink)
VE_SYSCALL(88, ve_symlink, B, ve_symlink)
VE_SYSCALL(89, ve_readlink, B, ve_readlink)
VE_SYSCALL(90, ve_chmod, B, ve_chmod)
VE_SYSCALL(91, ve_fchmod, N, ve_fchmod)
VE_SYSCALL(92, ve_chown, B, ve_chown)
VE_SYSCALL(93, ve_fchown, N, ve_fchown)
VE_SYSCALL(94, ve_lchown, B, ve_lchown)
VE_SYSCALL(95, ve_umask, N, ve_umask)
VE_SYSCALL(96, ve_gettimeofday, B, ve_gettimeofday)
VE_SYSCALL(97, ve_getrlimit, B, ve_getrlimit)
VE_SYSCALL(98, ve_getrusage, B, ve_getrusage)
VE_SYSCALL(99, ve_sysinfo, B, ve_sysinfo)
VE_SYSCALL(100, ve_times, B, ve_times)
VE_SYSCALL(101, ve_ptrace, B, NULL)
VE_SYSCALL(102, ve_getuid, N, ve_getuid)
VE_SYSCALL(103, ve_syslog, B, ve_syslog)
VE_SYSCALL(104, ve_getgid, N, ve_getgid)
VE_SYSCALL(105, ve_setuid, B, ve_setuid)
VE_SYSCALL(106, ve_setgid, B, ve_setgid)
VE_SYSCALL(107, ve_geteuid, N, ve_geteuid)
VE_SYSCALL(108, ve_getegid, N, ve_getegid)
VE_SYSCALL(109, ve_setpgid, N, ve_setpgid)
VE_SYSCALL(110, ve_getppid, N, ve_getppid)
VE_SYSCALL(111, ve_getpgrp, N, ve_getpgrp)
VE_SYSCALL(112, ve_setsid, N, ve_setsid)
VE_SYSCALL(113, ve_setreuid, N, ve_setreuid)
VE_SYSCALL(114, ve_setregid, N, ve_setregid)
VE_SYSCALL(115, ve_getgroups, B, ve_getgroups)
VE_SYSCALL(116, ve_setgroups, B, ve_setgroups)
VE_SYSCALL(117, ve_setresuid, N, ve_setresuid)
VE_SYSCALL(118, ve_getresuid, B, ve_getresuid)
VE_SYSCALL(119, ve_setresgid, N, ve_setresgid)
VE_SYSCALL(120, ve_getresgid, B, ve_getresgid)
VE_SYSCALL(121, ve_getpgid, N, ve_getpgid)
VE_SYSCALL(122, ve_setfsuid, N, ve_setfsuid)
VE_SYSCALL(123, ve_setfsgid, N, ve_setfsgid)
VE_SYSCALL(124, ve_getsid, N, ve_getsid)
VE_SYSCALL(125, ve_capget, B, ve_capget)
VE_SYSCALL(126, ve_capset, B, ve_capset)
VE_SYSCALL(127, ve_rt_sigpending, B, ve_rt_sigpending)
VE_SYSCALL(128, ve_rt_sigtimedwait, B, ve_rt_sigtimedwait)
VE_SYSCALL(129, ve_rt_sigqueueinfo, B, ve_rt_sigqueueinfo)
VE_SYSCALL(130, ve_rt_sigsuspend, B, ve_rt_sigsuspend)
VE_SYSCALL(131, ve_sigaltstack, B, ve_sigaltstack)
VE_SYSCALL(132, ve_utime, B, ve_utime)
VE_SYSCALL(133, ve_mknod, B, ve_mknod)
VE_SYSCALL(134, ve_uselib, B, NULL)
VE_SYSCALL(135, ve_personality, B, NULL)
VE_SYSCALL(136, ve_ustat, B, ve_ustat)
VE_SYSCALL(137, ve_statfs, B, ve_statfs)
VE_SYSCALL(138, ve_fstatfs, B, ve_fstatfs)
VE_SYSCALL(139, ve_sysfs, B, NULL)
VE_SYSCALL(140, ve_getpriority, B, ve_getpriority)
VE_SYSCALL(141, ve_setpriority, B, ve_setpriority)
VE_SYSCALL(142, ve_sched_setparam, B, ve_sched_setparam)
VE_SYSCALL(143, ve_sched_getparam, B, ve_sched_getparam)
VE_SYSCALL(144, ve_sched_setscheduler, B, ve_sched_setscheduler)
VE_SYSCALL(145, ve_sched_getscheduler, B, ve_sched_getscheduler)
VE_SYSCALL(146, ve_sched_get_priority_max, B, ve_sched_get_priority_max)
VE_SYSCALL(147, ve_sched_get_priority_min, B, ve_sched_get_priority_min)
VE_SYSCALL(148, ve_sched_rr_get_interval, B, ve_sched_rr_get_interval)
VE_SYSCALL(149, ve_mlock, B, ve_mlock)
VE_SYSCALL(150, ve_munlock, B, ve_munlock)
VE_SYSCALL(151, ve_mlockall, B, ve_mlockall)
VE_SYSCALL(152, ve_munlockall, B, ve_munlockall)
VE_SYSCALL(153, ve_vhangup, N, ve_vhangup)
VE_SYSCALL(154, ve_modify_ldt, B, NULL)
VE_SYSCALL(155, ve_pivot_root, B, ve_pivot_root)
VE_SYSCALL(156, ve__sysctl, B, NULL)
VE_SYSCALL(157, ve_prctl, B, ve_prctl)
VE_SYSCALL(158, ve_arch_prctl, B, NULL)
VE_SYSCALL(159, ve_adjtimex, B, NULL)
VE_SYSCALL(160, ve_setrlimit, B, ve_setrlimit)
VE_SYSCALL(161, ve_chroot, B, ve_chroot)
VE_SYSCALL(162, ve_sync, N, ve_sync)
VE_SYSCALL(163, ve_acct, B, ve_acct)
VE_SYSCALL(164, ve_settimeofday, B, ve_settimeofday)
VE_SYSCALL(165, ve_mount, B, ve_mount)
VE_SYSCALL(166, ve_umount2, B, ve_umount2)
VE_SYSCALL(167, ve_swapon, B, NULL)
VE_SYSCALL(168, ve_swapoff, B, NULL)
VE_SYSCALL(169, ve_reboot, B, NULL)
VE_SYSCALL(170, ve_sethostname, B, ve_sethostname)
VE_SYSCALL(171, ve_setdomainname, B, ve_setdomainname)
VE_SYSCALL(172, ve_iopl, N, ve_iopl)
VE_SYSCALL(173, ve_ioperm, N, ve_ioperm)
VE_SYSCALL(174, ve_create_module, B, NULL)
VE_SYSCALL(175, ve_init_module, B, NULL)
VE_SYSCALL(176, ve_delete_module, B, NULL)
VE_SYSCALL(177, ve_get_kernel_syms, B, NULL)
VE_SYSCALL(178, ve_query_module, B, NULL)
VE_SYSCALL(179, ve_quotactl, B, ve_quotactl)
VE_SYSCALL(180, ve_nfsservctl, B, NULL)
VE_SYSCALL(181, ve_getpmsg, B, NULL)
VE_SYSCALL(182, ve_putpmsg, B, NULL)
VE_SYSCALL(183, ve_afs_syscall, B, NULL)
VE_SYSCALL(184, ve_tuxcall, B, NULL)
VE_SYSCALL(185, ve_security, B, NULL)
VE_SYSCALL(186, ve_gettid, N, ve_gettid)
VE_SYSCALL(187, ve_readahead, N, ve_readahead)
VE_SYSCALL(188, ve_setxattr, B, ve_setxattr)
VE_SYSCALL(189, ve_lsetxattr, B, ve_lsetxattr)
VE_SYSCALL(190, ve_fsetxattr, B, ve_fsetxattr)
VE_SYSCALL(191, ve_getxattr, B, ve_getxattr)
VE_SYSCALL(192, ve_lgetxattr, B, ve_lgetxattr)
VE_SYSCALL(193, ve_fgetxattr, B, ve_fgetxattr)
VE_SYSCALL(194, ve_listxattr, B, ve_listxattr)
VE_SYSCALL(195, ve_llistxattr, B, ve_llistxattr)
VE_SYSCALL(196, ve_flistxattr, B, ve_flistxattr)
VE_SYSCALL(197, ve_removexattr, B, ve_removexattr)
VE_SYSCALL(198, ve_lremovexattr, B, ve_lremovexattr)
VE_SYSCALL(199, ve_fremovexattr, B, ve_fremovexattr)
VE_SYSCALL(200, ve_tkill, B, ve_tkill)
VE_SYSCALL(201, ve_time, B, ve_time)
VE_SYSCALL(202, ve_futex, B, ve_futex)
VE_SYSCALL(203, ve_sched_setaffinity, B, ve_sched_setaffinity)
VE_SYSCALL(204, ve_sched_getaffinity, B, ve_sched_getaffinity)
VE_SYSCALL(205, ve_set_thread_area, B, NULL)
VE_SYSCALL(206, ve_io_setup, N, NULL)
VE_SYSCALL(207, ve_io_destroy, B, NULL)
VE_SYSCALL(208, ve_io_getevents, B, NULL)
VE_SYSCALL(209, ve_io_submit, B, NULL)
VE_SYSCALL(210, ve_io_cancel, B, NULL)
VE_SYSCALL(211, ve_get_thread_area, B, NULL)
VE_SYSCALL(212, ve_lookup_dcookie, B, ve_lookup_dcookie)
VE_SYSCALL(213, ve_epoll_create, N, ve_epoll_create)
VE_SYSCALL(214, ve_epoll_ctl_old, B, NULL)
VE_SYSCALL(215, ve_epoll_wait_old, B, NULL)
VE_SYSCALL(216, ve_remap_file_pages, B, NULL)
VE_SYSCALL(217, ve_getdents64, B, ve_getdents64)
VE_SYSCALL(218, ve_set_tid_address, B, ve_set_tid_address)
VE_SYSCALL(219, ve_restart_syscall, B, NULL)
VE_SYSCALL(220, ve_semtimedop, B, ve_semtimedop)
VE_SYSCALL(221, ve_fadvise64, N, ve_fadvise64)
VE_SYSCALL(222, ve_timer_create, B, ve_timer_create)
VE_SYSCALL(223, ve_timer_settime, B, ve_timer_settime)
VE_SYSCALL(224, ve_timer_gettime, B, ve_timer_gettime)
VE_SYSCALL(225, ve_timer_getoverrun, B, ve_timer_getoverrun)
VE_SYSCALL(226, ve_timer_delete, B, ve_timer_delete)
VE_SYSCALL(227, ve_clock_settime, B, ve_clock_settime)
VE_SYSCALL(228, ve_clock_gettime, B, ve_clock_gettime)
VE_SYSCALL(229, ve_clock_getres, B, ve_clock_getres)
VE_SYSCALL(230, ve_clock_nanosleep, B, ve_clock_nanosleep)
VE_SYSCALL(231, ve_exit_group, B, ve_exit_group)
VE_SYSCALL(232, ve_epoll_wait, B, ve_epoll_wait)
VE_SYSCALL(233, ve_epoll_ctl, B, ve_epoll_ctl)
VE_SYSCALL(234, ve_tgkill, B, ve_tgkill)
VE_SYSCALL(235, ve_utimes, B, ve_utimes)
VE_SYSCALL(236, ve_vserver, B, NULL)
VE_SYSCALL(237, ve_mbind, B, NULL)
VE_SYSCALL(238, ve_set_mempolicy, B, NULL)
VE_SYSCALL(239, ve_get_mempolicy, B, ve_get_mempolicy)
VE_SYSCALL(240, ve_mq_open, B, ve_mq_open)
VE_SYSCALL(241, ve_mq_unlink, B, ve_mq_unlink)
VE_SYSCALL(242, ve_mq_timedsend, B, ve_mq_timedsend)
VE_SYSCALL(243, ve_mq_timedreceive, B, ve_mq_timedreceive)
VE_SYSCALL(244, ve_mq_notify, B, ve_mq_notify)
VE_SYSCALL(245, ve_mq_getsetattr, B, ve_mq_getsetattr)
VE_SYSCALL(246, ve_kexec_load, B, NULL)
VE_SYSCALL(247, ve_waitid, B, ve_waitid)
VE_SYSCALL(248, ve_add_key, B, NULL)
VE_SYSCALL(249, ve_request_key, B, NULL)
VE_SYSCALL(250, ve_keyctl, B, NULL)
VE_SYSCALL(251, ve_ioprio_set, N, ve_ioprio_set)
VE_SYSCALL(252, ve_ioprio_get, N, ve_ioprio_get)
VE_SYSCALL(253, ve_inotify_init, N, ve_inotify_init)
VE_SYSCALL(254, ve_inotify_add_watch, B, ve_inotify_add_watch)
VE_SYSCALL(255, ve_inotify_rm_watch, N, ve_inotify_rm_watch)
VE_SYSCALL(256, ve_migrate_pages, B, NULL)
VE_SYSCALL(257, ve_openat, B, ve_openat)
VE_SYSCALL(258, ve_mkdirat, B, ve_mkdirat)
VE_SYSCALL(259, ve_mknodat, B, ve_mknodat)
VE_SYSCALL(260, ve_fchownat, B, ve_fchownat)
VE_SYSCALL(261, ve_futimesat, B, ve_futimesat)
VE_SYSCALL(262, ve_newfstatat, B, ve_newfstatat)
VE_SYSCALL(263, ve_unlinkat, B, ve_unlinkat)
VE_SYSCALL(264, ve_renameat, B, ve_renameat)
VE_SYSCALL(265, ve_linkat, B, ve_linkat)
VE_SYSCALL(266, ve_symlinkat, B, ve_symlinkat)
VE_SYSCALL(267, ve_readlinkat, B, ve_readlinkat)
VE_SYSCALL(268, ve_fchmodat, B, ve_fchmodat)
VE_SYSCALL(269, ve_faccessat, B, ve_faccessat)
VE_SYSCALL(270, ve_pselect6, B, ve_pselect6)
VE_SYSCALL(271, ve_ppoll, B, ve_ppoll)
VE_SYSCALL(272, ve_unshare, N, NULL)
VE_SYSCALL(273, ve_set_robust_list, B, NULL)
VE_SYSCALL(274, ve_get_robust_list, B, NULL)
VE_SYSCALL(275, ve_splice, B, ve_splice)
VE_SYSCALL(276, ve_tee, N, ve_tee)
VE_SYSCALL(277, ve_sync_file_range, B, ve_sync_file_range)
VE_SYSCALL(278, ve_vmsplice, B, NULL)
VE_SYSCALL(279, ve_move_pages, B, NULL)
VE_SYSCALL(280, ve_utimensat, B, ve_utimensat)
VE_SYSCALL(281, ve_epoll_pwait, B, ve_epoll_pwait)
VE_SYSCALL(282, ve_signalfd, B, ve_signalfd)
VE_SYSCALL(283, ve_timerfd_create, N, ve_timerfd_create)
VE_SYSCALL(284, ve_eventfd, N, ve_eventfd)
VE_SYSCALL(285, ve_fallocate, N, ve_fallocate)
VE_SYSCALL(286, ve_timerfd_settime, B, ve_timerfd_settime)
VE_SYSCALL(287, ve_timerfd_gettime, B, ve_timerfd_gettime)
VE_SYSCALL(288, ve_accept4, B, ve_accept4)
VE_SYSCALL(289, ve_signalfd4, B, ve_signalfd4)
VE_SYSCALL(290, ve_eventfd2, N, ve_eventfd2)
VE_SYSCALL(291, ve_epoll_create1, N, ve_epoll_create1)
VE_SYSCALL(292, ve_dup3, N, ve_dup3)
VE_SYSCALL(293, ve_pipe2, B, ve_pipe2)
VE_SYSCALL(294, ve_inotify_init1, N, ve_inotify_init1)
VE_SYSCALL(295, ve_preadv, B, ve_preadv)
VE_SYSCALL(296, ve_pwritev, B, ve_pwritev)
VE_SYSCALL(297, ve_rt_tgsigqueueinfo, B, ve_rt_tgsigqueueinfo)
VE_SYSCALL(298, ve_perf_event_open, B, NULL)
VE_SYSCALL(299, ve_recvmmsg, B, ve_recvmmsg)
VE_SYSCALL(300, ve_fanotify_init, B, ve_fanotify_init)
VE_SYSCALL(301, ve_fanotify_mark, B, ve_fanotify_mark)
VE_SYSCALL(302, ve_prlimit64, B, ve_prlimit64)
VE_SYSCALL(303, ve_name_to_handle_at, B, ve_name_to_handle_at)
VE_SYSCALL(304, ve_open_by_handle_at, B, ve_open_by_handle_at)
VE_SYSCALL(305, ve_clock_adjtime, B, ve_clock_adjtime)
VE_SYSCALL(306, ve_syncfs, N, ve_syncfs)
VE_SYSCALL(307, ve_sendmmsg, B, ve_sendmmsg)
VE_SYSCALL(308, ve_setns, B, NULL)
VE_SYSCALL(309, ve_getcpu, B, ve_getcpu)
VE_SYSCALL(310, ve_process_vm_readv, B, ve_process_vm_readv)
VE_SYSCALL(311, ve_process_vm_writev, B, ve_process_vm_writev)
VE_SYSCALL(312, ve_kcmp, B, NULL)
VE_SYSCALL(313, ve_finit_module, B, NULL)
VE_SYSCALL(314, ve_fexit_module, B, NULL)
VE_SYSCALL(315, ve_grow, B, ve_grow)
VE_SYSCALL(316, ve_sysve, B, ve_sysve)