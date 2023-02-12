@echo off/n				
				
":: /E -> copies files with empty folder  , /B ->backupmode
 /MiR -> delete and copies again with modifed
 and its copies very soon"				
@echo 'back up local files '	
::robocopy C:\xampp\htdocs\task_scheduler C:\BackupFiles		
robocopy C:\xampp\htdocs\cokeandmeals_api\ C:\preeti\coke_and_meal_localbackup /E				
								
pause				

@echo 'backup from staging server to local (or one server to another )
:: to make this happen SCP needs username and pwd for autonication 
::scp command username@host : scource_file_path  Destination_file_path
:: -r -> recurcive copy 

scp -r ****@134.209.152.10:***/cokeandmeals_api  C:\preeti\coke_and_meal_stagingbackup

pause 
