:loop

	echo "PushMeIfYouCan" >> sample.txt
	
	
	:: Navigate to the directory you wish to push to GitHub
	::Change <path> as needed. Eg. C:\Users\rich\Desktop\Writings
	cd C:\Users\ahafdi\Desktop\Auto_Push
	
	::Initialize GitHub
	git init
	
	::Pull any external changes (maybe you deleted a file from your repo?)
	git pull
	
	::Add all files in the directory
	git add --all
	
	::Commit all changes with the message "auto push android". 
	::Change as needed.
	git commit -m "New Push"
	
	::Push all changes to GitHub 
	git push origin 
	
	::Alert user to script completion and relaunch.
	echo Complete. Relaunching...
	
	::Wait 5 seconds until going to the start of the loop.
	::Change as needed.
	
	TIMEOUT 5
 
goto loop
