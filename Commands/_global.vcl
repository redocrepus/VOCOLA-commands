# Global voice commands (see https://vocola.net/v3/LanguageReference)
# TODO: optimized number and line number variables
# $using Library.Vocola;
# tick = {LeftButton};
# take = {LeftButton_Hold};
# dump = {LeftButton_Release};

# $include editCode.vch;


$include termAlternates.vch;
onLoad() := addTermAlternates();
WSR_sleep() := SendSystemKeys({Ctrl+Alt+z});
sleep = WSR_sleep();

flop = SendSystemKeys({Alt+tab});
boom = SendSystemKeys({Enter});

# Switch applications and windows

<app> := ( chrome = chrome
         | veezee = "Microsoft Visual Studio"
         | code = "visual studio code"
         | TC = "Total Commander"
         | chat = "WhatsApp"
         | signal = "Signal"
         | shell = "Command prompt"
         | pad = "Notepad++"
         | TM = "Task Manager"
         );

test shift = SendSystemKeys({Shift+a});



debug = SendSystemKeys({F5});
step = SendSystemKeys({F10});
step into = SendSystemKeys({F11});
step out = SendSystemKeys({Shift+F11});

# Switch by executable name
Use   <app>     = HearCommand("Switch To $1");
Launch   <app>     = HearCommand("Open $1");

numbers = HearCommand("Show numbers");

<number> := 1..100; 
<line_number> := 1..9000;
go tab <number>= SendSystemKeys({Ctrl+tab_$1});
save = SendSystemKeys({Ctrl+s});

up = SendSystemKeys({Up});
down = SendSystemKeys({Down});
left = SendSystemKeys({Left});
right = SendSystemKeys({Right});

up <number> = SendSystemKeys({Up_$1});
down <number> = SendSystemKeys({Down_$1});
left <number> = SendSystemKeys({Left_$1});
right <number> = SendSystemKeys({Right_$1});

hop = SendSystemKeys({Ctrl+Right});
hop back = SendSystemKeys({Ctrl+Left});
hop <number> = SendSystemKeys({Ctrl+Right_$1});
hop back <number> = SendSystemKeys({Ctrl+Left_$1});

home = SendSystemKeys({Home});
end = SendSystemKeys({End});
page up = SendSystemKeys({PageUp});
page down = SendSystemKeys({PageDown});

mark = SendSystemKeys({Shift+Right});
mark back = SendSystemKeys({Shift+Left});
mark <number> = SendSystemKeys({Shift+Right_$1});
mark back <number> = SendSystemKeys({Shift+Left_$1});

mark hop  = SendSystemKeys({Ctrl+Shift+Right});
mark hop back = SendSystemKeys({Ctrl+Shift+Left});

mark hop <number> = SendSystemKeys({Ctrl+Shift+Right_$1});
mark hop back <number> = SendSystemKeys({Ctrl+Shift+Left_$1});

mark up = SendSystemKeys({Ctrl+Shift+Up});
mark down = SendSystemKeys({Shift+Down});
mark up <number> = SendSystemKeys({Shift+Up_$1});
mark down <number> = SendSystemKeys({Shift+Down_$1});

mark hop home = SendSystemKeys({Ctrl+Shift+Home});
mark hop end = SendSystemKeys({Ctrl+Shift+End});


mark home = SendSystemKeys({Shift+Home});
mark end = SendSystemKeys({Shift+End});
mark page up = SendSystemKeys({Shift+PageUp});
mark page = SendSystemKeys({Shift+PageDown});

mark word = SendSystemKeys({Ctrl+Left} {Ctrl+Shift+Right});
mark line = SendSystemKeys({Shift+End} {Shift+Home});


dump = SendSystemKeys({Delete});
dump <number> = SendSystemKeys({Delete_$1});
dump back = SendSystemKeys({Backspace});
dump back <number> = SendSystemKeys({Backspace_$1});
dump line = SendSystemKeys({Home} {Shift+End} {Delete});

go tab = SendSystemKeys({Ctrl+tab});
back tab = SendSystemKeys({Ctrl+Shift+tab});
go tab <number>= SendSystemKeys({Ctrl+tab_$1});
back tab <number>= SendSystemKeys({Ctrl+Shift+tab_$1});

fly to <line_number> = {Ctrl+g} Wait(200) $1 {Enter};
find = SendSystemKeys({Ctrl+f}) WSR_sleep();
go file = SendSystemKeys({Ctrl+p});

hop end = SendSystemKeys({Ctrl+End});
hop home = SendSystemKeys({Ctrl+Home});

move up = SendSystemKeys({Alt+Up});
move = SendSystemKeys({Alt+Down});
split = SendSystemKeys({Ctrl+Alt+Down});
split up = SendSystemKeys({Ctrl+Alt+Up});
move up <number> = SendSystemKeys({Alt+Up_$1});
move <number> = SendSystemKeys({Alt+Down_$1});
split <number> = SendSystemKeys({Ctrl+Alt+Down_$1});
split up <number> = SendSystemKeys({Ctrl+Alt+Up_$1});

shade = SendSystemKeys({Ctrl+/});