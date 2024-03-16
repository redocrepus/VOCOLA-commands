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

<number> := 1..30; 
# <line_number> := 1..9000;

flop = SendSystemKeys({Alt+tab});
boom = SendSystemKeys({Enter});
pick app = SendSystemKeys({Alt_Hold}{tab});
go app <number> = SendSystemKeys({tab_$1});
done = SendSystemKeys({Alt_Release});
max = HearCommand("Maximize");
unhold all = SendSystemKeys({Alt_Release}{Ctrl_Release}{Shift_Release});

# Switch applications and windows

<app> := ( chrome = chrome
         | veezee = "Visual Studio 2022"
         | code = "visual studio code"
         | total = "Total Commander"
         | chat = "WhatsApp"
         | signal = "Signal"
         | shell = "Command prompt"
         | dos = "Command prompt"
         | pad = "Notepad++"
         | TM = "Task Manager"
         );

test shift = SendSystemKeys({Shift+a});


bs = SendSystemKeys({\});

# Visul Studio and Visual Studio Code
bug = SendSystemKeys({F5});
stop = SendSystemKeys({Shift+F5});
step = SendSystemKeys({F10});
step <number> = SendSystemKeys({F10_$1});
dive = SendSystemKeys({F11});
step out = SendSystemKeys({Shift+F11});
breakpoint = SendSystemKeys({F9});
bug here = SendSystemKeys({Ctrl+F10});
run here = SendSystemKeys({Ctrl+F10});
build all = SendSystemKeys({Ctrl+Shift+b});
abort build = SendSystemKeys({Ctrl+Break});
complie = SendSystemKeys({Ctrl+F7});

abort = SendSystemKeys({Escape});

# Switch by executable name
Use   <app>     = HearCommand("Switch To $1");
Use veezee      = HearCommand("Switch To Microsoft Visual Studio");
use gpt = HearCommand("Switch To chatGPT") Wait(100) WSR_sleep();
Launch   <app>     = HearCommand("Open $1");

numbers = HearCommand("Show numbers");

go tab <number>= SendSystemKeys({Ctrl+tab_$1});
save = SendSystemKeys({Ctrl+s});

match = {Ctrl+shift+alt+0};

roll = {WheelDown};
roll (Down|Up)     = {Wheel$1};
roll           <number> = {WheelDown_$1};
roll (Down|Up) <number> = {Wheel$1_$2};


up = SendSystemKeys({Up});
down = SendSystemKeys({down});
left = SendSystemKeys({Left});
right = SendSystemKeys({Right});
tab = SendSystemKeys({Tab});
space = SendSystemKeys({Space});

up <number> = SendSystemKeys({Up_$1});
down <number> = SendSystemKeys({down_$1});
left <number> = SendSystemKeys({Left_$1});
right <number> = SendSystemKeys({Right_$1});
tab <number> = SendSystemKeys({Tab_$1});
copy = SendSystemKeys({Ctrl+c});
paste = SendSystemKeys({Ctrl+v});
cut = SendSystemKeys({Ctrl+x});

undo = SendSystemKeys({Ctrl+z});
redo = SendSystemKeys({Ctrl+y});
undo <number> = SendSystemKeys({Ctrl+z_$1});
redo <number> = SendSystemKeys({Ctrl+y_$1});


space <number> = SendSystemKeys({Space_$1});
hop = SendSystemKeys({Ctrl+Right});
hip = SendSystemKeys({Ctrl+Left});
hip = SendSystemKeys({Ctrl+Left});
hop <number> = SendSystemKeys({Ctrl+Right_$1});
hip <number> = SendSystemKeys({Ctrl+Left_$1});
hip <number> = SendSystemKeys({Ctrl+Left_$1});

home = SendSystemKeys({Home});
end = SendSystemKeys({End});
page up = SendSystemKeys({PageUp});
page down = SendSystemKeys({Pagedown});

