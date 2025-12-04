# GG Isuka mod by Kamekaze 1.0
email: ilive@kamekaze.world
bsky: kamekaze.world
yt: M.U.G.E.N. Kamekaze	
Commissioned by: @jerry

This mod turns simul into a literal free for all where everyone is an enemy. 

##To turn press "W" or "D". This can be changed in the code to be whatever you want.

##To update your chars to ensure they are fully compatible you will need to update the following triggers:
```p2bodydist x must be changed to map(is_enemybdx)
p2dist y must be changed to map(is_enemydy)
p2dist z must be changed to map(is_enemydz)
p2stateno must be changed to player(map(is_closestplayer)),stateno
p2movetype must be changed to player(map(is_closestplayer)),movetype
p2statetype must be changed to player(map(is_closestplayer)),statetype
"p2/enemynear/enemy(x)," must be changed to "player(map(is_closestplayer))," as they will all refer to the same thing.
```

##You must add this in your systen.def file under [Title Info]:
```
menu.itemname.free = "Free for all"             ;Ikemen feature
menu.itemname.free.freeforall = "All Human"        ;Ikemen feature
menu.itemname.free.freeforallcpu = "vs AI"        ;Ikemen feature
menu.itemname.free.freeforallwatch = "All AI"  ;Ikemen feature
menu.itemname.free.back = "EXIT"                           ;Ikemen feature
```
If you need to know what the nearest opponent is the map map(is_closestplayer) will return 1 2 3 or 4 representing the 
player characters.

If you're using a stage with lane system support, this mod should be fully compatible with it.
