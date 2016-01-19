-- conf.lua

Global inställninga fö löve.

-- gamestate.lua

Riktigt ghetto gamestate system som förmodligen måst göras om fö he e verkligen
int effektiv eller säker på na sätt eller vis. Enda he gör e att he kollar i vilken "gamestate" 
man e oså printar he heilt ny grafik efter va gamestate he e i.

Varinda gamestate e en funktion, nujust finns he 2 o he e beginning() och henrymap()
o di finns i maps.lua.

Koordinater printas också jär ifrån för att ja flytta love.draw() från main in ti dähär fiiln för att
ja e fö dum fö ti laga na fancy ass gamestate system.
Dähär e fittit dumt eftersom att check_state() callas från love.update() i main.lua
vilket betyder att all grafik printas om fö varinda frame.. farligt farligt

-- main.lua

.... ganska clean nujust så he bord va lätt ti si va som händer

-- maps.lua

Map systemi som e precis lika ghetto o dåli som gamestate..

all maps har en function fö background och foreground o di ladas
san i en till function. bleiv såhee nu fö att ja int veta hu ja sku få
playern ti ladas på rätt plats i ordningen. sku säkert ha kuna laga na fancy tabell lr na. whatever.

1. Menu och 3.Spooky e bara cräpp som har lämna som ja int orka ta bort föri ja lada upp
he fösöker säkert index na nil value om man fösöker kör döm.

-- player.lua

All player rörelser, collision och grafik finns i deheeee


-------------------

Allt som känns vettit i dähär så e fömodligen modifiera example code eller
na ja har hitta eller na tutorial shit. Allt som e dumt som fan har ja kråta ihop sjölv

Annos så rör man se på pilan o springer på "z" oså kan man toggle fullscreen på "q" och "w"

