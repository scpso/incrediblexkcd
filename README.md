# incrediblexkcd

A celebration of xkcd comic 2916: [xkcd.com/2916](https://xkcd.com/2916)

![Machine](https://imgs.xkcd.com/comics/machine_2x.png)

Note that I have zero affiliation with xkcd or Randall Munroe (I invited him
to my engagement party in 2015 but he didn't come) and all original work of
xkcd belongs to him.

Exactly what the copyright status of the user-submitted machine blueprints are
is probably somewhat ambiguous... but I can certainly say it doesn't belong to
me! Happy to take down the data in this repo if anyone has any objection.

As far as the bash script here is concerned, such as it is it's licensed under
the terms of the MIT license so help yourself. Thanks to the anonymous user in
the [explainxkcd.com](https://www.explainxkcd.com/wiki/index.php/2916:_Machine)
discussion who got me started with the api endpoints by sharing some
observations from users on
[https://euphoria.leet.nu/room/xkcd/](https://euphoria.leet.nu/room/xkcd/).

I found myself wondering if any of my submissions have been published (they
haven't) and wound up writing a small script to ingest the published data. My
best submission was called 'boing boom tschack' and, naturally, depicted
Kraftwerk on stage replete with their signature lightshow.

If you're just here to search for published submissions, have a look at the
**Permalinks** section at the bottom of this readme, or the file
[incrediblexkcd.csv](/incrediblexkcd.csv) which contains the ids, permalinks,
submission dates (in UTC timezone), and titles of all blueprints that have been
published on [xkcd.com](https://xkcd.com/2916).

Otherwise feel free to run the script
[getincrediblexkcd.sh](/getincrediblexkcd.sh)
yourself. It takes me about 6mins
to run for the first 938 machines. You can stop it at any time by just pressing
`CTRL-C` to send a SIGINT and it *should* exit gracefully. When you run the
script again you can use the argument `--reset` to delete all data and start
from scratch, or otherwise it should nominally pick up where it left off. That
said, the slowest part of the script is scanning through the files rather than
downloading the raw data so it's not a whole lot faster - it still takes
me 4mins to scan through the 938 machines without downloading anything. No
doubt there are more performant methods to use - and if you have any tips
regarding this (or my script authorship in general) feel free to open an issue.

Note that the terminology here is `machine` = a full collection of many
individual `blueprints`, which are the individual cells that can be designed
and submitted by users. Each time the `machine` is updated it is published
(in the api) as a new `version`. You can peruse various states using the url:

    https://xkcd.com/2916/#xt=[X]&yt=[Y]&v=[V]

Where `[X]` and `[Y]` are the x and y coordinates of the machine and `[V]` is
the version (don't include the square brackets, just the numbers).

Also, while it seems the bulk of blueprints that have been published appear in
the current version of the machine, there are quite a few that only appear in
previous versions. I have no idea what the selection/moderation process is.

# Permalinks

[undercomplicate](https://xkcd.com/2916/#xt=3&yt=0&v=6) |
[Look ma! No hands!](https://xkcd.com/2916/#xt=8&yt=0&v=12) |
[popcorn](https://xkcd.com/2916/#xt=3&yt=0&v=8) |
[samba](https://xkcd.com/2916/#xt=4&yt=0&v=9) |
[dont forget to switch your fans](https://xkcd.com/2916/#xt=7&yt=0&v=2) |
[Bounce house](https://xkcd.com/2916/#xt=5&yt=0&v=10) |
[Fred](https://xkcd.com/2916/#xt=1&yt=0&v=4) |
[Pinball Bouncer](https://xkcd.com/2916/#xt=0&yt=1&v=5) |
[Gravity-assisted bonkotron](https://xkcd.com/2916/#xt=6&yt=0&v=11) |
[pretty bad](https://xkcd.com/2916/#xt=0&yt=0&v=1) |
[OnlyFans](https://xkcd.com/2916/#xt=3&yt=0&v=7) |
[sword](https://xkcd.com/2916/#xt=2&yt=0&v=3) |
[Use the forcefields](https://xkcd.com/2916/#xt=4&yt=1&v=21) |
[The message](https://xkcd.com/2916/#xt=10&yt=0&v=16) |
[x](https://xkcd.com/2916/#xt=11&yt=0&v=17) |
[Void in reverse](https://xkcd.com/2916/#xt=0&yt=2&v=14) |
[Red-Green](https://xkcd.com/2916/#xt=1&yt=1&v=18) |
[Repel-o-matic](https://xkcd.com/2916/#xt=1&yt=2&v=22) |
[blowfish](https://xkcd.com/2916/#xt=1&yt=1&v=19) |
[Roticerizer](https://xkcd.com/2916/#xt=1&yt=2&v=24) |
[Black Hole fan](https://xkcd.com/2916/#xt=0&yt=4&v=20) |
[hit](https://xkcd.com/2916/#xt=11&yt=1&v=23) |
[Pride Plinko](https://xkcd.com/2916/#xt=9&yt=0&v=14) |
[Repulsed](https://xkcd.com/2916/#xt=0&yt=3&v=15) |
[Ultrasorter](https://xkcd.com/2916/#xt=1&yt=3&v=27) |
[Hello Squirrel](https://xkcd.com/2916/#xt=1&yt=4&v=32) |
[Jamslunt interfoggle](https://xkcd.com/2916/#xt=2&yt=2&v=30) |
[?](https://xkcd.com/2916/#xt=0&yt=5&v=26) |
[It Just works](https://xkcd.com/2916/#xt=5&yt=1&v=28) |
[the great filter](https://xkcd.com/2916/#xt=3&yt=1&v=31) |
[I need to vent](https://xkcd.com/2916/#xt=3&yt=2&v=36) |
[bouncy](https://xkcd.com/2916/#xt=2&yt=1&v=26) |
[Bonks and fans](https://xkcd.com/2916/#xt=3&yt=3&v=33) |
[flughenvaghen](https://xkcd.com/2916/#xt=2&yt=3&v=34) |
[Propmaster](https://xkcd.com/2916/#xt=6&yt=1&v=35) |
[sierpinski](https://xkcd.com/2916/#xt=4&yt=2&v=29) |
[Too much KSP](https://xkcd.com/2916/#xt=5&yt=2&v=46) |
[The jugglers](https://xkcd.com/2916/#xt=11&yt=0&v=40) |
[Repulsors](https://xkcd.com/2916/#xt=7&yt=1&v=45) |
[The giant](https://xkcd.com/2916/#xt=9&yt=1&v=38) |
[hammertime](https://xkcd.com/2916/#xt=3&yt=4&v=44) |
[the sword is mightier than the balls](https://xkcd.com/2916/#xt=10&yt=1&v=39) |
[Injection moulding](https://xkcd.com/2916/#xt=8&yt=1&v=41) |
[Take This](https://xkcd.com/2916/#xt=2&yt=4&v=42) |
[thread the needle](https://xkcd.com/2916/#xt=1&yt=5&v=47) |
[the unbearable lightness of being yellow](https://xkcd.com/2916/#xt=0&yt=6&v=43) |
[among us](https://xkcd.com/2916/#xt=10&yt=0&v=38) |
[Wind and Planks](https://xkcd.com/2916/#xt=11&yt=2&v=48) |
[The fun we could have had](https://xkcd.com/2916/#xt=0&yt=8&v=60) |
[All Hail Hexagon squirrel](https://xkcd.com/2916/#xt=0&yt=7&v=55) |
[Where the wind Takes you](https://xkcd.com/2916/#xt=6&yt=2&v=50) |
[I like big bonks and I cannot lie](https://xkcd.com/2916/#xt=4&yt=5&v=58) |
[flycatcher](https://xkcd.com/2916/#xt=2&yt=5&v=51) |
[pipe dream](https://xkcd.com/2916/#xt=4&yt=3&v=50) |
[Led Zeppelin Meets ACDC and Fans](https://xkcd.com/2916/#xt=4&yt=5&v=57) |
[a walk in the park](https://xkcd.com/2916/#xt=5&yt=3&v=56) |
[The Jetpack squirrels lair](https://xkcd.com/2916/#xt=3&yt=5&v=52) |
[530 560nM sorting](https://xkcd.com/2916/#xt=4&yt=4&v=53) |
[The Holar Express](https://xkcd.com/2916/#xt=6&yt=3&v=59) |
[Swingbopper](https://xkcd.com/2916/#xt=1&yt=6&v=54) |
[makeshift Particle accelerator](https://xkcd.com/2916/#xt=11&yt=3&v=62) |
[XKCD 303](https://xkcd.com/2916/#xt=1&yt=7&v=67) |
[air filtration](https://xkcd.com/2916/#xt=2&yt=6&v=62) |
[squirrel defender](https://xkcd.com/2916/#xt=11&yt=4&v=66) |
[Bonk line](https://xkcd.com/2916/#xt=7&yt=3&v=69) |
[Don't Cross The Streams](https://xkcd.com/2916/#xt=0&yt=9&v=68) |
[The long way around](https://xkcd.com/2916/#xt=3&yt=6&v=65) |
[Physics off](https://xkcd.com/2916/#xt=5&yt=4&v=63) |
[idk how this works](https://xkcd.com/2916/#xt=7&yt=2&v=64) |
[Pneumatic Pnetwork](https://xkcd.com/2916/#xt=6&yt=4&v=72) |
[Sword Pile](https://xkcd.com/2916/#xt=5&yt=5&v=71) |
[Bounce](https://xkcd.com/2916/#xt=7&yt=3&v=70) |
[sway](https://xkcd.com/2916/#xt=9&yt=3&v=81) |
[Stroll'in](https://xkcd.com/2916/#xt=9&yt=2&v=82) |
[probably definitely probably](https://xkcd.com/2916/#xt=4&yt=6&v=74) |
[CROSSOVER FANFIC](https://xkcd.com/2916/#xt=6&yt=5&v=77) |
[Cross Purposes](https://xkcd.com/2916/#xt=9&yt=2&v=83) |
[THE AMBIENT VOID OF SELF-CONGRATULATORY BUT ULTIMATELY EMPTY RHETORIC](https://xkcd.com/2916/#xt=8&yt=3&v=76) |
[SEE YOU, SPACE CHEERLEADER](https://xkcd.com/2916/#xt=8&yt=4&v=84) |
[Pachinko](https://xkcd.com/2916/#xt=10&yt=3&v=79) |
[The intestines](https://xkcd.com/2916/#xt=9&yt=4&v=80) |
[gravity feed](https://xkcd.com/2916/#xt=7&yt=4&v=78) |
[Bouncy House](https://xkcd.com/2916/#xt=0&yt=10&v=75) |
[jupiter](https://xkcd.com/2916/#xt=8&yt=2&v=74) |
[BONK](https://xkcd.com/2916/#xt=10&yt=4&v=86) |
[Tower defence](https://xkcd.com/2916/#xt=8&yt=6&v=94) |
[Red Boink, Blue FlIES](https://xkcd.com/2916/#xt=7&yt=5&v=91) |
[Leaky pipes](https://xkcd.com/2916/#xt=5&yt=6&v=95) |
[Fan](https://xkcd.com/2916/#xt=7&yt=5&v=89) |
[backyard particle accelerator](https://xkcd.com/2916/#xt=9&yt=5&v=92) |
[The Squirrel Overseer](https://xkcd.com/2916/#xt=10&yt=2&v=93) |
[Cogwheel Clockworks](https://xkcd.com/2916/#xt=11&yt=6&v=87) |
[I Ship it](https://xkcd.com/2916/#xt=7&yt=5&v=90) |
[trans rights](https://xkcd.com/2916/#xt=7&yt=6&v=96) |
[push and pull](https://xkcd.com/2916/#xt=7&yt=5&v=88) |
[Bounce Grouse](https://xkcd.com/2916/#xt=8&yt=5&v=86) |
[xkcd's biggest fan](https://xkcd.com/2916/#xt=11&yt=5&v=102) |
[☃](https://xkcd.com/2916/#xt=5&yt=7&v=108) |
[The duel](https://xkcd.com/2916/#xt=11&yt=7&v=98) |
[A Roundabout Bounder route](https://xkcd.com/2916/#xt=1&yt=8&v=104) |
[KAPOW](https://xkcd.com/2916/#xt=9&yt=6&v=98) |
[Fans and bricks](https://xkcd.com/2916/#xt=10&yt=6&v=106) |
[less is more](https://xkcd.com/2916/#xt=6&yt=6&v=100) |
[I'm a BIG FAN](https://xkcd.com/2916/#xt=1&yt=8&v=103) |
[Probable Determinism: The Ride](https://xkcd.com/2916/#xt=4&yt=7&v=107) |
[sword dodge](https://xkcd.com/2916/#xt=0&yt=11&v=105) |
[Double Rainbow](https://xkcd.com/2916/#xt=10&yt=5&v=99) |
[Big Mixer](https://xkcd.com/2916/#xt=2&yt=7&v=101) |
[Double half pipe](https://xkcd.com/2916/#xt=10&yt=7&v=118) |
[DEFINITELY NONDETERMINISTIC](https://xkcd.com/2916/#xt=10&yt=7&v=116) |
[Supercollider](https://xkcd.com/2916/#xt=9&yt=9&v=120) |
[Minefield](https://xkcd.com/2916/#xt=9&yt=7&v=114) |
[The Bonk Mech](https://xkcd.com/2916/#xt=9&yt=7&v=115) |
[Descent](https://xkcd.com/2916/#xt=5&yt=7&v=110) |
[The "I can't believe it actually works"](https://xkcd.com/2916/#xt=7&yt=7&v=111) |
[Prism twirler](https://xkcd.com/2916/#xt=8&yt=7&v=113) |
[Loop de Loop](https://xkcd.com/2916/#xt=10&yt=9&v=119) |
[unbothered](https://xkcd.com/2916/#xt=3&yt=7&v=112) |
[SQUARE SQUIRREL CONTAINMENT](https://xkcd.com/2916/#xt=2&yt=8&v=117) |
[unsteady stack](https://xkcd.com/2916/#xt=6&yt=7&v=110) |
[The smithy's Rest](https://xkcd.com/2916/#xt=1&yt=10&v=132) |
[Unnecessary Complications with mediocre outcome](https://xkcd.com/2916/#xt=6&yt=8&v=122) |
[supporters](https://xkcd.com/2916/#xt=9&yt=10&v=131) |
[Bonk Reactor](https://xkcd.com/2916/#xt=0&yt=13&v=126) |
[small sort](https://xkcd.com/2916/#xt=9&yt=8&v=125) |
[Many a Boink](https://xkcd.com/2916/#xt=8&yt=8&v=124) |
[Ultimate Ballpit Showdown](https://xkcd.com/2916/#xt=2&yt=8&v=127) |
[order and chaos](https://xkcd.com/2916/#xt=1&yt=9&v=129) |
[autocollider](https://xkcd.com/2916/#xt=2&yt=9&v=130) |
[ciurus carolinensis](https://xkcd.com/2916/#xt=0&yt=12&v=123) |
[black hole 2: electric boogaloo](https://xkcd.com/2916/#xt=1&yt=9&v=128) |
[Livin' on the edge](https://xkcd.com/2916/#xt=8&yt=9&v=133) |
[Crossroads](https://xkcd.com/2916/#xt=7&yt=8&v=135) |
[The Mistakeinator](https://xkcd.com/2916/#xt=11&yt=8&v=145) |
[canals](https://xkcd.com/2916/#xt=10&yt=8&v=135) |
[wash em up](https://xkcd.com/2916/#xt=6&yt=9&v=141) |
[What strange creatures](https://xkcd.com/2916/#xt=0&yt=14&v=142) |
[Path of the Fireflies](https://xkcd.com/2916/#xt=3&yt=9&v=144) |
[Squirrel's Maze](https://xkcd.com/2916/#xt=6&yt=10&v=143) |
[sorry](https://xkcd.com/2916/#xt=3&yt=8&v=136) |
[THEY WATCH](https://xkcd.com/2916/#xt=7&yt=10&v=140) |
[chassé croisé](https://xkcd.com/2916/#xt=3&yt=8&v=137) |
[Hands free 2 - replusive](https://xkcd.com/2916/#xt=10&yt=10&v=138) |
[Flappy_Rake](https://xkcd.com/2916/#xt=7&yt=9&v=139) |
[Triforce Rules](https://xkcd.com/2916/#xt=11&yt=9&v=151) |
[space oddity](https://xkcd.com/2916/#xt=3&yt=10&v=158) |
[Breach Control](https://xkcd.com/2916/#xt=1&yt=11&v=154) |
[Free floating](https://xkcd.com/2916/#xt=8&yt=10&v=156) |
[SUPER PINBALLINATOR 9000](https://xkcd.com/2916/#xt=2&yt=16&v=157) |
[Large Hexagon Collider](https://xkcd.com/2916/#xt=6&yt=9&v=147) |
[a touchy topic](https://xkcd.com/2916/#xt=2&yt=10&v=147) |
[more speed, fewer collisions](https://xkcd.com/2916/#xt=6&yt=11&v=150) |
[Skeet Shoot](https://xkcd.com/2916/#xt=3&yt=10&v=153) |
[hellish merger](https://xkcd.com/2916/#xt=4&yt=8&v=152) |
[make it rain](https://xkcd.com/2916/#xt=2&yt=11&v=149) |
[The princess and the Peas](https://xkcd.com/2916/#xt=2&yt=15&v=155) |
[Talvieno's Smashbot](https://xkcd.com/2916/#xt=4&yt=9&v=161) |
[spin sorter](https://xkcd.com/2916/#xt=0&yt=15&v=163) |
[They'll get there eventually](https://xkcd.com/2916/#xt=5&yt=8&v=160) |
[Next Time on Dragonball Z!](https://xkcd.com/2916/#xt=4&yt=10&v=169) |
[5$ budget pinball](https://xkcd.com/2916/#xt=5&yt=10&v=166) |
[To Boink or Not To Boink](https://xkcd.com/2916/#xt=1&yt=12&v=165) |
[the baseball player](https://xkcd.com/2916/#xt=4&yt=10&v=170) |
[The Taco Bell Experience](https://xkcd.com/2916/#xt=8&yt=10&v=160) |
[Over Complication](https://xkcd.com/2916/#xt=5&yt=9&v=164) |
[the hall of edges](https://xkcd.com/2916/#xt=3&yt=11&v=162) |
[Criss-Cross](https://xkcd.com/2916/#xt=6&yt=11&v=167) |
[quarantine](https://xkcd.com/2916/#xt=9&yt=10&v=168) |
[How did the Squirrel get that?](https://xkcd.com/2916/#xt=0&yt=16&v=180) |
[our house, in the middle of my sort](https://xkcd.com/2916/#xt=7&yt=11&v=174) |
[Space Cadet](https://xkcd.com/2916/#xt=1&yt=16&v=176) |
[how to not sort colors (colorized) 2](https://xkcd.com/2916/#xt=2&yt=12&v=178) |
[Levitation](https://xkcd.com/2916/#xt=7&yt=12&v=182) |
[opposite direction](https://xkcd.com/2916/#xt=6&yt=12&v=175) |
[Ball PIt](https://xkcd.com/2916/#xt=11&yt=10&v=172) |
[The Kessle run](https://xkcd.com/2916/#xt=4&yt=11&v=172) |
[Q-switched LINAC](https://xkcd.com/2916/#xt=0&yt=17&v=181) |
[Clockwork ClusterF***](https://xkcd.com/2916/#xt=5&yt=11&v=173) |
[An Uphill Battle](https://xkcd.com/2916/#xt=8&yt=11&v=179) |
[Overly Complicated work of art](https://xkcd.com/2916/#xt=1&yt=13&v=177) |
[Good-enough pipeworks](https://xkcd.com/2916/#xt=3&yt=12&v=186) |
[arcane ballpit magicks](https://xkcd.com/2916/#xt=6&yt=13&v=184) |
[really simple machine](https://xkcd.com/2916/#xt=6&yt=14&v=188) |
[absence of god](https://xkcd.com/2916/#xt=9&yt=11&v=185) |
[Observation](https://xkcd.com/2916/#xt=7&yt=13&v=184) |
[Air conditioning unit](https://xkcd.com/2916/#xt=2&yt=13&v=187) |
[i think youre nuts](https://xkcd.com/2916/#xt=4&yt=12&v=192) |
[⚔️🔴☢️](https://xkcd.com/2916/#xt=6&yt=15&v=193) |
[The Betrayal...](https://xkcd.com/2916/#xt=1&yt=14&v=190) |
[probabilistic bounce house](https://xkcd.com/2916/#xt=3&yt=13&v=191) |
[lawless roundabout](https://xkcd.com/2916/#xt=10&yt=11&v=194) |
[Windsort and the squirrel guard](https://xkcd.com/2916/#xt=8&yt=12&v=189) |
[i'm A big fan](https://xkcd.com/2916/#xt=3&yt=10&v=201) |
[Galton's Failed board](https://xkcd.com/2916/#xt=6&yt=16&v=196) |
[You have my sword](https://xkcd.com/2916/#xt=8&yt=13&v=197) |
[Ughhhh](https://xkcd.com/2916/#xt=7&yt=14&v=198) |
[Simple](https://xkcd.com/2916/#xt=9&yt=12&v=200) |
[The tower](https://xkcd.com/2916/#xt=9&yt=12&v=196) |
[iffy clouds](https://xkcd.com/2916/#xt=3&yt=10&v=204) |
[inclined planes](https://xkcd.com/2916/#xt=1&yt=17&v=203) |
[gentle descent](https://xkcd.com/2916/#xt=9&yt=13&v=206) |
[the very accurate separator TM](https://xkcd.com/2916/#xt=3&yt=10&v=202) |
[Do you feel a draft?](https://xkcd.com/2916/#xt=3&yt=10&v=205) |
[laziness ](https://xkcd.com/2916/#xt=11&yt=11&v=199) |
[has anyone figured out how this game determines which machines to show publicly yet?](https://xkcd.com/2916/#xt=11&yt=13&v=211) |
[an actual honest attempt to sort the balls](https://xkcd.com/2916/#xt=5&yt=12&v=209) |
[secret tunnel](https://xkcd.com/2916/#xt=2&yt=14&v=208) |
[double loop](https://xkcd.com/2916/#xt=7&yt=15&v=214) |
[the squirrel armada](https://xkcd.com/2916/#xt=6&yt=17&v=218) |
[Oops! All BonkS!](https://xkcd.com/2916/#xt=9&yt=9&v=216) |
[100% reliable](https://xkcd.com/2916/#xt=8&yt=14&v=212) |
[Bonko sort](https://xkcd.com/2916/#xt=3&yt=10&v=208) |
[orbital bonk](https://xkcd.com/2916/#xt=11&yt=12&v=210) |
[I tried gravity. it was hard](https://xkcd.com/2916/#xt=9&yt=9&v=215) |
[Basic Bouncer Funnel](https://xkcd.com/2916/#xt=10&yt=12&v=217) |
[Fan-tastic heart](https://xkcd.com/2916/#xt=11&yt=13&v=213) |
[launch](https://xkcd.com/2916/#xt=10&yt=12&v=220) |
[WAAAGGGGGGGG!!!!](https://xkcd.com/2916/#xt=4&yt=13&v=225) |
[scintillae](https://xkcd.com/2916/#xt=5&yt=13&v=229) |
[Resistor v87](https://xkcd.com/2916/#xt=5&yt=13&v=223) |
[defying expectations - a Visual Essay](https://xkcd.com/2916/#xt=1&yt=15&v=230) |
[woodhammer 40000](https://xkcd.com/2916/#xt=5&yt=13&v=222) |
[I Don't Think This Is OSHA Compliant](https://xkcd.com/2916/#xt=8&yt=15&v=220) |
[cyclone](https://xkcd.com/2916/#xt=3&yt=14&v=228) |
[Chaos in a box](https://xkcd.com/2916/#xt=5&yt=13&v=227) |
["I think the Interns are taking care of it.](https://xkcd.com/2916/#xt=8&yt=15&v=221) |
[No Funnel Allowed](https://xkcd.com/2916/#xt=5&yt=13&v=226) |
[blow-hard-help](https://xkcd.com/2916/#xt=5&yt=13&v=224) |
[the airship](https://xkcd.com/2916/#xt=10&yt=13&v=233) |
[inconvenient](https://xkcd.com/2916/#xt=0&yt=18&v=241) |
[how i learned to stop worrying and love the particle oven](https://xkcd.com/2916/#xt=7&yt=16&v=232) |
[654](https://xkcd.com/2916/#xt=9&yt=14&v=234) |
[Filterrer](https://xkcd.com/2916/#xt=0&yt=18&v=239) |
[pool](https://xkcd.com/2916/#xt=7&yt=17&v=242) |
[Fan wars ii: last stand of the hammer buns](https://xkcd.com/2916/#xt=9&yt=14&v=235) |
[Secrets](https://xkcd.com/2916/#xt=2&yt=17&v=236) |
[Board to tears](https://xkcd.com/2916/#xt=0&yt=18&v=243) |
[bookshelf](https://xkcd.com/2916/#xt=5&yt=13&v=232) |
[Blacksmith's Lament](https://xkcd.com/2916/#xt=0&yt=18&v=237) |
[bonk industries](https://xkcd.com/2916/#xt=0&yt=18&v=238) |
[duality](https://xkcd.com/2916/#xt=9&yt=15&v=245) |
[trans rights](https://xkcd.com/2916/#xt=4&yt=14&v=249) |
[the council advises against colliding](https://xkcd.com/2916/#xt=0&yt=18&v=247) |
[now that's what I call engineering](https://xkcd.com/2916/#xt=5&yt=14&v=253) |
[Epic Duel](https://xkcd.com/2916/#xt=0&yt=18&v=252) |
[I need to stop why cant i stop](https://xkcd.com/2916/#xt=10&yt=14&v=248) |
[I have trapped him](https://xkcd.com/2916/#xt=3&yt=15&v=250) |
[GRAVITY FILTER](https://xkcd.com/2916/#xt=3&yt=15&v=251) |
[sacrifices for the greater good](https://xkcd.com/2916/#xt=4&yt=14&v=246) |
[Never trust the squirrels.](https://xkcd.com/2916/#xt=0&yt=19&v=255) |
[Bonk Conduction](https://xkcd.com/2916/#xt=7&yt=18&v=245) |
[don't forget to change the directions of your fans for summer!](https://xkcd.com/2916/#xt=0&yt=18&v=254) |
[Deterministic pinball](https://xkcd.com/2916/#xt=4&yt=17&v=267) |
[The Fanspitter contraption](https://xkcd.com/2916/#xt=1&yt=18&v=264) |
[One Brick wonder](https://xkcd.com/2916/#xt=11&yt=14&v=262) |
[Thread the needle](https://xkcd.com/2916/#xt=3&yt=16&v=265) |
[Egg Drop Experiment](https://xkcd.com/2916/#xt=4&yt=16&v=266) |
[if at first you don't succeed...](https://xkcd.com/2916/#xt=8&yt=17&v=258) |
[A reasonable attempt](https://xkcd.com/2916/#xt=10&yt=15&v=268) |
[loss](https://xkcd.com/2916/#xt=4&yt=15&v=261) |
[Contactless Payment](https://xkcd.com/2916/#xt=0&yt=18&v=260) |
[i overdid the props kinda](https://xkcd.com/2916/#xt=7&yt=19&v=263) |
[the horror](https://xkcd.com/2916/#xt=8&yt=18&v=259) |
[BONKland](https://xkcd.com/2916/#xt=8&yt=16&v=257) |
[good enough](https://xkcd.com/2916/#xt=10&yt=16&v=280) |
[Brownian Motion](https://xkcd.com/2916/#xt=1&yt=20&v=281) |
[What goes up](https://xkcd.com/2916/#xt=2&yt=18&v=271) |
[Defying Phsyics](https://xkcd.com/2916/#xt=11&yt=15&v=276) |
[Popcorn](https://xkcd.com/2916/#xt=1&yt=19&v=274) |
[tiny](https://xkcd.com/2916/#xt=9&yt=19&v=282) |
[Hammer-encouraged sorting algorythm](https://xkcd.com/2916/#xt=5&yt=15&v=270) |
[boing](https://xkcd.com/2916/#xt=8&yt=19&v=277) |
[it works](https://xkcd.com/2916/#xt=5&yt=16&v=272) |
[Anechoic chamber](https://xkcd.com/2916/#xt=9&yt=18&v=278) |
[Good Thing I'm Not COlorblind](https://xkcd.com/2916/#xt=9&yt=16&v=273) |
[Probably Pinball](https://xkcd.com/2916/#xt=1&yt=20&v=279) |
[Rainbow Road](https://xkcd.com/2916/#xt=10&yt=18&v=292) |
[Not a transistor](https://xkcd.com/2916/#xt=8&yt=20&v=291) |
[test2](https://xkcd.com/2916/#xt=9&yt=19&v=286) |
[AutoWash](https://xkcd.com/2916/#xt=11&yt=16&v=293) |
[Angry Claw Beast](https://xkcd.com/2916/#xt=1&yt=21&v=290) |
[I miss LineRider](https://xkcd.com/2916/#xt=3&yt=17&v=285) |
[Bonknoulli principle](https://xkcd.com/2916/#xt=11&yt=17&v=294) |
[Anvil cat slips the surly bonds of earth](https://xkcd.com/2916/#xt=11&yt=18&v=295) |
[Il fait Doink](https://xkcd.com/2916/#xt=8&yt=20&v=287) |
[dont mind the collisions](https://xkcd.com/2916/#xt=8&yt=20&v=289) |
[I mean it works...](https://xkcd.com/2916/#xt=9&yt=19&v=284) |
[whooshbonk](https://xkcd.com/2916/#xt=8&yt=19&v=288) |
[Second](https://xkcd.com/2916/#xt=0&yt=20&v=302) |
[Drawbridge](https://xkcd.com/2916/#xt=0&yt=20&v=300) |
[All about the balance](https://xkcd.com/2916/#xt=10&yt=19&v=303) |
[Gravity works](https://xkcd.com/2916/#xt=5&yt=17&v=298) |
[too care to drunk](https://xkcd.com/2916/#xt=1&yt=22&v=305) |
[The Squirrel from Ipanema](https://xkcd.com/2916/#xt=11&yt=17&v=297) |
[Anxious blacksmith’s dreams](https://xkcd.com/2916/#xt=8&yt=16&v=304) |
[2](https://xkcd.com/2916/#xt=0&yt=21&v=306) |
[big tony](https://xkcd.com/2916/#xt=7&yt=20&v=299) |
[completely unrelated events (right)](https://xkcd.com/2916/#xt=0&yt=22&v=307) |
[Peas in pipes](https://xkcd.com/2916/#xt=11&yt=19&v=297) |
[a little basic](https://xkcd.com/2916/#xt=2&yt=19&v=301) |
[Oil and Water bubble toy](https://xkcd.com/2916/#xt=0&yt=23&v=311) |
[the chute](https://xkcd.com/2916/#xt=2&yt=21&v=317) |
[lucky draw](https://xkcd.com/2916/#xt=0&yt=24&v=316) |
[They gave me a line what](https://xkcd.com/2916/#xt=0&yt=22&v=309) |
[Mostly Harmless](https://xkcd.com/2916/#xt=4&yt=18&v=318) |
[Scientific Progress Goes Bonk](https://xkcd.com/2916/#xt=1&yt=23&v=315) |
[Wind sorter](https://xkcd.com/2916/#xt=3&yt=18&v=312) |
[inefficient yet sufficient](https://xkcd.com/2916/#xt=2&yt=20&v=313) |
[Lines and launches](https://xkcd.com/2916/#xt=3&yt=19&v=319) |
[Trust Me it works](https://xkcd.com/2916/#xt=9&yt=20&v=314) |
[The Shortest Distance From Point A To Point B](https://xkcd.com/2916/#xt=0&yt=23&v=310) |
[Gravity assist](https://xkcd.com/2916/#xt=1&yt=22&v=309) |
[Inner Peace](https://xkcd.com/2916/#xt=2&yt=21&v=321) |
[raaaaaamps](https://xkcd.com/2916/#xt=11&yt=20&v=326) |
[shooting gallery](https://xkcd.com/2916/#xt=10&yt=20&v=321) |
[but you did nothing...](https://xkcd.com/2916/#xt=5&yt=19&v=330) |
[no](https://xkcd.com/2916/#xt=6&yt=18&v=331) |
[Safe from emails](https://xkcd.com/2916/#xt=6&yt=19&v=332) |
[the prism sorts as it desires](https://xkcd.com/2916/#xt=2&yt=20&v=325) |
[breakout](https://xkcd.com/2916/#xt=2&yt=22&v=322) |
[Fan power](https://xkcd.com/2916/#xt=4&yt=19&v=329) |
[green machine](https://xkcd.com/2916/#xt=9&yt=20&v=323) |
[am i doing this right?](https://xkcd.com/2916/#xt=5&yt=18&v=328) |
[I totally understand gravity systems](https://xkcd.com/2916/#xt=2&yt=23&v=324) |
[Orbital Mechanic 3: the cat-aclysm](https://xkcd.com/2916/#xt=0&yt=25&v=336) |
[The Fan-tom Menace ](https://xkcd.com/2916/#xt=1&yt=25&v=344) |
[nobonk](https://xkcd.com/2916/#xt=3&yt=21&v=334) |
[Infinite Cosmos](https://xkcd.com/2916/#xt=5&yt=20&v=340) |
[Lazy hurricane](https://xkcd.com/2916/#xt=5&yt=21&v=343) |
[tee hee](https://xkcd.com/2916/#xt=0&yt=26&v=337) |
[Junction](https://xkcd.com/2916/#xt=1&yt=24&v=335) |
[collision](https://xkcd.com/2916/#xt=4&yt=20&v=338) |
[how2colorsort](https://xkcd.com/2916/#xt=3&yt=22&v=341) |
[flutterpellets](https://xkcd.com/2916/#xt=6&yt=20&v=342) |
[balls galore](https://xkcd.com/2916/#xt=3&yt=20&v=334) |
[Surfing the Stream](https://xkcd.com/2916/#xt=6&yt=21&v=345) |
[a bonk-determined tesla valve](https://xkcd.com/2916/#xt=0&yt=26&v=355) |
[Technically Effective](https://xkcd.com/2916/#xt=9&yt=22&v=348) |
[SPEED RACER](https://xkcd.com/2916/#xt=11&yt=21&v=347) |
[Diabolical Simplicity](https://xkcd.com/2916/#xt=6&yt=22&v=351) |
[60% of the time it works every time](https://xkcd.com/2916/#xt=4&yt=22&v=347) |
[the filter](https://xkcd.com/2916/#xt=7&yt=21&v=349) |
[crisscross](https://xkcd.com/2916/#xt=9&yt=21&v=354) |
[crossed streams](https://xkcd.com/2916/#xt=8&yt=21&v=352) |
[What's Kinetic Energy Got To do (Got To Do) With It](https://xkcd.com/2916/#xt=3&yt=23&v=350) |
[Cyclone tower](https://xkcd.com/2916/#xt=10&yt=22&v=358) |
[Maxwell's Demon](https://xkcd.com/2916/#xt=1&yt=26&v=356) |
[Behind the scenes of the sword in the stone](https://xkcd.com/2916/#xt=1&yt=27&v=357) |
[Probable failure v0.1](https://xkcd.com/2916/#xt=10&yt=21&v=360) |
[Designed within needed technical specifications](https://xkcd.com/2916/#xt=7&yt=23&v=371) |
[The Great Attractor](https://xkcd.com/2916/#xt=5&yt=23&v=367) |
[blue hyper highway across green crosswalk](https://xkcd.com/2916/#xt=7&yt=22&v=364) |
[gold rubeberg](https://xkcd.com/2916/#xt=5&yt=22&v=363) |
[Sleepy](https://xkcd.com/2916/#xt=6&yt=18&v=365) |
[The Crazy intersection](https://xkcd.com/2916/#xt=8&yt=22&v=362) |
[pattern recognition](https://xkcd.com/2916/#xt=2&yt=25&v=366) |
[cross](https://xkcd.com/2916/#xt=11&yt=22&v=361) |
[I Can't Believe It's Not Bonk](https://xkcd.com/2916/#xt=6&yt=23&v=370) |
[Spiral](https://xkcd.com/2916/#xt=0&yt=27&v=368) |
[oof](https://xkcd.com/2916/#xt=4&yt=23&v=369) |
[old cabin](https://xkcd.com/2916/#xt=10&yt=23&v=378) |
[Flooper](https://xkcd.com/2916/#xt=3&yt=24&v=381) |
[egg holder](https://xkcd.com/2916/#xt=11&yt=23&v=373) |
[the sorting hat](https://xkcd.com/2916/#xt=9&yt=24&v=376) |
[Barroom billiards](https://xkcd.com/2916/#xt=9&yt=23&v=373) |
[thirsty](https://xkcd.com/2916/#xt=8&yt=23&v=375) |
[mixer](https://xkcd.com/2916/#xt=7&yt=24&v=383) |
[Team Rocket is blasting off again](https://xkcd.com/2916/#xt=5&yt=24&v=380) |
[Knife's Edge](https://xkcd.com/2916/#xt=8&yt=25&v=377) |
[two factor sortification](https://xkcd.com/2916/#xt=1&yt=28&v=382) |
[swords of teleportation](https://xkcd.com/2916/#xt=11&yt=24&v=374) |
[Malus Pummela](https://xkcd.com/2916/#xt=9&yt=25&v=379) |
[KALI MAAAAAA](https://xkcd.com/2916/#xt=0&yt=28&v=387) |
[EVENTUALLY CONSISTENT](https://xkcd.com/2916/#xt=10&yt=25&v=389) |
[My Apologies To the chef](https://xkcd.com/2916/#xt=2&yt=26&v=391) |
[spin to win!](https://xkcd.com/2916/#xt=6&yt=24&v=385) |
[1.. 2.. 3.. crunch](https://xkcd.com/2916/#xt=4&yt=24&v=385) |
[highway inspector bun](https://xkcd.com/2916/#xt=8&yt=24&v=386) |
[I think this pipe is clogged](https://xkcd.com/2916/#xt=8&yt=15&v=393) |
[Tripplelerator](https://xkcd.com/2916/#xt=4&yt=25&v=394) |
[Cyclotronics](https://xkcd.com/2916/#xt=3&yt=25&v=395) |
[Mostly air pressure](https://xkcd.com/2916/#xt=10&yt=24&v=390) |
[Gaussian funnel](https://xkcd.com/2916/#xt=7&yt=25&v=388) |
[A dance of ancient forces](https://xkcd.com/2916/#xt=11&yt=25&v=392) |
[are you sure we are not missing an obvious solution?](https://xkcd.com/2916/#xt=9&yt=27&v=407) |
[Still not sure how Prisms work](https://xkcd.com/2916/#xt=10&yt=26&v=403) |
[crosswinds](https://xkcd.com/2916/#xt=6&yt=25&v=397) |
[Mass spectrometer](https://xkcd.com/2916/#xt=9&yt=26&v=404) |
[Squirrel determinism](https://xkcd.com/2916/#xt=3&yt=26&v=398) |
[cyclotron radiation](https://xkcd.com/2916/#xt=11&yt=26&v=405) |
[Average Boston Road](https://xkcd.com/2916/#xt=5&yt=25&v=397) |
[pLarf](https://xkcd.com/2916/#xt=8&yt=26&v=402) |
[Triple Trouble](https://xkcd.com/2916/#xt=5&yt=26&v=399) |
[Squirrels all the way down](https://xkcd.com/2916/#xt=6&yt=26&v=406) |
[labyrinth](https://xkcd.com/2916/#xt=5&yt=26&v=400) |
[Big Fan of the bouncy castle](https://xkcd.com/2916/#xt=7&yt=26&v=401) |
[Brick Whartley's Turbine](https://xkcd.com/2916/#xt=4&yt=27&v=419) |
[AIRSORT](https://xkcd.com/2916/#xt=5&yt=27&v=413) |
[A Fan of Kinematics](https://xkcd.com/2916/#xt=4&yt=26&v=411) |
[Fan-Tastic?](https://xkcd.com/2916/#xt=7&yt=27&v=417) |
[bonk and forth](https://xkcd.com/2916/#xt=1&yt=29&v=412) |
[Color Correction](https://xkcd.com/2916/#xt=6&yt=27&v=418) |
[Citsinimreted Ylbaborp](https://xkcd.com/2916/#xt=5&yt=27&v=415) |
[lunar lander?](https://xkcd.com/2916/#xt=2&yt=27&v=409) |
[only fans](https://xkcd.com/2916/#xt=3&yt=27&v=410) |
[railgun ran out of budget](https://xkcd.com/2916/#xt=8&yt=27&v=414) |
[not sure this is feasible](https://xkcd.com/2916/#xt=7&yt=27&v=416) |
[Forge](https://xkcd.com/2916/#xt=0&yt=29&v=409) |
[the sword-split stochastic bonker](https://xkcd.com/2916/#xt=1&yt=31&v=424) |
[Squirrel's Industrial Revolution](https://xkcd.com/2916/#xt=1&yt=30&v=422) |
[Simple Y/G sorter](https://xkcd.com/2916/#xt=11&yt=28&v=431) |
[arthur](https://xkcd.com/2916/#xt=7&yt=28&v=429) |
[pinball... hexagon squirrel?!](https://xkcd.com/2916/#xt=6&yt=28&v=421) |
[Mass Sort](https://xkcd.com/2916/#xt=11&yt=27&v=427) |
[Normal distribution](https://xkcd.com/2916/#xt=7&yt=27&v=423) |
[well, the gears are a metaphor for the economy, you see, and the rabbit in the shotglass being rewarded is....](https://xkcd.com/2916/#xt=2&yt=27&v=428) |
[Deterministic dependency](https://xkcd.com/2916/#xt=4&yt=27&v=421) |
[Fan Spectrometer](https://xkcd.com/2916/#xt=10&yt=27&v=426) |
[SLOw down](https://xkcd.com/2916/#xt=6&yt=29&v=425) |
[Goldberg Catcher](https://xkcd.com/2916/#xt=8&yt=28&v=430) |
[Particle Accelerator 1.0](https://xkcd.com/2916/#xt=5&yt=28&v=435) |
[the contraption](https://xkcd.com/2916/#xt=7&yt=29&v=433) |
[its a groovy time for a movie time](https://xkcd.com/2916/#xt=11&yt=29&v=438) |
[Kitty Kitty](https://xkcd.com/2916/#xt=0&yt=31&v=441) |
[Harder Than it looks](https://xkcd.com/2916/#xt=2&yt=28&v=433) |
[How pinball should be played](https://xkcd.com/2916/#xt=0&yt=30&v=436) |
[Layered boinginess](https://xkcd.com/2916/#xt=3&yt=28&v=434) |
[Highway to the](https://xkcd.com/2916/#xt=7&yt=30&v=443) |
[Go KiTty!](https://xkcd.com/2916/#xt=10&yt=29&v=442) |
[saggy switchback](https://xkcd.com/2916/#xt=11&yt=30&v=439) |
[Neature](https://xkcd.com/2916/#xt=5&yt=29&v=440) |
[Blown away](https://xkcd.com/2916/#xt=4&yt=28&v=437) |
[Bogosort mk2](https://xkcd.com/2916/#xt=9&yt=29&v=452) |
[All hail king knitcap](https://xkcd.com/2916/#xt=4&yt=29&v=445) |
[Laundry](https://xkcd.com/2916/#xt=2&yt=30&v=450) |
[Flow](https://xkcd.com/2916/#xt=10&yt=28&v=448) |
[Simply connected](https://xkcd.com/2916/#xt=8&yt=29&v=451) |
[I Assure You The Loop is Strictly Necessary](https://xkcd.com/2916/#xt=3&yt=29&v=454) |
[bogosort](https://xkcd.com/2916/#xt=7&yt=31&v=453) |
[The Bun Mechanism](https://xkcd.com/2916/#xt=10&yt=30&v=447) |
[Rotatory press](https://xkcd.com/2916/#xt=6&yt=30&v=446) |
[the creation of adam](https://xkcd.com/2916/#xt=3&yt=30&v=455) |
[you love bouncing balls don't you](https://xkcd.com/2916/#xt=2&yt=29&v=445) |
[it barely functions but at least we have a ballpit](https://xkcd.com/2916/#xt=9&yt=28&v=449) |
[Chris](https://xkcd.com/2916/#xt=1&yt=32&v=461) |
[parallel universes](https://xkcd.com/2916/#xt=0&yt=32&v=457) |
[Undoing](https://xkcd.com/2916/#xt=11&yt=31&v=459) |
[Cat Sort](https://xkcd.com/2916/#xt=4&yt=30&v=466) |
[in hammer we truss](https://xkcd.com/2916/#xt=2&yt=32&v=465) |
[split down the middle](https://xkcd.com/2916/#xt=3&yt=31&v=467) |
[Lorentz's Catio](https://xkcd.com/2916/#xt=4&yt=31&v=463) |
[Metabolic reprocessing](https://xkcd.com/2916/#xt=5&yt=31&v=464) |
[Electric Blender](https://xkcd.com/2916/#xt=5&yt=30&v=460) |
[siege on the seas](https://xkcd.com/2916/#xt=2&yt=31&v=462) |
[swat team](https://xkcd.com/2916/#xt=6&yt=31&v=457) |
[Sorter 2.0](https://xkcd.com/2916/#xt=9&yt=30&v=458) |
[Drink's on the house](https://xkcd.com/2916/#xt=8&yt=30&v=469) |
[null](https://xkcd.com/2916/#xt=10&yt=32&v=479) |
[Don't Settle For Simple](https://xkcd.com/2916/#xt=5&yt=32&v=474) |
[panning for green](https://xkcd.com/2916/#xt=0&yt=33&v=477) |
[YelloGreenPerfect](https://xkcd.com/2916/#xt=10&yt=31&v=473) |
[3d stuff gives me a headache](https://xkcd.com/2916/#xt=11&yt=32&v=471) |
[Klaus](https://xkcd.com/2916/#xt=9&yt=31&v=478) |
[sorter](https://xkcd.com/2916/#xt=6&yt=32&v=469) |
[Working the forge](https://xkcd.com/2916/#xt=6&yt=33&v=472) |
[teeter-totter love](https://xkcd.com/2916/#xt=3&yt=32&v=476) |
[Blue is the warmest colour](https://xkcd.com/2916/#xt=8&yt=31&v=470) |
[horrible](https://xkcd.com/2916/#xt=4&yt=32&v=475) |
[its all cats all the way down](https://xkcd.com/2916/#xt=8&yt=32&v=481) |
[40-swat bulb](https://xkcd.com/2916/#xt=3&yt=33&v=490) |
[*clacking noises*](https://xkcd.com/2916/#xt=7&yt=33&v=484) |
[anything to keep production going](https://xkcd.com/2916/#xt=7&yt=32&v=482) |
[new high score](https://xkcd.com/2916/#xt=3&yt=32&v=481) |
[relentlessly rectilinear](https://xkcd.com/2916/#xt=2&yt=33&v=491) |
[Up N Around launcher](https://xkcd.com/2916/#xt=8&yt=33&v=488) |
[the acclaimed Fort Swordforge](https://xkcd.com/2916/#xt=4&yt=33&v=489) |
[The confoundinator!](https://xkcd.com/2916/#xt=5&yt=33&v=485) |
[Many fan make light green work](https://xkcd.com/2916/#xt=9&yt=33&v=487) |
[platformer](https://xkcd.com/2916/#xt=9&yt=32&v=483) |
[Schrödinger's wonderland](https://xkcd.com/2916/#xt=11&yt=33&v=486) |
[error correction](https://xkcd.com/2916/#xt=1&yt=33&v=493) |
[hark! the wizard hath cast a spell of momentum cancellation!](https://xkcd.com/2916/#xt=1&yt=34&v=496) |
[Training the new guy](https://xkcd.com/2916/#xt=10&yt=33&v=494) |
[crossover episode](https://xkcd.com/2916/#xt=10&yt=34&v=502) |
[Spooky action at a distance](https://xkcd.com/2916/#xt=7&yt=34&v=499) |
[why? good question, i'm not sure either](https://xkcd.com/2916/#xt=1&yt=35&v=497) |
[chaff, flare](https://xkcd.com/2916/#xt=9&yt=34&v=501) |
[Safe in our pillow fort](https://xkcd.com/2916/#xt=6&yt=34&v=498) |
[Some of the Kinetic energy comes from bonks](https://xkcd.com/2916/#xt=8&yt=34&v=500) |
[Interesting... Umbrella](https://xkcd.com/2916/#xt=0&yt=34&v=493) |
[Elevator Jam](https://xkcd.com/2916/#xt=2&yt=34&v=503) |
[THE cat-inator](https://xkcd.com/2916/#xt=0&yt=35&v=495) |
[rabbit path](https://xkcd.com/2916/#xt=8&yt=35&v=508) |
[Trans rights 2](https://xkcd.com/2916/#xt=4&yt=34&v=505) |
[The Cat-raption](https://xkcd.com/2916/#xt=6&yt=36&v=510) |
[the most direct path](https://xkcd.com/2916/#xt=11&yt=34&v=505) |
[javascript version 2](https://xkcd.com/2916/#xt=2&yt=35&v=512) |
[Whose Idea was it to let the cats in here?](https://xkcd.com/2916/#xt=7&yt=35&v=514) |
[He's Bonkers](https://xkcd.com/2916/#xt=11&yt=30&v=516) |
[Cat Physics](https://xkcd.com/2916/#xt=0&yt=36&v=513) |
[Dispertion](https://xkcd.com/2916/#xt=11&yt=30&v=515) |
[Failing upwards ](https://xkcd.com/2916/#xt=8&yt=35&v=509) |
[Crazy 2](https://xkcd.com/2916/#xt=3&yt=34&v=507) |
[The sorting stick is never wrong twice](https://xkcd.com/2916/#xt=5&yt=34&v=506) |
[cannon vs. stochastic windtunnel](https://xkcd.com/2916/#xt=3&yt=35&v=520) |
[the kitty highway :3](https://xkcd.com/2916/#xt=5&yt=35&v=529) |
[Defiance Apparatus](https://xkcd.com/2916/#xt=7&yt=36&v=521) |
[buns versus squirrels](https://xkcd.com/2916/#xt=11&yt=35&v=518) |
[aqueducts](https://xkcd.com/2916/#xt=11&yt=36&v=523) |
[Redefining Down](https://xkcd.com/2916/#xt=8&yt=38&v=525) |
[Several things happening at once](https://xkcd.com/2916/#xt=10&yt=35&v=522) |
[Just hangin'](https://xkcd.com/2916/#xt=9&yt=36&v=527) |
[i DIDN'T HAVE TO DO ANYTHING](https://xkcd.com/2916/#xt=7&yt=37&v=528) |
[Do a flip](https://xkcd.com/2916/#xt=8&yt=37&v=519) |
[Dude! I told you to stop letting your cat on the table!](https://xkcd.com/2916/#xt=11&yt=36&v=524) |
[flickshot](https://xkcd.com/2916/#xt=9&yt=35&v=518) |
[Eowyn will handle it](https://xkcd.com/2916/#xt=6&yt=37&v=531) |
[store room](https://xkcd.com/2916/#xt=3&yt=36&v=534) |
[mass_Separation_maze](https://xkcd.com/2916/#xt=1&yt=37&v=541) |
[POpcorn](https://xkcd.com/2916/#xt=10&yt=36&v=532) |
[slurp](https://xkcd.com/2916/#xt=9&yt=37&v=535) |
[Woodframe](https://xkcd.com/2916/#xt=4&yt=36&v=539) |
[junction 9000](https://xkcd.com/2916/#xt=4&yt=35&v=536) |
[cat power](https://xkcd.com/2916/#xt=0&yt=37&v=531) |
[sword of truth](https://xkcd.com/2916/#xt=2&yt=36&v=537) |
[Speed up, slow down](https://xkcd.com/2916/#xt=6&yt=35&v=533) |
[Bounciness testing](https://xkcd.com/2916/#xt=1&yt=36&v=538) |
[100% Deterministic](https://xkcd.com/2916/#xt=5&yt=36&v=540) |
[treadmill of life](https://xkcd.com/2916/#xt=11&yt=37&v=552) |
[Just enough to keep the cat interested](https://xkcd.com/2916/#xt=11&yt=36&v=543) |
[How to make scrambled eggs; a memoir](https://xkcd.com/2916/#xt=7&yt=38&v=546) |
[Butterflies In the Stomache](https://xkcd.com/2916/#xt=3&yt=37&v=544) |
[Diamond Bonk](https://xkcd.com/2916/#xt=4&yt=37&v=545) |
[Pillow fight at the bar](https://xkcd.com/2916/#xt=8&yt=39&v=549) |
[Party flippers](https://xkcd.com/2916/#xt=5&yt=37&v=553) |
[unearned confidence :3](https://xkcd.com/2916/#xt=6&yt=38&v=548) |
[null](https://xkcd.com/2916/#xt=2&yt=37&v=543) |
[Zero Point Cat.exe_dropTables](https://xkcd.com/2916/#xt=10&yt=37&v=551) |
[we're out of vermouth!](https://xkcd.com/2916/#xt=9&yt=38&v=550) |
[#10438](https://xkcd.com/2916/#xt=7&yt=38&v=547) |
[The Machine](https://xkcd.com/2916/#xt=7&yt=39&v=559) |
[Kerplunkinator](https://xkcd.com/2916/#xt=1&yt=38&v=563) |
[WAD_SWAT](https://xkcd.com/2916/#xt=11&yt=38&v=557) |
[Easter MONDAY at IKEA](https://xkcd.com/2916/#xt=9&yt=39&v=558) |
[Eclipse observation station](https://xkcd.com/2916/#xt=4&yt=38&v=555) |
[Prism Pachinko](https://xkcd.com/2916/#xt=0&yt=38&v=562) |
[They call it dunamancy](https://xkcd.com/2916/#xt=3&yt=38&v=565) |
[!important](https://xkcd.com/2916/#xt=9&yt=40&v=560) |
[If I had more space, I would've made a smaller machine](https://xkcd.com/2916/#xt=10&yt=38&v=556) |
[recycler](https://xkcd.com/2916/#xt=9&yt=40&v=561) |
[tree house](https://xkcd.com/2916/#xt=2&yt=38&v=564) |
[### Multiball 2 ###](https://xkcd.com/2916/#xt=5&yt=38&v=555) |
[Airways](https://xkcd.com/2916/#xt=7&yt=40&v=574) |
[The rise of the green](https://xkcd.com/2916/#xt=2&yt=39&v=570) |
[Sharingan](https://xkcd.com/2916/#xt=3&yt=41&v=568) |
[Sudo Buy me Some Playpen Balls](https://xkcd.com/2916/#xt=4&yt=39&v=575) |
[Bonked my Elbow](https://xkcd.com/2916/#xt=5&yt=38&v=571) |
[Helicopter Assistance](https://xkcd.com/2916/#xt=1&yt=39&v=569) |
[Black Magic](https://xkcd.com/2916/#xt=11&yt=39&v=572) |
[Ol' Reliable](https://xkcd.com/2916/#xt=6&yt=39&v=577) |
[What do you mean, the tomatoes aren't even ripe? We didn't buy this tomato Sorter for nothing!](https://xkcd.com/2916/#xt=3&yt=40&v=567) |
[Set Sail towards Adventure!](https://xkcd.com/2916/#xt=3&yt=39&v=567) |
[fractional distillation](https://xkcd.com/2916/#xt=5&yt=39&v=576) |
[lax Lullaby](https://xkcd.com/2916/#xt=10&yt=39&v=573) |
[Error-checking redundancy](https://xkcd.com/2916/#xt=10&yt=40&v=579) |
[not fast enough](https://xkcd.com/2916/#xt=0&yt=39&v=582) |
[Bring forth the Holy Handgrenade!](https://xkcd.com/2916/#xt=0&yt=40&v=587) |
[ramp](https://xkcd.com/2916/#xt=6&yt=40&v=584) |
[Springboard](https://xkcd.com/2916/#xt=1&yt=41&v=589) |
[catwalks](https://xkcd.com/2916/#xt=5&yt=40&v=585) |
[Worst. Sorter. ever.](https://xkcd.com/2916/#xt=8&yt=40&v=579) |
[Grandpa's Wooden Coaster](https://xkcd.com/2916/#xt=4&yt=40&v=588) |
[its like a laser except it isn't](https://xkcd.com/2916/#xt=2&yt=40&v=586) |
[wILL THIS REALLY SORT, HONEY?](https://xkcd.com/2916/#xt=11&yt=40&v=581) |
[swish!](https://xkcd.com/2916/#xt=1&yt=40&v=583) |
[All you need are cats](https://xkcd.com/2916/#xt=11&yt=40&v=580) |
[Blue Shall Not Pass](https://xkcd.com/2916/#xt=4&yt=41&v=591) |
[Cyclotron](https://xkcd.com/2916/#xt=2&yt=41&v=593) |
[Agents of chaos](https://xkcd.com/2916/#xt=7&yt=41&v=595) |
[Classify](https://xkcd.com/2916/#xt=11&yt=41&v=599) |
[*might* be food safe](https://xkcd.com/2916/#xt=8&yt=41&v=596) |
[Basic Ball Bounce Brew](https://xkcd.com/2916/#xt=10&yt=41&v=598) |
[trust but verify](https://xkcd.com/2916/#xt=0&yt=41&v=591) |
[Pepper Grinder](https://xkcd.com/2916/#xt=1&yt=42&v=601) |
[Quality assurance](https://xkcd.com/2916/#xt=6&yt=41&v=594) |
[cat pinball](https://xkcd.com/2916/#xt=0&yt=42&v=600) |
[Cats & Cannons](https://xkcd.com/2916/#xt=9&yt=41&v=597) |
[Everyone does their part](https://xkcd.com/2916/#xt=5&yt=41&v=592) |
[technically bubblesort](https://xkcd.com/2916/#xt=6&yt=42&v=606) |
[Chaos in a box](https://xkcd.com/2916/#xt=7&yt=42&v=610) |
[faultrap](https://xkcd.com/2916/#xt=2&yt=42&v=603) |
[Try{Hover();Rebound};Catch{Ball};](https://xkcd.com/2916/#xt=9&yt=42&v=611) |
[The Fan physics are nondeterministic](https://xkcd.com/2916/#xt=11&yt=43&v=612) |
[ran out of blocks](https://xkcd.com/2916/#xt=4&yt=42&v=604) |
[Roundabout and starightforward](https://xkcd.com/2916/#xt=8&yt=42&v=609) |
[Catch the lemons](https://xkcd.com/2916/#xt=11&yt=42&v=607) |
[loops](https://xkcd.com/2916/#xt=5&yt=42&v=605) |
[scaffolding](https://xkcd.com/2916/#xt=3&yt=42&v=603) |
[Black hole plinko](https://xkcd.com/2916/#xt=10&yt=42&v=608) |
[knorks 1000](https://xkcd.com/2916/#xt=10&yt=43&v=613) |
[Strictly speaking, the loop-de-loop was probably unnecessary](https://xkcd.com/2916/#xt=3&yt=43&v=616) |
[The creation of Machine](https://xkcd.com/2916/#xt=11&yt=44&v=618) |
[The Optics Final](https://xkcd.com/2916/#xt=0&yt=45&v=625) |
[Filtration by Levitation](https://xkcd.com/2916/#xt=2&yt=44&v=622) |
[green superhighway](https://xkcd.com/2916/#xt=5&yt=43&v=615) |
[red green separator](https://xkcd.com/2916/#xt=0&yt=43&v=619) |
[pin ball](https://xkcd.com/2916/#xt=2&yt=43&v=617) |
[Give the cat a ball](https://xkcd.com/2916/#xt=9&yt=43&v=615) |
[highly unsafe](https://xkcd.com/2916/#xt=1&yt=43&v=623) |
[Feline kickball practice](https://xkcd.com/2916/#xt=0&yt=44&v=624) |
[Glorious](https://xkcd.com/2916/#xt=9&yt=44&v=621) |
[i swear it's iso 9001 compliant](https://xkcd.com/2916/#xt=10&yt=44&v=620) |
[Order vs chaos](https://xkcd.com/2916/#xt=7&yt=44&v=637) |
[Float backup filters](https://xkcd.com/2916/#xt=11&yt=45&v=635) |
[oh behave](https://xkcd.com/2916/#xt=4&yt=43&v=629) |
[p(hit) corr. 1/v](https://xkcd.com/2916/#xt=7&yt=43&v=628) |
[bun](https://xkcd.com/2916/#xt=0&yt=46&v=633) |
[wormhole](https://xkcd.com/2916/#xt=8&yt=44&v=636) |
[Supercolliding supercollider](https://xkcd.com/2916/#xt=1&yt=45&v=634) |
[yeah!! science!!!](https://xkcd.com/2916/#xt=8&yt=43&v=627) |
[pipe-works](https://xkcd.com/2916/#xt=5&yt=44&v=631) |
[completely fanless](https://xkcd.com/2916/#xt=1&yt=44&v=632) |
[octosep](https://xkcd.com/2916/#xt=4&yt=44&v=630) |
[fanomenal accuracy](https://xkcd.com/2916/#xt=6&yt=43&v=627) |
[A-Mazed](https://xkcd.com/2916/#xt=4&yt=45&v=640) |
[down the rabbit hole](https://xkcd.com/2916/#xt=5&yt=45&v=639) |
[Traffic jam](https://xkcd.com/2916/#xt=1&yt=46&v=647) |
[Cliff Edge](https://xkcd.com/2916/#xt=4&yt=46&v=645) |
[Adit ventilation](https://xkcd.com/2916/#xt=10&yt=45&v=649) |
[99% accurate sorting environment](https://xkcd.com/2916/#xt=2&yt=45&v=643) |
[cats and wabits](https://xkcd.com/2916/#xt=11&yt=46&v=648) |
[Just imitating someone else's maze](https://xkcd.com/2916/#xt=3&yt=44&v=641) |
[Sisyphus](https://xkcd.com/2916/#xt=3&yt=44&v=642) |
[i HAVE SEEN BETTER](https://xkcd.com/2916/#xt=9&yt=45&v=646) |
[Sortenflugen](https://xkcd.com/2916/#xt=3&yt=45&v=644) |
[oops! all pillows](https://xkcd.com/2916/#xt=6&yt=44&v=639) |
[Liquid Metal Playground](https://xkcd.com/2916/#xt=8&yt=46&v=659) |
[Why do the reds get to have all the fun?](https://xkcd.com/2916/#xt=6&yt=45&v=651) |
[Wh- what have you done to my house?](https://xkcd.com/2916/#xt=11&yt=47&v=661) |
[bouncesort](https://xkcd.com/2916/#xt=7&yt=46&v=660) |
[which way do we go?](https://xkcd.com/2916/#xt=8&yt=45&v=656) |
[rgb](https://xkcd.com/2916/#xt=9&yt=46&v=658) |
[I seriously doubt this pillow fort is up to code](https://xkcd.com/2916/#xt=0&yt=47&v=654) |
[Ball engine](https://xkcd.com/2916/#xt=7&yt=45&v=651) |
[A Game of swords](https://xkcd.com/2916/#xt=10&yt=46&v=657) |
[meowamid outside the bonker forge](https://xkcd.com/2916/#xt=5&yt=46&v=652) |
[Popcorn Machine](https://xkcd.com/2916/#xt=2&yt=46&v=655) |
[minimalism](https://xkcd.com/2916/#xt=3&yt=46&v=653) |
[With No due respect to Gravity](https://xkcd.com/2916/#xt=4&yt=48&v=673) |
[upside down](https://xkcd.com/2916/#xt=6&yt=47&v=664) |
[school skipping machine 2000](https://xkcd.com/2916/#xt=4&yt=47&v=665) |
[Under the Stairs](https://xkcd.com/2916/#xt=9&yt=47&v=663) |
[load bearing cat](https://xkcd.com/2916/#xt=3&yt=47&v=668) |
[Quantum Computer](https://xkcd.com/2916/#xt=0&yt=49&v=672) |
[doohickey'); DROP TABLE machines;--](https://xkcd.com/2916/#xt=2&yt=47&v=669) |
[trans entertainment machine aka "they're helping!"](https://xkcd.com/2916/#xt=5&yt=47&v=667) |
[import antigravity](https://xkcd.com/2916/#xt=0&yt=48&v=671) |
[Butterfly chaos circuit coaster](https://xkcd.com/2916/#xt=7&yt=47&v=663) |
[sorting errors get the squirrel pit](https://xkcd.com/2916/#xt=6&yt=46&v=666) |
[Earth, Fire, Air That was the Four... Wait ...](https://xkcd.com/2916/#xt=1&yt=47&v=670) |
[accelerator](https://xkcd.com/2916/#xt=7&yt=48&v=681) |
[swan](https://xkcd.com/2916/#xt=4&yt=49&v=685) |
[Autosorter](https://xkcd.com/2916/#xt=10&yt=48&v=682) |
[ziggity](https://xkcd.com/2916/#xt=8&yt=48&v=680) |
[I Don't think that's regulation fencing](https://xkcd.com/2916/#xt=11&yt=48&v=676) |
[not a normal distribution](https://xkcd.com/2916/#xt=11&yt=49&v=683) |
[Sysiphean Task (Or, The Green Ball Go Up)](https://xkcd.com/2916/#xt=2&yt=48&v=684) |
[The Trial of Wind](https://xkcd.com/2916/#xt=10&yt=47&v=675) |
[Please do not the cat](https://xkcd.com/2916/#xt=8&yt=47&v=675) |
[Small hadron collider](https://xkcd.com/2916/#xt=9&yt=48&v=677) |
[Windy Boards](https://xkcd.com/2916/#xt=5&yt=48&v=678) |
[Hop Skip and a Jump](https://xkcd.com/2916/#xt=6&yt=48&v=679) |
[Wild wheels](https://xkcd.com/2916/#xt=1&yt=49&v=692) |
[tuned bricks](https://xkcd.com/2916/#xt=4&yt=47&v=690) |
[It starts so calmly](https://xkcd.com/2916/#xt=3&yt=48&v=688) |
[Bonks](https://xkcd.com/2916/#xt=0&yt=50&v=689) |
[this is fine!](https://xkcd.com/2916/#xt=7&yt=49&v=697) |
[Black Hole Parachute](https://xkcd.com/2916/#xt=9&yt=49&v=695) |
[Mass Attraction](https://xkcd.com/2916/#xt=2&yt=49&v=691) |
[guided whoosh ](https://xkcd.com/2916/#xt=5&yt=49&v=696) |
[would Maxwell be proud?](https://xkcd.com/2916/#xt=1&yt=48&v=687) |
[Zooming ball](https://xkcd.com/2916/#xt=10&yt=49&v=694) |
[nekomimimode](https://xkcd.com/2916/#xt=3&yt=49&v=687) |
[Squirrel cage centrifuge](https://xkcd.com/2916/#xt=8&yt=49&v=693) |
[chaos II](https://xkcd.com/2916/#xt=9&yt=50&v=701) |
[It's Getting Silly now](https://xkcd.com/2916/#xt=6&yt=49&v=699) |
[The Hard Way](https://xkcd.com/2916/#xt=4&yt=50&v=707) |
[3-way sorter](https://xkcd.com/2916/#xt=3&yt=50&v=704) |
[ballistics are my passion](https://xkcd.com/2916/#xt=6&yt=50&v=708) |
[yeetatron 5.000.000](https://xkcd.com/2916/#xt=5&yt=50&v=706) |
[the bun cannon](https://xkcd.com/2916/#xt=7&yt=50&v=702) |
[CERn](https://xkcd.com/2916/#xt=11&yt=51&v=700) |
[get in the bun pit](https://xkcd.com/2916/#xt=1&yt=50&v=703) |
[nearly always works](https://xkcd.com/2916/#xt=8&yt=50&v=709) |
[Particle Accelerator](https://xkcd.com/2916/#xt=11&yt=50&v=699) |
[Spin to win](https://xkcd.com/2916/#xt=2&yt=50&v=705) |
[goodsort](https://xkcd.com/2916/#xt=5&yt=51&v=715) |
[wood'n'wind](https://xkcd.com/2916/#xt=8&yt=51&v=720) |
[Don't forget your party helmet](https://xkcd.com/2916/#xt=7&yt=51&v=711) |
[HOW STOP LIGHTS WORK](https://xkcd.com/2916/#xt=4&yt=51&v=716) |
[Bubble SOrt](https://xkcd.com/2916/#xt=2&yt=51&v=718) |
[MIx and unmixer](https://xkcd.com/2916/#xt=6&yt=51&v=714) |
[null](https://xkcd.com/2916/#xt=9&yt=51&v=713) |
[Catto Assisted Sorting](https://xkcd.com/2916/#xt=3&yt=51&v=717) |
[TIL why box fans exist](https://xkcd.com/2916/#xt=1&yt=51&v=721) |
[The Snail](https://xkcd.com/2916/#xt=10&yt=51&v=712) |
[Cat Bat pinball](https://xkcd.com/2916/#xt=0&yt=51&v=719) |
[hope the cat doesn't get bored](https://xkcd.com/2916/#xt=10&yt=50&v=711) |
[Sierpinski](https://xkcd.com/2916/#xt=5&yt=53&v=724) |
[The most crucial part of the machine](https://xkcd.com/2916/#xt=11&yt=52&v=732) |
[Green shaker](https://xkcd.com/2916/#xt=4&yt=52&v=728) |
[crossing guard](https://xkcd.com/2916/#xt=5&yt=52&v=723) |
[Reverse Gravity](https://xkcd.com/2916/#xt=7&yt=52&v=731) |
[This makes more sense if they're helium ](https://xkcd.com/2916/#xt=1&yt=52&v=733) |
[Let's see how well this works on the big one](https://xkcd.com/2916/#xt=3&yt=52&v=727) |
[the cat has everything under control](https://xkcd.com/2916/#xt=0&yt=52&v=726) |
[Rainbow Pachinko](https://xkcd.com/2916/#xt=9&yt=52&v=730) |
[swatsort](https://xkcd.com/2916/#xt=8&yt=52&v=729) |
[Journey to Squirrel Temple](https://xkcd.com/2916/#xt=10&yt=52&v=723) |
[I feel like the loop the loop  was unnecessary but made it more interesting](https://xkcd.com/2916/#xt=2&yt=52&v=725) |
[The gears that power the tubes](https://xkcd.com/2916/#xt=6&yt=53&v=740) |
[qwerty](https://xkcd.com/2916/#xt=3&yt=53&v=738) |
[The King's Wisdom](https://xkcd.com/2916/#xt=1&yt=53&v=736) |
[The Nine Lives of Erwin Schrödinger](https://xkcd.com/2916/#xt=10&yt=53&v=744) |
[krazy copter hats!](https://xkcd.com/2916/#xt=9&yt=53&v=743) |
[Squirrels are boring, trampolines are better](https://xkcd.com/2916/#xt=4&yt=53&v=739) |
[dangerous intersection](https://xkcd.com/2916/#xt=11&yt=53&v=745) |
[super sorter 6000](https://xkcd.com/2916/#xt=6&yt=52&v=735) |
[Balanced](https://xkcd.com/2916/#xt=2&yt=53&v=737) |
[sorting station](https://xkcd.com/2916/#xt=7&yt=53&v=741) |
[under construction](https://xkcd.com/2916/#xt=8&yt=53&v=742) |
[Procrastination machine](https://xkcd.com/2916/#xt=0&yt=53&v=735) |
[Vacuum-Sealed](https://xkcd.com/2916/#xt=0&yt=54&v=752) |
[slidesnfans](https://xkcd.com/2916/#xt=5&yt=54&v=754) |
[The not so great filter](https://xkcd.com/2916/#xt=4&yt=54&v=755) |
[Red sky at night, sailors delight](https://xkcd.com/2916/#xt=10&yt=54&v=758) |
[Ich bin ein Berliner](https://xkcd.com/2916/#xt=11&yt=54&v=748) |
[redacted antigravity](https://xkcd.com/2916/#xt=6&yt=54&v=753) |
[throw practice: 🐈=20pt, 🐇=5pt, 🐿️=2pt, 🧢=0pt](https://xkcd.com/2916/#xt=1&yt=54&v=750) |
[a center point that isnt centered](https://xkcd.com/2916/#xt=9&yt=54&v=757) |
[Bonk sort](https://xkcd.com/2916/#xt=7&yt=54&v=756) |
[Stick :3](https://xkcd.com/2916/#xt=1&yt=54&v=749) |
[Fancy_CAt](https://xkcd.com/2916/#xt=3&yt=54&v=747) |
[H. Gravity Wells](https://xkcd.com/2916/#xt=2&yt=54&v=747) |
[name](https://xkcd.com/2916/#xt=2&yt=55&v=769) |
[....I trust you.](https://xkcd.com/2916/#xt=4&yt=56&v=765) |
[Twin Turbine](https://xkcd.com/2916/#xt=0&yt=56&v=770) |
[Hold it Right there](https://xkcd.com/2916/#xt=1&yt=55&v=768) |
[thank god there are enough blues for the cat](https://xkcd.com/2916/#xt=6&yt=55&v=760) |
[s is for... safety?](https://xkcd.com/2916/#xt=4&yt=55&v=766) |
[FLoat Tank](https://xkcd.com/2916/#xt=0&yt=55&v=761) |
[Chim Chim Cher-ee](https://xkcd.com/2916/#xt=4&yt=55&v=767) |
[The Hammer In The Stone](https://xkcd.com/2916/#xt=3&yt=55&v=763) |
[You know i could have left it](https://xkcd.com/2916/#xt=3&yt=56&v=764) |
[accursed criss cross](https://xkcd.com/2916/#xt=5&yt=55&v=762) |
[pipes](https://xkcd.com/2916/#xt=8&yt=54&v=760) |
[At last!!](https://xkcd.com/2916/#xt=8&yt=55&v=782) |
[Piper](https://xkcd.com/2916/#xt=9&yt=55&v=776) |
[hail ho hole](https://xkcd.com/2916/#xt=2&yt=56&v=778) |
[how many fans does a pillow fort need](https://xkcd.com/2916/#xt=1&yt=55&v=772) |
[y = -cos(2x)](https://xkcd.com/2916/#xt=5&yt=56&v=779) |
[Employee of the Month](https://xkcd.com/2916/#xt=7&yt=55&v=781) |
[A royal throne for a king bun](https://xkcd.com/2916/#xt=6&yt=56&v=780) |
[DIY antigravity color sorter](https://xkcd.com/2916/#xt=1&yt=56&v=772) |
[Mind over Matter](https://xkcd.com/2916/#xt=10&yt=55&v=773) |
[the sword of judgement](https://xkcd.com/2916/#xt=9&yt=55&v=777) |
[The magic of yellow](https://xkcd.com/2916/#xt=11&yt=55&v=774) |
[risking it](https://xkcd.com/2916/#xt=9&yt=55&v=775) |
[No OSHA Violations Here](https://xkcd.com/2916/#xt=8&yt=56&v=784) |
[Flying kitten](https://xkcd.com/2916/#xt=7&yt=56&v=784) |
[Anvil Sorter](https://xkcd.com/2916/#xt=10&yt=56&v=786) |
[Word Harder not Smarter](https://xkcd.com/2916/#xt=8&yt=57&v=791) |
[Bounce under the bun](https://xkcd.com/2916/#xt=5&yt=57&v=794) |
[oxygen/nitrogen separator](https://xkcd.com/2916/#xt=6&yt=57&v=793) |
[closed source](https://xkcd.com/2916/#xt=10&yt=57&v=789) |
[Shoot and test](https://xkcd.com/2916/#xt=9&yt=56&v=785) |
[9](https://xkcd.com/2916/#xt=9&yt=57&v=790) |
[More bounces than needed](https://xkcd.com/2916/#xt=11&yt=57&v=788) |
[maximum speed](https://xkcd.com/2916/#xt=7&yt=57&v=792) |
[SOArSORT (WITH MAndatory CAT)](https://xkcd.com/2916/#xt=11&yt=56&v=787) |
[Evaporation Filter](https://xkcd.com/2916/#xt=10&yt=58&v=801) |
[Bonkey Kong](https://xkcd.com/2916/#xt=8&yt=58&v=803) |
[We have a black hole at home... the black hole at home:](https://xkcd.com/2916/#xt=9&yt=58&v=802) |
[Proud](https://xkcd.com/2916/#xt=4&yt=57&v=796) |
[Don’t rotate anything challenge](https://xkcd.com/2916/#xt=7&yt=58&v=804) |
[Error-correcting Sword sort](https://xkcd.com/2916/#xt=6&yt=58&v=805) |
[RGB AirBounce Sorter](https://xkcd.com/2916/#xt=3&yt=57&v=799) |
[sorting Madness](https://xkcd.com/2916/#xt=2&yt=57&v=798) |
[Walk the Plank](https://xkcd.com/2916/#xt=0&yt=57&v=796) |
[medium-speed shredder](https://xkcd.com/2916/#xt=5&yt=58&v=806) |
[AAAAAAAAAAAAAAAAAAAAAAAAAHHH](https://xkcd.com/2916/#xt=1&yt=57&v=797) |
[snow globe](https://xkcd.com/2916/#xt=11&yt=58&v=800) |
[Shooting Stars](https://xkcd.com/2916/#xt=6&yt=59&v=817) |
[scientific progress goes](https://xkcd.com/2916/#xt=8&yt=59&v=815) |
[Apple Pie Shower](https://xkcd.com/2916/#xt=2&yt=58&v=809) |
[*Almost* enough room](https://xkcd.com/2916/#xt=0&yt=58&v=811) |
[soft](https://xkcd.com/2916/#xt=1&yt=58&v=810) |
[color correction on the fly](https://xkcd.com/2916/#xt=5&yt=59&v=818) |
[keepin' it cool](https://xkcd.com/2916/#xt=3&yt=58&v=808) |
[it's-a me, wario!](https://xkcd.com/2916/#xt=7&yt=59&v=816) |
[In-flight crossing](https://xkcd.com/2916/#xt=4&yt=58&v=808) |
[And yet they called me mad when I filled the machine with BEES](https://xkcd.com/2916/#xt=10&yt=59&v=812) |
[6 fans and a cat](https://xkcd.com/2916/#xt=11&yt=59&v=813) |
[Don't even worry about it](https://xkcd.com/2916/#xt=9&yt=59&v=814) |
[BB Gun](https://xkcd.com/2916/#xt=3&yt=59&v=820) |
[Agitate and Evaporate](https://xkcd.com/2916/#xt=0&yt=59&v=823) |
[null](https://xkcd.com/2916/#xt=3&yt=60&v=830) |
[swordplay](https://xkcd.com/2916/#xt=4&yt=59&v=820) |
[⚔️⚔️⚔️🗡️🗡️🗡️⚔️⚔️⚔️](https://xkcd.com/2916/#xt=2&yt=59&v=821) |
[immediate relief when and where you need it most](https://xkcd.com/2916/#xt=2&yt=60&v=828) |
[Coasters](https://xkcd.com/2916/#xt=0&yt=60&v=824) |
[Plan for Failure](https://xkcd.com/2916/#xt=1&yt=60&v=827) |
[Polynomial Time](https://xkcd.com/2916/#xt=6&yt=60&v=829) |
[Polyhammory](https://xkcd.com/2916/#xt=1&yt=59&v=822) |
[Better Cat than Sorry](https://xkcd.com/2916/#xt=7&yt=60&v=826) |
[chillout by the pool](https://xkcd.com/2916/#xt=8&yt=60&v=825) |
[attempting to pierce the bun field](https://xkcd.com/2916/#xt=11&yt=60&v=834) |
[Turbine](https://xkcd.com/2916/#xt=1&yt=61&v=841) |
[SS Probably Deterministic](https://xkcd.com/2916/#xt=11&yt=61&v=837) |
[sortery](https://xkcd.com/2916/#xt=2&yt=61&v=840) |
[party](https://xkcd.com/2916/#xt=4&yt=61&v=842) |
[Hide the nuts](https://xkcd.com/2916/#xt=4&yt=60&v=832) |
[Popcorn maker](https://xkcd.com/2916/#xt=0&yt=61&v=838) |
[waterwheel](https://xkcd.com/2916/#xt=3&yt=61&v=843) |
[under construction](https://xkcd.com/2916/#xt=10&yt=60&v=835) |
[<Ø> | intersection](https://xkcd.com/2916/#xt=5&yt=61&v=839) |
[cat-egorization](https://xkcd.com/2916/#xt=9&yt=60&v=836) |
[separation of concerns](https://xkcd.com/2916/#xt=5&yt=60&v=833) |
[Ball Pens Are FUN](https://xkcd.com/2916/#xt=11&yt=62&v=852) |
[4-panel comic: sea-saw bun](https://xkcd.com/2916/#xt=9&yt=62&v=849) |
[fascinating invention](https://xkcd.com/2916/#xt=10&yt=61&v=848) |
[Super simple sorter ](https://xkcd.com/2916/#xt=8&yt=62&v=850) |
[Multiphasic air filter](https://xkcd.com/2916/#xt=10&yt=62&v=851) |
[Airflow](https://xkcd.com/2916/#xt=8&yt=61&v=846) |
[tunnels](https://xkcd.com/2916/#xt=6&yt=61&v=845) |
[null](https://xkcd.com/2916/#xt=9&yt=61&v=847) |
[Four nines of uptime](https://xkcd.com/2916/#xt=3&yt=62&v=853) |
[velocity sorter](https://xkcd.com/2916/#xt=7&yt=61&v=845) |
[i'd like to buy a vowel](https://xkcd.com/2916/#xt=4&yt=62&v=855) |
[Dueling Pneumatics](https://xkcd.com/2916/#xt=5&yt=62&v=854) |
[culling the greens from the chaff](https://xkcd.com/2916/#xt=11&yt=64&v=861) |
[Flush](https://xkcd.com/2916/#xt=9&yt=63&v=864) |
[Turbo](https://xkcd.com/2916/#xt=2&yt=63&v=867) |
[Looks so](https://xkcd.com/2916/#xt=2&yt=62&v=860) |
[circling the drain](https://xkcd.com/2916/#xt=7&yt=62&v=857) |
[Speedrun](https://xkcd.com/2916/#xt=11&yt=63&v=862) |
[Blues ](https://xkcd.com/2916/#xt=6&yt=62&v=857) |
[stripy pillows](https://xkcd.com/2916/#xt=0&yt=63&v=866) |
[Why Mess with Perfection?](https://xkcd.com/2916/#xt=1&yt=62&v=858) |
[Cat Tree](https://xkcd.com/2916/#xt=0&yt=62&v=859) |
[will it work? see bottom left](https://xkcd.com/2916/#xt=8&yt=63&v=865) |
[this confounding device](https://xkcd.com/2916/#xt=10&yt=63&v=863) |
[Uncontrolled Launch?](https://xkcd.com/2916/#xt=5&yt=63&v=870) |
[tempo control](https://xkcd.com/2916/#xt=4&yt=63&v=869) |
[Trust me, I know what I'm doing!](https://xkcd.com/2916/#xt=3&yt=63&v=869) |
[Oscillation circulation](https://xkcd.com/2916/#xt=10&yt=64&v=873) |
[Blue is lighter than green](https://xkcd.com/2916/#xt=6&yt=63&v=871) |
[Hijinks Ensue](https://xkcd.com/2916/#xt=6&yt=64&v=876) |
[Just Blue, No Garbage, Maybe](https://xkcd.com/2916/#xt=4&yt=64&v=879) |
[Somewhat sorted](https://xkcd.com/2916/#xt=8&yt=64&v=877) |
[Division of Labor](https://xkcd.com/2916/#xt=7&yt=63&v=872) |
[Trust but Verify](https://xkcd.com/2916/#xt=5&yt=64&v=878) |
[Dual-Bladed](https://xkcd.com/2916/#xt=9&yt=64&v=874) |
[get outta here](https://xkcd.com/2916/#xt=7&yt=64&v=875) |
[synchronicity](https://xkcd.com/2916/#xt=1&yt=64&v=885) |
[Powered by fans](https://xkcd.com/2916/#xt=7&yt=65&v=891) |
[pillow power](https://xkcd.com/2916/#xt=0&yt=64&v=884) |
[the fan guy](https://xkcd.com/2916/#xt=1&yt=63&v=882) |
[overcomplication is fun!](https://xkcd.com/2916/#xt=3&yt=64&v=881) |
[meow](https://xkcd.com/2916/#xt=2&yt=64&v=883) |
[so fresh and so clean](https://xkcd.com/2916/#xt=6&yt=65&v=890) |
[Final boss](https://xkcd.com/2916/#xt=3&yt=65&v=889) |
[Pinball whiskers](https://xkcd.com/2916/#xt=0&yt=65&v=887) |
[Half Normal](https://xkcd.com/2916/#xt=5&yt=65&v=892) |
[Folsom prism blues](https://xkcd.com/2916/#xt=2&yt=64&v=886) |
[null](https://xkcd.com/2916/#xt=0&yt=65&v=888) |
[Precarious](https://xkcd.com/2916/#xt=8&yt=65&v=895) |
[Fun with the wind](https://xkcd.com/2916/#xt=3&yt=66&v=903) |
[taking the scenic route](https://xkcd.com/2916/#xt=11&yt=65&v=902) |
[Measure once, Sort Twice](https://xkcd.com/2916/#xt=8&yt=68&v=898) |
[LBC](https://xkcd.com/2916/#xt=9&yt=65&v=896) |
[The Turtle Moves](https://xkcd.com/2916/#xt=4&yt=65&v=899) |
[If I were a sculptor, but then again no.](https://xkcd.com/2916/#xt=8&yt=66&v=894) |
[wind tunnels](https://xkcd.com/2916/#xt=2&yt=66&v=904) |
[radioactive decay of yellow element](https://xkcd.com/2916/#xt=2&yt=65&v=894) |
[XKCD GLados Fight (Portal)](https://xkcd.com/2916/#xt=10&yt=65&v=901) |
[don't worry; they're trained professionals](https://xkcd.com/2916/#xt=1&yt=65&v=900) |
[late to work](https://xkcd.com/2916/#xt=8&yt=67&v=897) |
[Air Travel](https://xkcd.com/2916/#xt=4&yt=66&v=908) |
[upside down](https://xkcd.com/2916/#xt=1&yt=67&v=915) |
[Newton's Theory Of Anti-Gravity](https://xkcd.com/2916/#xt=5&yt=66&v=907) |
[water filter](https://xkcd.com/2916/#xt=7&yt=66&v=910) |
[Red green Error  checking](https://xkcd.com/2916/#xt=9&yt=66&v=911) |
[[design Approved by the Squirrel Council. See subsection 45B red-green-ball-sort-design 2BA-LL]](https://xkcd.com/2916/#xt=10&yt=66&v=912) |
[can you please lend a hand?](https://xkcd.com/2916/#xt=0&yt=66&v=906) |
[totally worth 30 min of my time](https://xkcd.com/2916/#xt=6&yt=66&v=909) |
[the easiest way](https://xkcd.com/2916/#xt=0&yt=67&v=914) |
[champagne supernova](https://xkcd.com/2916/#xt=11&yt=66&v=913) |
[needless](https://xkcd.com/2916/#xt=1&yt=66&v=906) |
[sift four cups flour](https://xkcd.com/2916/#xt=2&yt=67&v=916) |
[Deoxyribonucleic acid](https://xkcd.com/2916/#xt=10&yt=68&v=926) |
[Just like clockwork](https://xkcd.com/2916/#xt=10&yt=67&v=919) |
[more fans](https://xkcd.com/2916/#xt=4&yt=67&v=922) |
[Maze runner](https://xkcd.com/2916/#xt=9&yt=69&v=924) |
[Potential Energy for my Potential Friends, Kinetic Energy for my Real Friends ](https://xkcd.com/2916/#xt=7&yt=67&v=918) |
[merge and split](https://xkcd.com/2916/#xt=3&yt=67&v=927) |
[just hoping someone didn't sort the input](https://xkcd.com/2916/#xt=7&yt=68&v=921) |
[overcaffeinated](https://xkcd.com/2916/#xt=11&yt=67&v=925) |
[swords of teleportation: behind the scenes](https://xkcd.com/2916/#xt=9&yt=70&v=923) |
[A cat's innate, unstoppable desire to push things off of tables](https://xkcd.com/2916/#xt=9&yt=67&v=918) |
[Will the squirrel ever catch a nut?](https://xkcd.com/2916/#xt=5&yt=67&v=928) |
[They MiGht Be Sorted](https://xkcd.com/2916/#xt=9&yt=68&v=920) |
[Telekinesy is real](https://xkcd.com/2916/#xt=1&yt=68&v=932) |
[Drop that anvil](https://xkcd.com/2916/#xt=11&yt=68&v=937) |
[This should be able to re-route some wrong-colored inputs](https://xkcd.com/2916/#xt=6&yt=67&v=930) |
[Loop De Loop of Henle](https://xkcd.com/2916/#xt=5&yt=68&v=936) |
[the machine](https://xkcd.com/2916/#xt=4&yt=69&v=940) |
[hostile takeover](https://xkcd.com/2916/#xt=4&yt=68&v=930) |
[mass spectrometry and bun wizardry](https://xkcd.com/2916/#xt=6&yt=69&v=939) |
[an absolutely necessarily complicated machine](https://xkcd.com/2916/#xt=6&yt=68&v=933) |
[double crossing streams](https://xkcd.com/2916/#xt=7&yt=69&v=938) |
[RBY Output; All Color FIlter?](https://xkcd.com/2916/#xt=3&yt=68&v=935) |
[False Positive filter](https://xkcd.com/2916/#xt=0&yt=68&v=931) |
[Dual Wield ⚔️ for colour Correction 🔨](https://xkcd.com/2916/#xt=2&yt=68&v=934) |
[Thirsty](https://xkcd.com/2916/#xt=2&yt=69&v=943) |
[the wheel's back](https://xkcd.com/2916/#xt=1&yt=69&v=944) |
[planet](https://xkcd.com/2916/#xt=0&yt=69&v=945) |
[Agile Development](https://xkcd.com/2916/#xt=8&yt=70&v=951) |
[Ball-Effect Transistor](https://xkcd.com/2916/#xt=10&yt=69&v=948) |
[Filter 8](https://xkcd.com/2916/#xt=8&yt=69&v=947) |
[Double helix](https://xkcd.com/2916/#xt=0&yt=70&v=946) |
[The EdmuNd Fitzgerald](https://xkcd.com/2916/#xt=3&yt=69&v=942) |
[Catleidoscope](https://xkcd.com/2916/#xt=4&yt=70&v=952) |
[Fishmolish](https://xkcd.com/2916/#xt=11&yt=69&v=949) |
[Patterns, 100% Ball Transfer](https://xkcd.com/2916/#xt=5&yt=69&v=942) |
[swirl](https://xkcd.com/2916/#xt=1&yt=70&v=950) |
[deus ex machina](https://xkcd.com/2916/#xt=7&yt=70&v=957) |
[Coding for the enterprise](https://xkcd.com/2916/#xt=11&yt=70&v=959) |
[TILT](https://xkcd.com/2916/#xt=2&yt=70&v=954) |
[Open-minded sauron](https://xkcd.com/2916/#xt=3&yt=70&v=954) |
[at its heart, the machine requires a gentle touch](https://xkcd.com/2916/#xt=6&yt=70&v=956) |
[uncombineinator](https://xkcd.com/2916/#xt=5&yt=70&v=955) |
[fan-sort](https://xkcd.com/2916/#xt=10&yt=70&v=958) |
