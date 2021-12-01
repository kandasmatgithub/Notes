## Tips and tricks with top command

Tip 1
=====

1. While in the top screen, press f to get into the Fields Management options
2. Use Up/Down arrow key to get to the field of interest and press right arrow to select it
3. Once selected, Use Up/Down arrow key to move the field to the desired position and hit enter
4. Hit space bar to select the field (shown by an asterisk in the front) so that it will be included in the display
5. To change the sort field, move the cursor to the desired field and press s to sort by that
6. Press q to exit out of the Fields Management options window


Fields Management for window 1:Def, whose current sort field is SWAP
   Navigate with Up/Dn, Right selects for move then <Enter> or Left commits,
   'd' or <Space> toggles display, 's' sets sort.  Use 'q' or <Esc> to end!

* PID     = Process Id             nsMNT   = MNT namespace Inode
* USER    = Effective User Name    nsNET   = NET namespace Inode
* PR      = Priority               nsPID   = PID namespace Inode
* NI      = Nice Value             nsUSER  = USER namespace Inode
* VIRT    = Virtual Image (KiB)    nsUTS   = UTS namespace Inode
* RES     = Resident Size (KiB)
* SHR     = Shared Memory (KiB)
* S       = Process Status
* %CPU    = CPU Usage
* %MEM    = Memory Usage (RES)
  SWAP    = Swapped Size (KiB)
* TIME+   = CPU Time, hundredths
* COMMAND = Command Name/Line

Tip 2
=====

By default, top command displays the CPU usage with Irix mode on. In this mode, the usage on multiple CPU cores/threads are added together and can go beyond 100%. This is
because the multi-threaded processes can run on more than one processor core/thread and all the usage will be added together. To turn this Irix mode off, press shift + i 
