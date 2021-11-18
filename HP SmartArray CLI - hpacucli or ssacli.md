
```
# rpm -ql ssacli-3.10-3.0.x86_64
/opt/smartstorageadmin/ssacli
/opt/smartstorageadmin/ssacli/bin
/opt/smartstorageadmin/ssacli/bin/mklocks.sh
/opt/smartstorageadmin/ssacli/bin/rmstr
/opt/smartstorageadmin/ssacli/bin/ssacli
/opt/smartstorageadmin/ssacli/bin/ssacli-3.10-3.0.x86_64.txt
/opt/smartstorageadmin/ssacli/bin/ssacli.license
/opt/smartstorageadmin/ssacli/bin/ssascripting
/usr/man/man8/ssacli.8.gz
/usr/sbin/ssacli
/usr/sbin/ssascripting
/usr/share/smartupdate/ssacli/component.xml
# /usr/sbin/ssacli
Smart Storage Administrator CLI 3.10.3.0
Detecting Controllers...Done.
Type "help" for a list of supported commands.
Type "exit" to close the console.

=> help

CLI Syntax
   A typical SSACLI command line consists of three parts: a target device,
   a command, and a parameter with values if necessary. Using angle brackets to
   denote a required variable and plain brackets to denote an optional
   variable, the structure of a typical SSACLI command line is as follows:

      <target> <command> [parameter=value]

   <target> is of format:
      [controller all|slot=#|serialnumber=#]
      [array all|<id>]
      [physicaldrive all|allunassigned|[#:]#:#|[#:]#:#-[#:]#:#]
      [ssdphysicaldrive all|allunassigned|[#:]#:#|[#:]#:#-[#:]#:#]
      [logicaldrive all|#]
      [enclosure all|#:#|serialnumber=#]
      [licensekey all|<key>]
      [ssdinfo]
      [tapedrive all]
      Note 1: The #:#:# syntax is only needed for systems that
              specify port:box:bay. Other physical drive targeting
              schemes are box:bay and port:id.

   Example targets:
   ("CN0" is a sample port name that may be different depending on the
   controller)
      controller slot=5
      controller serialnumber=P21DA2322S
      controller slot=7 array A
      controller slot=5 logicaldrive 5
      controller slot=5 physicaldrive 1:5
      controller slot=5 physicaldrive CN0:2:3
      controller slot=5 ssdphysicaldrive all
      controller slot=5 tapedrive all
      controller slot=5 enclosure CN0:1 show
      controller slot=5 licensekey XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

For detailed command information type any of the following:
   help add
   help create
   help delete
   help diag
   help flash
   help heal
   help modify
   help remove
   help shorthand
   help show
   help target
   help rescan
   help version

Encryption related commands:
   help ctrlpasswdstate
   help clearencryptionconfig
   help encode
   help encrypt
   help enableencryption
   help encryption
   help eula
   help fwlock
   help import
   help instantsecureerase
   help localkeymanagermode
   help login
   help logout
   help recoverpassword
   help rekey
   help remotekey
   help removectrlpasswd
   help rescankeys
   help setmasterkeycache
   help setctrlpasswd
   help setpasswd
   help setrecoveryparams
   help unlockvolumes

Help also accepts commonly used CLI parameters and SSA keywords. Adding
additional keywords will further filter the help output. Examples:
   help migrate
   help expand
   help extend
   help <keyword> <keyword> ... <keyword>

=> controller all show

Smart Array P440ar in Slot 0 (Embedded)   (sn: PDNLH0BRHAG3RQ)

=> controller slot=0 pd all show

Smart Array P440ar in Slot 0 (Embedded)

   Array A

      physicaldrive 1I:3:1 (port 1I:box 3:bay 1, SAS HDD, 300 GB, OK)
      physicaldrive 1I:3:2 (port 1I:box 3:bay 2, SAS HDD, 300 GB, OK)

   Unassigned

      physicaldrive 1I:3:3 (port 1I:box 3:bay 3, SAS HDD, 1.2 TB, OK)
      physicaldrive 1I:3:4 (port 1I:box 3:bay 4, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:5 (port 2I:box 3:bay 5, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:6 (port 2I:box 3:bay 6, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:7 (port 2I:box 3:bay 7, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:8 (port 2I:box 3:bay 8, SAS HDD, 1.2 TB, OK)

=> controller slot=0 ld all show

Smart Array P440ar in Slot 0 (Embedded)

   Array A

      logicaldrive 1 (279.4 GB, RAID 1, OK)

=> controller slot=0 create type=ld drives=1I:3:3,1I:3:4,2I:3:5,2I:3:6,2I:3:7,2I:3:8 raid=5
=> controller slot=0 pd all show

Smart Array P440ar in Slot 0 (Embedded)

   Array A

      physicaldrive 1I:3:1 (port 1I:box 3:bay 1, SAS HDD, 300 GB, OK)
      physicaldrive 1I:3:2 (port 1I:box 3:bay 2, SAS HDD, 300 GB, OK)

   Array B

      physicaldrive 1I:3:3 (port 1I:box 3:bay 3, SAS HDD, 1.2 TB, OK)
      physicaldrive 1I:3:4 (port 1I:box 3:bay 4, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:5 (port 2I:box 3:bay 5, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:6 (port 2I:box 3:bay 6, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:7 (port 2I:box 3:bay 7, SAS HDD, 1.2 TB, OK)
      physicaldrive 2I:3:8 (port 2I:box 3:bay 8, SAS HDD, 1.2 TB, OK)

=> controller slot=0 ld all show

Smart Array P440ar in Slot 0 (Embedded)

   Array A

      logicaldrive 1 (279.4 GB, RAID 1, OK)

   Array B

      logicaldrive 2 (5.5 TB, RAID 5, OK)

=> quit
#
```
