Greyhound-Rescue
================

Development Environment Setup Process

Setup GitHub

Setup Tomcat:
http://tomcat.apache.org/download-70.cgi
Unzip to c-drive.  Should be in directory such as: “c:\apache-tomcat-7.0.50”

Setup JEE Eclipse (Kepler, version 4.3.1 at this time)
http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/kepler/R/eclipse-jee-kepler-R-win32-x86_64.zip&mirror_id=337

Check for updates after installing (Help -> Check For Updates).  Note, when launching Eclipse, specify “Greyhound Rescue” as the workspace directory.

Install MySql
Create a catalog named “gpago”
Create a user named “gpago” and give this user full access to the “gpago” catalog.

 
Setup Eclipse Workspace and Working Directory
1.)	Create a new directory to be used as the Eclipse workspace for Greyhound-Rescue.  For example, create a folder      named ‘c:\dev\projects\Greyhound-RescueWorkSpace’.
  a.	Note, Eclipse stores its settings in the workspace directory in a ‘.metadata’ directory.  Using a different         workspace directory allows all settings for the Greyhound-Rescue application to be isolated from any other          applications or projects.
2.)	Create a new directory to be used as the working directory for the Greyhound-Rescue application resources.  For     example, create a directory named ‘c:\dev\projects\Greyhound-Rescue’.
3.)	Launch Eclipse and switch the workspace to the new directory that was created in step 1
  a.	In Eclipse: File-> Switch Workspace -> Other
  b.	Browse to and select the new workspace folder.
4.)	In Eclipse, add Apache Tomcat v7.0 as a new server runtime environment.
  a.	Window -> Preferences -> Server -> Runtime Environments
  b.	Select ‘Add’
  c.	Select ‘Apache Tomcat v7.0’
  d.	Hit ‘Next’
  e.	Specify the Tomcat Installation Directory.  Hit ‘Browse’ to browse to the ‘apache-tomcat-7.x.xx folder’.
  f.	Hit ‘Finish’
  g.	Hit ‘OK’
5.)	In Eclipse, show the git repositories view.
  a.	Window -> Show View -> Other... -> Git -> Git Repositories
6.)	In the Git Repositories view, select ‘Clone a Git repository’.
  a.	Enter https://github.com/phillipbess/Greyhound-Rescue for the URI.
  b.	Hit ‘Next’
  c.	Hit ‘Next’ again
  d.	In the local Destination dialog
    i.	browse to the directory that was created in step two.  This is where the project files will go.
    ii.	Select ‘Import all existing projects after clone finishes’
  e.	Hit ‘Finish’
7.)	Launch the web application
  a.	Open the GPAGO project and navigate to the Administrator.html file located in the ‘WebContent’ folder.              Right-click on the file and select ‘Run-As -> Run On Server’.  Select the Tomcat v7.0 Server and hit ‘Finish’.       A login screen should be displayed.
  b.	Login using “user1” and “password” as the username/password.
