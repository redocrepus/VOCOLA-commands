# Voice commands for chrome
<number> := 1..100;
browse = {Shift+o};
close = {Ctrl+w};
new_tab = {Ctrl+t};
expand = {Ctrl+down};
collapse = {Ctrl+up};
dump item = {Ctrl+Shift+Backspace};
move = SendSystemKeys({Shift+Alt+down});
move up = SendSystemKeys({shift+Alt+Up});
move <number> = SendSystemKeys({shift+Alt+down_$1});
move up <number> = SendSystemKeys({shift+Alt+Up_$1});

################ commands for Google Workspace

# commands for Gmail
label = {l};
pick = {x};
stash = {e};
delete = {Shift+3};
reply = {r};
reply all = {a};
forward = {f};
index = {u};
star = {s};
oops = {z};

next page = {gn};
previous page = {gp};

place item in = {v};

magnus mail = "arkadyv@magnusmetal.com";
