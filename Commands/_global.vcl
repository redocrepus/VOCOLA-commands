# Global voice commands (see https://vocola.net/v3/LanguageReference)
# $using Library.Vocola;
# tick = {LeftButton};
# take = {LeftButton_Hold};
# dump = {LeftButton_Release};
sleep = SendSystemKeys({Ctrl+Alt+z});
flop = SendSystemKeys({Alt+tab});
boom = {Enter};

# Switch applications and windows

<app> := ( chrome = chrome
         | studio = "Microsoft Visual Studio"
         | code = "visual studio code"
         | TC = "Total Commander"
         );


# Switch by executable name
Use   <app>     = HearCommand("Switch To $1");


<number> := 1..100; 
<line_number> := 1..9000;
go tab <number>= {Ctrl+tab_$1};
save = {Ctrl+s};

up = {Up};
down = {Down};
left = {Left};
right = {Right};

up <number> = {Up_$1};
down <number> = {Down_$1};
left <number> = {Left_$1};
right <number> = {Right_$1};

jump = {Ctrl+Right};
jump back = {Ctrl+Left};
jump <number> = {Ctrl+Right_$1};
jump back <number> = {Ctrl+Left_$1};

mark = {Shift+Right};
mark back = {Shift+Left};
mark <number> = {Shift+Right_$1};
mark back <number> = {Shift+Left_$1};

mark jump  = {Ctrl+Shift+Right};
mark jump back = {Ctrl+Shift+Left};

mark jump <number> = {Ctrl+Shift+Right_$1};
mark jump back <number> = {Ctrl+Shift+Left_$1};

mark up = {Ctrl+Shift+Up};
mark down = {Shift+Down};
mark up <number> = {Shift+Up_$1};
mark down <number> = {Shift+Down_$1};

home = {Home};
end = {End};
page up = {PageUp};
page down = {PageDown};

mark home = {Shift+Home};
mark end = {Shift+End};
mark page up = {Shift+PageUp};
mark page = {Shift+PageDown};

mark word = {Ctrl+Left} {Ctrl+Shift+Right};
dump = {Delete};
dump <number> = {Delete_$1};
dump back = {Backspace};
dump back <number> = {Backspace_$1};
mark line = {Shift+End} {Shift+Home};
dump line = {Home} {Shift+End} {Delete};

go tab = {Ctrl+tab};
back tab = {Ctrl+Shift+tab};
go tab <number>= {Ctrl+tab_$1};
back tab <number>= {Ctrl+Shift+tab_$1};

fly to <line_number> = {Ctrl+g} Wait(200) $1 {Enter};
jump end = {Ctrl+End};
jump home = {Ctrl+Home};

lift = {Alt+Up};
lift down = {Alt+Down};
split = {Ctrl+Alt+Down};
split up = {Ctrl+Alt+Up};
lift <number> = {Alt+Up_$1};
lift down <number> = {Alt+Down_$1};
split <number> = {Ctrl+Alt+Down_$1};
split up <number> = {Ctrl+Alt+Up_$1};