mark = SendSystemKeys({Shift+Right});
mark left = SendSystemKeys({Shift+Left});
mark <number> = SendSystemKeys({Shift+Right_$1});
mark left <number> = SendSystemKeys({Shift+Left_$1});

mark hop  = SendSystemKeys({Ctrl+Shift+Right});
mirck = SendSystemKeys({Ctrl+Shift+Left});

mark hop <number> = SendSystemKeys({Ctrl+Shift+Right_$1});
mirck <number> = SendSystemKeys({Ctrl+Shift+Left_$1});

mark up = SendSystemKeys({Ctrl+Shift+Up});
mark down = SendSystemKeys({Shift+down});
mark up <number> = SendSystemKeys({Shift+Up_$1});
mark down <number> = SendSystemKeys({Shift+down_$1});

mark hop home = SendSystemKeys({Ctrl+Shift+Home});
mark hop end = SendSystemKeys({Ctrl+Shift+End});


mark home = SendSystemKeys({Shift+Home});
mark end = SendSystemKeys({Shift+End});
mark page up = SendSystemKeys({Shift+PageUp});
mark page = SendSystemKeys({Shift+Pagedown});

mark word = SendSystemKeys({Ctrl+Left} {Ctrl+Shift+Right});
mark line = SendSystemKeys({Shift+End} {Shift+Home});


yum = SendSystemKeys({Delete});
yum <number> = SendSystemKeys({Delete_$1});
wipe = SendSystemKeys({Backspace});
wipe <number> = SendSystemKeys({Backspace_$1});
wipe line = SendSystemKeys({end} {Shift+Home} {Shift+Home} {Backspace} {Backspace});
copy line = SendSystemKeys({Home} {Shift+End} {Ctrl+c});
cut line = SendSystemKeys({Home} {Shift+End} {Ctrl+x});
copy word = SendSystemKeys({Ctrl+Left} {Ctrl+Shift+Right} {Ctrl+c});
cut word = SendSystemKeys({Ctrl+Left} {Ctrl+Shift+Right} {Ctrl+x});
wipe word = SendSystemKeys({Ctrl+Left} {Ctrl+Shift+Right} {Delete});


go tab = SendSystemKeys({Ctrl+tab});
back tab = SendSystemKeys({Ctrl+Shift+tab});
go tab <number>= SendSystemKeys({Ctrl+tab_$1});
back tab <number>= SendSystemKeys({Ctrl+Shift+tab_$1});

go to line = SendSystemKeys({Ctrl+g});
one = 1;
two = 2;
three = 3;
sun = 3;
four = 4;
five = 5;
six = 6;
seven = 7;
eight = 8;
nine = 9;
zero = 0;
oh = 0;

find = SendSystemKeys({Ctrl+f}) Wait(100) WSR_sleep();
mega find = SendSystemKeys({Ctrl+Shift+f}) Wait(100) WSR_sleep();
go file = SendSystemKeys({Ctrl+p});

hop end = SendSystemKeys({Ctrl+End});
hop home = SendSystemKeys({Ctrl+Home});

move up = SendSystemKeys({Alt+Up});
move = SendSystemKeys({Alt+down});
split = SendSystemKeys({Shift+Alt+down});
split up = SendSystemKeys({shift+Alt+Up});
move up <number> = SendSystemKeys({Alt+Up_$1});
move <number> = SendSystemKeys({Alt+down_$1});
split <number> = SendSystemKeys({shift+Alt+down_$1});
split up <number> = SendSystemKeys({shift+Alt+Up_$1});

shade = SendSystemKeys({Ctrl+/});


quote = {U+0022} {U+0022} SendSystemKeys({Left});





record task = SendSystemKeys({Ctrl+Alt+R});
play task = SendSystemKeys({Ctrl+Alt+P});

next = SendSystemKeys({F3});
former = SendSystemKeys({Shift+F3});
next <number> = SendSystemKeys({F3_$1});
former <number> = SendSystemKeys({Shift+F3_$1});

dot = SendSystemKeys({.});