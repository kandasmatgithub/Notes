
```
	- AIX file system mounts are controlled in /etc/filesystems but must not be commented out.
		The entries in /etc/filesystems are structured in “stanzas” and must exist for all file systems on the volume groups even if they are not mounted.
		To prevent a file system mounting you should use the command “chfs –A no <file system>” which will update a single line in /etc/filesystems to achieve the correct result.
		File systems are added / removed in /etc/filesytems via commands such as crfs, rmfs, importvg, exportvg etc.
		Do not comment out stanzas in /etc/filesystems.

```
