## Oracle Database

## Technology stack  
- **OS System**: Windows 10
- **Version**: Oracle 19.3000 (oracle 19c)
- **IDE**: SQL Plus & SQL Developer

## Setting up OS Requirements
1. Check if you have 10 GB of empty space on disk space.
   
⚠️ Check if in your C:/ have at least 10GB of free space.

3. Check if you have 2 GB minimum of physical memory.
   
⚠️ Check if your pc have 2GB of RAM free.

4. Screen Resolution: 1024 X 768 minimum

5. System Architecture: Processor: AMD64 and Intel EM64T

6. Virtual memory (swap): If physical memory is between 2 GB and 16 GB, then set virtual memory to 1 times the size of the RAM.If physical memory is more than 16 GB, then set virtual memory to 16 GB

7. Follow instructions at [Oracle Official Site)](https://docs.oracle.com/en/database/oracle/oracle-database/19/ntdbi/operating-system-checklist-oracle-database-installation-microsoft-windows.html) in order to be able to run your database without `help` privileges. 

## _How_to_install_your_database_

In order to ensure that your database will be installed fine, you have to follow the next steps.

- [x] Step 1. Download what need to install database 
     - [ ] Search on google after oracle 19c download.
     - [ ] You will see a page that direct you to wwww.oracle.com website.
     - [ ] There you will find a zip file called WINDOWS.X64_193000_db_home.zip that you must download.
           There you will a version for Linux operating system as well.
     - [ ] After the downloading of this file oracle site will require you to enter your oracle account. (Don't need more stuff to create your account. Some basic stuff and that's it).
     - [ ] After enter your account this file  WINDOWS.X64_193000_db_home.zip will be found into your Downloads file from your PC. This file has 3 GB. It's big soo may take some time.
     - [ ] After that you must extract all files from that .zip file in the same location as Download File.
     - [ ] After the extraction of all file you must enter in the folder extracted from .zip file and search for setup.exe file. This file must be the last from that folder.
     - [ ] Right-click on him. Run as administrator and the installation must start.
- [x] Step 2. Installation of database software
    
#### 🔽 Step 2.1. Select any of the following install options. 
```
✅ Create amd configure a single instance database. This option creates a starter database.
```
```
⚠️ Set Up Software Only 
```
Click on "ext"
#### 🔽 Step 2.2. Select the system where you will install your database. 
```
✅ Desktop class
   Choose this option if you are installing on a laptop  or desktop class system. This option includes a starter database and allows minimal configuration. 
```
```
⚠️ Server class
    Choose this option if you are installing on a server class system, which Oracle defines as a system used in a production data center. This option allows for more advanced configuration options. 
```   
#### 🔽 Step 2.2. Select the system where you will install your database. 
```
✅ Desktop class
   Choose this option if you are installing on a laptop  or desktop class system. This option includes a starter database and allows minimal configuration. 
```
```
⚠️ Server class
    Choose this option if you are installing on a server class system, which Oracle defines as a system used in a production data center. This option allows for more advanced configuration options. 
```   
    
