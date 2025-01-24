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
Click on `Next`.

#### 🔽 Step 2.2. Select the system where you will install your database. 
```
✅ Desktop class
   Choose this option if you are installing on a laptop  or desktop class system. This option includes a starter database and allows minimal configuration. 
```
```
⚠️ Server class
    Choose this option if you are installing on a server class system, which Oracle defines as a system used in a production data center. This option allows for more advanced configuration options. 
```
Click on `Next`.

#### 🔽 Step 2.3. For enhanced security, you may choose  to run Windows Services  from this Oracle home  with a non-adminstrator account. Oracle recommends that you choose a Virtual Account or specify a standard Windows User Account for this purpose. 
```
⚠️ Use Virtual Account
```
```
⚠️ User Existing Windows User
    User Name:
    Password: 
```   
```
✅ Create New Windows User
    User Name: oracle
    Password:  oracledb
    Confirm Password: oracledb
The newly created user is denied Windows logon privileges.
```
```
⚠️ Use Windows Built-in Account
```       
Click on `Next`.

#### 🔽 Step 2.4. Perform full database installation with basic configuration. 
```
✅ Oracle base: "C:\oracle19c"
Here pay attention on this name oracle19c. I put another name like Oracle19c or oracle_19c and the installation was not succedded. I was sure about that because i realised on a step that my oracle db linister wasn't working properly.
```
```
✅ Software location: "location of your unzipped file of the database".
```   
```
✅ Dabase file location: "C:\oracle19c\oradata"
Here you will find the files save in your database.
```
```
✅ Database edition: Enterprise Edition
```
```
✅ Character set: Unicode (AL32UTF8)
```
```
✅ Global database name: orcl
This is the name of the CDB that u will install.
```
```
✅ Password: Password#534545234
This is the password of your sys admin account that you will be using to create all that you need
```
```
✅  [x] Create as Container database
     Pluggable database name: orclpdb
```

Click on `Next`. After this you will have to wait for your database software to be installed.

### 🔽 Step 3. Check if everything is up and running
```
✅ Enter on the next url to see if your database dashboard is up and running. In all the cases if this is working all should be fine.
The link is "https://localhost:5501/em". This site will be seen as dangerous but u can procced to the next step. After you enter on the site you can find some interesting info about your database.
```
```
✅ Check in your Sql Developer if everything it's ok.
    Username: sys
    Password: Password#534545234
    Role: SYSDBA
    Hostname: localhost
    Port: 1521
    SID: orcl
```
## _How_to_uninstall_your_database_

In order to ensure that your database will be uninstalled fine, you have to follow the next steps.

- [x] Step 1. Check the version of the database
 
```
✅ Enter cmd. Run as adminstrator. Write sqlplus -v --after that you will see the version of database
✅ In the moment when the database will be uninstall this command will generate an error.
```

- [x] Step 2. Stop the running services
   
#### 🔽 Step 2.1. Search for `Services`. Search for the services that contains Oracle. Click on service and stop it.
```
⚠️ 4 Services

✅ OracleOraDB19Home1MTSRecoveryService
✅ OracleOraDBHome1TNSListener
✅ OracleServiceORCL
✅ OracleVssWriterORCL
```
- [x] Step 3. Delete the installed oracle home directory.
   
#### 🔽 Step 3.1. If you dont know where is your oracle home directory. 
```
✅ Search for "Edit the system environment variables". Open.
✅ Click on "Environment Variables"
    You can see 2 tables with 2 columns Variable and  Value. On the table from down you click on Path and press Edit.
    On the first line you will find the path of oracle home directory.
✅ After this go and delete that folder. If you have any other folder on C:\Program_Files or in any other location you have to delete it.
✅ After this go on C: Drive >> Users >> Your_UserName. In this location you will find a folder name "Oracle". Delete it.
```
- [x] Step 4. Delete the environment variable.
   
#### 🔽 Step 4.1. On the last step you enter on "Edit the system environment variables". 
```
✅ On the same table on path section press on the home directory. After that press Delete button that can be found on the right.
✅ After that press 3 x "Ok"
```
- [x] Step 5. Delete the logs from registry. Search for "Registry Editor" and press "Enter". 
      
#### 🔽 Step 5.1. Expand HKEY_LOCAL_MACHINE >> SOFTWARE
```
✅ Expand HKEY_LOCAL_MACHINE. Expand also SOFTWARE.
✅ Here search for ORACLE.
✅ In this folder you will find 4 folders.
      KEY_OraDB19Home1
      ODP.NET
      ODP.NET.Managed
      OracleMTSRecoveryServices
✅ Delete all this folders.
✅ If you dont have this 4 folders delete the entire ORACLE folder.
```

#### 🔽 Step 5.2. Expand HKEY_LOCAL_MACHINE >> SYSTEM
```
✅ Here you will find a folder called CurrentControlSet. Expand it.
✅ In ths folder you enter you will find a folder called "Services"
✅ In this folder you will search for Oracle folders. This folders must be 6.
      OracleJobSchedulerORCL
      OracleOraDB19Home1MTSRecoveryService
      OracleOraDB19Home1TNSListerner
      OracleRemExecServiceV2
      OracleServiceIRCL
      OracleVssWriterORCL
✅ Delete all this folders.
```
#### 🔽 Step 6. Check step 1 again and see if CMD return you error to that command or not.
