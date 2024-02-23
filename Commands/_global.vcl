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

jump = SendSystemKeys({Ctrl+Right});
jump back = SendSystemKeys({Ctrl+Left});
jump <number> = SendSystemKeys({Ctrl+Right_$1});
jump back <number> = SendSystemKeys({Ctrl+Left_$1});

mark = SendSystemKeys({Shift+Right});
mark back = SendSystemKeys({Shift+Left});
mark <number> = SendSystemKeys({Shift+Right_$1});
mark back <number> = SendSystemKeys({Shift+Left_$1});

mark jump  = SendSystemKeys({Ctrl+Shift+Right});
mark jump back = SendSystemKeys({Ctrl+Shift+Left});

mark jump <number> = SendSystemKeys({Ctrl+Shift+Right_$1});
mark jump back <number> = SendSystemKeys({Ctrl+Shift+Left_$1});

mark up = SendSystemKeys({Ctrl+Shift+Up});
mark down = SendSystemKeys({Shift+Down});
mark up <number> = SendSystemKeys({Shift+Up_$1});
mark down <number> = SendSystemKeys({Shift+Down_$1});

mark jump home = SendSystemKeys({Ctrl+Shift+Home});
mark jump end = SendSystemKeys({Ctrl+Shift+End});

home = SendSystemKeys({Home});
end = SendSystemKeys({End});
page up = SendSystemKeys({PageUp});
page down = SendSystemKeys({PageDown});

mark home = SendSystemKeys({Shift+Home});
mark end = SendSystemKeys({Shift+End});
mark page up = SendSystemKeys({Shift+PageUp});
mark page = SendSystemKeys({Shift+PageDown});

mark word = SendSystemKeys({Ctrl+Left} {Ctrl+Shift+Right});
dump = SendSystemKeys({Delete});
dump <number> = SendSystemKeys({Delete_$1});
dump back = SendSystemKeys({Backspace});
dump back <number> = SendSystemKeys({Backspace_$1});
mark line = SendSystemKeys({Shift+End} {Shift+Home});
dump line = SendSystemKeys({Home} {Shift+End} {Delete});

go tab = SendSystemKeys({Ctrl+tab});
back tab = SendSystemKeys({Ctrl+Shift+tab});
go tab <number>= SendSystemKeys({Ctrl+tab_$1});
back tab <number>= SendSystemKeys({Ctrl+Shift+tab_$1});

fly to <line_number> = {Ctrl+g} Wait(200) $1 {Enter};
find = SendSystemKeys({Ctrl+f}) WSR_sleep();

jump end = SendSystemKeys({Ctrl+End});
jump home = SendSystemKeys({Ctrl+Home});

lift = SendSystemKeys({Alt+Up});
lift down = SendSystemKeys({Alt+Down});
split = SendSystemKeys({Ctrl+Alt+Down});
split up = SendSystemKeys({Ctrl+Alt+Up});
lift <number> = SendSystemKeys({Alt+Up_$1});
lift down <number> = SendSystemKeys({Alt+Down_$1});
split <number> = SendSystemKeys({Ctrl+Alt+Down_$1});
split up <number> = SendSystemKeys({Ctrl+Alt+Up_$1});

shade = SendSystemKeys({Ctrl+/});