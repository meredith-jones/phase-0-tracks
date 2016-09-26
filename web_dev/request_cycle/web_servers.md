## Key design philosophies of the Linux operating system:
  * Design goals are speed efficiency, and standardization.
  * Linux system is composed of:
    - system management programs
    - user processes
    - user utility programs
    - compilers
    - system shared libraries: define a standard set of functions through which applications interact with the kernel
    - Linux kernel: responsible for maintaining important abstractions of the operating system. Handles process control, networking, access to the peripherals and file systems.
    - loadable kernel modules
  * Divided into User Mode and Kernal Mode:
  * Device drivers are either integrated directly with the kernel or added as modules that are loaded while the system is running.
  * User mode: Higher level functionality provided by separate entities.

##What is a VPS (virtual private server)?

A piece of memory that acts like a computer for how ever long you specify it to do so.

##Advantages of using a VPS:
  - Privacy: other websites don't have access to your files.
  - Dedicated Resources: you have a specific amount of RAM just for your site, not shared with other sites.
  - Ability to customize: you can make changes to server applications in order to best meet the needs of your webiste.
  - Flexibility: you can restart your server if you need to at any time without having to worry about other websites.
  - Much cheaper than having a dedicated physical server.

##Why it is considered a bad idea to run programs as the root user on a Linux system:
Security reasons: If you are on root, you can modify system files without permissions. So, if you open a browser with a security hole, a malicious web page would be able to write to all files on your system, read files in other user account's home folders, and replace system commands with compromised ones. You could also be affected by the bug of an application you run, which could potentially wipe out your hard drive.

