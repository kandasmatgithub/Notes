## Number of open files and file descriptors limit

  **nofile** (ulimit -Hn) - This limit determines the number of files any process on the system can have open
  
  **fs.nr_open** - Max number of file handles/descriptors a process can allocate.	1048576 (on some big systems too low)
  
  **fs.file-max** - Total number of open file handles allowed for entire system	Calculated dynamically based on system (and usually quite large)
  
  **fs.nr_open** - This sysctl limit acts as an upper limit for ulimit -Hn. Since an open file (or a network connection) requires three file descriptors, fs.nr_open should be at least three times as large as the value set for ulimit -Hn
  
  > fs.file-max and fs.nr_open should not be equal. fs.file-max is the total limits of all open file descriptors on the entire system, whereas fs.nr_open is the number of file descriptors for a process. 
  When setting fs.nr_open, you should make sure that fs.file-max is significantly bigger than fs.nr_open

 ## Processes and threads limit
 
 kernel.threads-max - Defines the system-wide maximum number of threads available to the kernel at one time
