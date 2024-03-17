# Voice commands for cmd
WSR_sleep() := SendSystemKeys({Ctrl+Alt+z});

# Git commands
check	= "git checkout " WSR_sleep();
checkout= "git checkout " WSR_sleep();
branch	= "git branch";
fetch	= "git fetch {ENTER}";
update	= "git pull";
push	= "git push";
commit	= "git commit -m " WSR_sleep();
status	= "git status {ENTER}";
stat	= "git status{ENTER}";
log		= "git log";


# npm commands
run     = "npm start run" {ENTER};