seed=1627291317
PF#-1317 pname=D:\Dropbox\_Yoram\Projects2\WMmsCDA\Final_New_3_Objects\Real\FINALTRY\WMKH_FINAL_NEW_3_ORBased Jul 26 12:21:57 2021
#T working memory (3 items multipe types) - does OMI depend on the number of items? 
//gamma=2.9
SDX=500 SDY=500  // image of interest (to save swap time)
MonitorDX=52 36
//FRAME=1 DX=1000 DY=DX
eyetrack=E
r.trigger=E c S N E r.triggercod=gx //c,n eyelink + cogniconics / nearoscan
t.trigger=0 b.trigger=0 c.trigger=0
a.trigger=0 o.trigger=0
m.trigger=0
//t.trigger=0 b.trigger=0 c.trigger=0 h.trigger=0 l.trigger=0  d.trigger=0
//a.trigger=0 o.trigger=0 w.trigger=0 s.trigger=0 e.trigger=0  m.trigger=0


bgamp=140 100 0 //CHANGED

//{---general timing-----}
fixdu1st=0 0 fixdu=0 preisi=0 ISI-postisi-tdu  postisi=2000 3000-t.soa-t.du randisi=0 1000 interisi=0  

//{---staircase & block control-----}
stair=0 numIFC=1 expmode=i percent1st=100 Border=r r R U Bset=0 Bmix=T T N  
max_trials=50 2 100 3 60 20

//{---general-----}
sitdist=0.6 cmnt=x  

//{--fixation++---}
c.mode=0 f.mode=0 b.mode=0 m.mode=0
f.mode=1 f.pat=+ O f.scale=8 10 20 f.x=0 f.y=0 f.phs=0 f.amp=1 120 f.or=0 f.gor=0 fixcont=1
f.linew=0 

// ARROWS - the object: a r o 
SOACUE=1000
RightOr=90
UPOr=0
LeftOr=270
//a is LEFT arrow
a.mode=1 a.equal=t a.x=-1 a.y=0 a.or=LeftOr a.pat=< a.soa=SOACUE a.scale=10*2 a.amp=arrowOFF  a.du=100 1000 500+t.du a.color=w a.linew=0 a.patratio=0.25
//r is UP arrow
r.mode=1 r.equal=a r.x=0 r.y=1 r.or=UPOr r.amp=arrowOFF
//o is RIGHT arrow
o.mode=1 o.equal=a o.x=1 o.y=0 o.or=RightOr o.amp=arrowOFF


//OBJECTS
//Set targets objects at left side
SOAOBJ=1000
EC=3.2 2.2
//OBJECT LEFT
t.mode=1 
t.opaq=1 //ADDED
t.color=r
t.or=90 t.pat=O t.phs=0 t.x=-(EC)+0.5 0  t.y=0 2.5 t.gor=0 t.eye=M  t.du=100 1200 1500 1000 t.soa=SOAOBJ t.amp=150 250 t.scale=10*2 t.linew=0 t.or=-90
//OBJECT UP
b.mode=1 b.equal=t b.pat=< b.x=0 -(EC)+0.5 b.y=2.5 0 b.amp=150 250 b.scale=12*2 b.or=0
//OBJECT RIGHT
c.mode=1 c.equal=t c.pat=R c.x=(EC) c.y=0 c.amp=150 c.scale=8*2 c.or=-90

feedback=6 //ADDED
keywait=3 5 //CHANGED  // wait until postisi timeout. 
keytout=I R   // timeout==R-button pressed 
msg=Press-Left-for-mismatch

//INTERROGATION
// t,b,c
SOAINTER=2500 1000
m.mode=1 m.equal=t m.soa=SOAINTER m.y=0

max_trials=1 4 10 //how many trials for each block= #go
cmnt=nochange
lbl=1 //nochange - key=R
//OBJECTS ON THE LEFT (TC,BC,CC)
m.x=0 m.y=0 m.or=0


cmnt=nochange
lbl=1 //nochange - key=R
//OBJECTS ON THE LEFT (TC,BC,CC)
m.x=0 m.y=0 m.or=0
arrowOFF=30
OffOr=180

//**Cue of 1 object:**\\
gx=1 
//LEFT
a.or=LeftOr r.or=OffOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=t.color m.pat=t.pat #go
//UP
a.or=OffOr r.or=UPOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=b.color m.pat=b.pat #go
//RIGHT
a.or=OffOr r.or=OffOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=c.color m.pat=c.pat #go

//LEFT
a.or=LeftOr r.or=OffOr o.or=OffOr
t.color=r b.color=m c.color=g     m.color=t.color m.pat=t.pat #go
//UP
a.or=OffOr r.or=UPOr o.or=OffOr
t.color=g b.color=r c.color=m     m.color=b.color m.pat=b.pat #go
//RIGHT
a.or=OffOr r.or=OffOr o.or=RightOr
t.color=g b.color=m c.color=r     m.color=c.color m.pat=c.pat #go
//bonus:
//UP
a.or=OffOr r.or=UPOr o.or=OffOr
t.color=g b.color=m c.color=r     m.color=b.color m.pat=b.pat #go
//RIGHT
a.or=OffOr r.or=OffOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=c.color m.pat=c.pat #go

//**Cue of 2 objects:**\\
gx=2 
//LEFT and UP && m = LEFT
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=t.color m.pat=t.pat #go
//LEFT and UP && m = UP
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=b.color m.pat=b.pat #go
//RIGHT and UP && m = RIGHT
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=c.color m.pat=c.pat #go
//RIGHT and UP && m = UP
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=b.color m.pat=b.pat #go

//LEFT and UP && m = LEFT
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=g b.color=r c.color=m     m.color=t.color m.pat=t.pat #go
//LEFT and UP && m = UP
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=r b.color=m c.color=g     m.color=b.color m.pat=b.pat #go
//RIGHT and UP && m = RIGHT
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=g b.color=m c.color=r     m.color=c.color m.pat=c.pat #go
//RIGHT and UP && m = UP
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=m b.color=g c.color=r     m.color=b.color m.pat=b.pat #go


//**Cue of 3 objects:**\\
gx=3 
//LEFT and UP and RIGHT && m = LEFT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=t.color m.pat=t.pat #go
//LEFT and UP and RIGHT && m = UP
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=b.color m.pat=b.pat #go
//LEFT and UP and RIGHT && m = RIGHT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=c.color m.pat=c.pat #go

//LEFT and UP and RIGHT && m = LEFT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=m c.color=g     m.color=t.color m.pat=t.pat #go
//LEFT and UP and RIGHT && m = UP
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=g b.color=m c.color=r     m.color=b.color m.pat=b.pat #go
//LEFT and UP and RIGHT && m = RIGHT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=m b.color=r c.color=g     m.color=c.color m.pat=c.pat #go
//bonus:
//LEFT and UP and RIGHT && m = UP
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=g b.color=r c.color=m     m.color=b.color m.pat=b.pat #go
//LEFT and UP and RIGHT && m = RIGHT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=m b.color=g c.color=r     m.color=c.color m.pat=c.pat #go

////////////////////////////////////////////////////////////////////////////////////////////

cmnt=change
lbl=0 //change - key=L
//OBJECTS ON THE LEFT (TC,BC,CC)
m.x=0 m.y=0 m.or=0
arrowON=75 250
max_trials=1
// 
//**Cue of 1 object:**\\
gx=1 
//LEFT and m != LEFT
a.or=LeftOr r.or=OffOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=b.color m.pat=c.pat #go
//UP and m != UP
a.or=OffOr r.or=UPOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=t.color m.pat=c.pat #go
//RIGHT and m != RIGHT
a.or=OffOr r.or=OffOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=b.color m.pat=t.pat #go

//LEFT and m != LEFT
a.or=LeftOr r.or=OffOr o.or=OffOr
t.color=g b.color=r c.color=m     m.color=b.color m.pat=c.pat #go
//UP and m != UP
a.or=OffOr r.or=UPOr o.or=OffOr
t.color=m b.color=r c.color=g     m.color=t.color m.pat=c.pat #go
//RIGHT and m != RIGHT
a.or=OffOr r.or=OffOr o.or=RightOr
t.color=g b.color=r c.color=m     m.color=b.color m.pat=t.pat #go
//bonus:
//UP and m != UP
a.or=OffOr r.or=UPOr o.or=OffOr
t.color=m b.color=r c.color=g     m.color=c.color m.pat=t.pat #go
//RIGHT and m != RIGHT
a.or=OffOr r.or=OffOr o.or=RightOr
t.color=g b.color=r c.color=m     m.color=t.color m.pat=b.pat #go


//**Cue of 2 objects:**\\
gx=2 
//LEFT and UP && m != LEFT
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=c.color m.pat=b.pat #go
//LEFT and UP && m != UP
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=r b.color=g c.color=m     m.color=c.color m.pat=t.pat #go
//RIGHT and UP && m != RIGHT
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=t.color m.pat=c.pat #go
//RIGHT and UP && m != UP
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=t.color m.pat=b.pat #go

//LEFT and UP && m != LEFT
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=g b.color=r c.color=m     m.color=c.color m.pat=b.pat #go
//LEFT and UP && m != UP
a.or=LeftOr r.or=UPOr o.or=OffOr
t.color=r b.color=m c.color=g     m.color=c.color m.pat=t.pat #go
//RIGHT and UP && m != RIGHT
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=g b.color=m c.color=r     m.color=t.color m.pat=c.pat #go
//RIGHT and UP && m != UP
a.or=OffOr r.or=UPOr o.or=RightOr
t.color=r b.color=m c.color=g     m.color=t.color m.pat=b.pat #go



//**Cue of 3 objects:**\\
gx=3 
//LEFT and UP and RIGHT && m != LEFT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=r m.pat=b.pat #go
//LEFT and UP and RIGHT && m != UP
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=g m.pat=c.pat #go
//LEFT and UP and RIGHT && m != RIGHT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=g c.color=m     m.color=m m.pat=b.pat #go

//LEFT and UP and RIGHT && m != LEFT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=g b.color=r c.color=m     m.color=r m.pat=t.pat #go
//LEFT and UP and RIGHT && m != UP
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=m c.color=g     m.color=g m.pat=b.pat #go
//LEFT and UP and RIGHT && m != RIGHT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=m b.color=g c.color=r     m.color=m m.pat=c.pat #go
//Bonus:
//LEFT and UP and RIGHT && m != UP
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=r b.color=m c.color=g     m.color=m m.pat=t.pat #go
//LEFT and UP and RIGHT && m != RIGHT
a.or=LeftOr r.or=UPOr o.or=RightOr
t.color=m b.color=g c.color=r     m.color=r m.pat=t.pat #go

