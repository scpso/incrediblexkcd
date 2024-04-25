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

[nobonk](https://xkcd.com/2916/#xt=3&yt=21&v=334) |
[deus ex machina](https://xkcd.com/2916/#xt=7&yt=70&v=957) |
[green machine](https://xkcd.com/2916/#xt=9&yt=20&v=323) |
[parallel universes](https://xkcd.com/2916/#xt=0&yt=32&v=456) |
[Fun with the wind](https://xkcd.com/2916/#xt=3&yt=66&v=903) |
[ziggity](https://xkcd.com/2916/#xt=8&yt=48&v=680) |
[sierpinski](https://xkcd.com/2916/#xt=4&yt=2&v=29) |
[squirrel defender](https://xkcd.com/2916/#xt=11&yt=4&v=66) |
[What's Kinetic Energy Got To do (Got To Do) With It](https://xkcd.com/2916/#xt=3&yt=23&v=350) |
[In-flight crossing](https://xkcd.com/2916/#xt=4&yt=58&v=807) |
[Trust but Verify](https://xkcd.com/2916/#xt=5&yt=64&v=878) |
[Diamond Bonk](https://xkcd.com/2916/#xt=4&yt=37&v=545) |
[Cat Physics](https://xkcd.com/2916/#xt=0&yt=36&v=513) |
[They'll get there eventually](https://xkcd.com/2916/#xt=5&yt=8&v=160) |
[not a normal distribution](https://xkcd.com/2916/#xt=11&yt=49&v=683) |
[Bonked my Elbow](https://xkcd.com/2916/#xt=5&yt=38&v=571) |
[too care to drunk](https://xkcd.com/2916/#xt=1&yt=22&v=305) |
[opposite direction](https://xkcd.com/2916/#xt=6&yt=12&v=175) |
[The Hard Way](https://xkcd.com/2916/#xt=4&yt=50&v=707) |
[Clockwork ClusterF***](https://xkcd.com/2916/#xt=5&yt=11&v=173) |
[THEY WATCH](https://xkcd.com/2916/#xt=7&yt=10&v=140) |
[Blown away](https://xkcd.com/2916/#xt=4&yt=28&v=437) |
[Gaussian funnel](https://xkcd.com/2916/#xt=7&yt=25&v=388) |
[Four nines of uptime](https://xkcd.com/2916/#xt=3&yt=62&v=853) |
[Just hangin'](https://xkcd.com/2916/#xt=9&yt=36&v=527) |
[split down the middle](https://xkcd.com/2916/#xt=3&yt=31&v=467) |
[water filter](https://xkcd.com/2916/#xt=7&yt=66&v=910) |
[get in the bun pit](https://xkcd.com/2916/#xt=1&yt=50&v=703) |
[Angry Claw Beast](https://xkcd.com/2916/#xt=1&yt=21&v=290) |
[Good-enough pipeworks](https://xkcd.com/2916/#xt=3&yt=12&v=186) |
[iffy clouds](https://xkcd.com/2916/#xt=3&yt=10&v=204) |
[Red-Green](https://xkcd.com/2916/#xt=1&yt=1&v=18) |
[Flappy_Rake](https://xkcd.com/2916/#xt=7&yt=9&v=139) |
[knorks 1000](https://xkcd.com/2916/#xt=10&yt=43&v=613) |
[Bonkey Kong](https://xkcd.com/2916/#xt=8&yt=58&v=803) |
[Catch the lemons](https://xkcd.com/2916/#xt=11&yt=42&v=607) |
[sorry](https://xkcd.com/2916/#xt=3&yt=8&v=136) |
[the machine](https://xkcd.com/2916/#xt=4&yt=69&v=940) |
[Ughhhh](https://xkcd.com/2916/#xt=7&yt=14&v=198) |
[pin ball](https://xkcd.com/2916/#xt=2&yt=43&v=617) |
[I like big bonks and I cannot lie](https://xkcd.com/2916/#xt=4&yt=5&v=58) |
[Sorter 2.0](https://xkcd.com/2916/#xt=9&yt=30&v=458) |
[raaaaaamps](https://xkcd.com/2916/#xt=11&yt=20&v=326) |
[swords of teleportation](https://xkcd.com/2916/#xt=11&yt=24&v=374) |
[Go KiTty!](https://xkcd.com/2916/#xt=10&yt=29&v=442) |
[Elevator Jam](https://xkcd.com/2916/#xt=2&yt=34&v=503) |
[FLoat Tank](https://xkcd.com/2916/#xt=0&yt=55&v=761) |
[supporters](https://xkcd.com/2916/#xt=9&yt=10&v=131) |
[Large Hexagon Collider](https://xkcd.com/2916/#xt=6&yt=9&v=146) |
[Party flippers](https://xkcd.com/2916/#xt=5&yt=37&v=553) |
[Adit ventilation](https://xkcd.com/2916/#xt=10&yt=45&v=649) |
[a walk in the park](https://xkcd.com/2916/#xt=5&yt=3&v=56) |
[Pride Plinko](https://xkcd.com/2916/#xt=9&yt=0&v=14) |
[Laundry](https://xkcd.com/2916/#xt=2&yt=30&v=450) |
[Orbital Mechanic 3: the cat-aclysm](https://xkcd.com/2916/#xt=0&yt=25&v=336) |
[it barely functions but at least we have a ballpit](https://xkcd.com/2916/#xt=9&yt=28&v=449) |
[I Can't Believe It's Not Bonk](https://xkcd.com/2916/#xt=6&yt=23&v=370) |
[The Bun Mechanism](https://xkcd.com/2916/#xt=10&yt=30&v=447) |
[will it work? see bottom left](https://xkcd.com/2916/#xt=8&yt=63&v=865) |
[how i learned to stop worrying and love the particle oven](https://xkcd.com/2916/#xt=7&yt=16&v=232) |
[The Fan physics are nondeterministic](https://xkcd.com/2916/#xt=11&yt=43&v=612) |
[No OSHA Violations Here](https://xkcd.com/2916/#xt=8&yt=56&v=784) |
[Squirrel's Maze](https://xkcd.com/2916/#xt=6&yt=10&v=143) |
[They gave me a line what](https://xkcd.com/2916/#xt=0&yt=22&v=309) |
[The EdmuNd Fitzgerald](https://xkcd.com/2916/#xt=3&yt=69&v=942) |
[Knife's Edge](https://xkcd.com/2916/#xt=8&yt=25&v=377) |
[immediate relief when and where you need it most](https://xkcd.com/2916/#xt=2&yt=60&v=828) |
[Ol' Reliable](https://xkcd.com/2916/#xt=6&yt=39&v=577) |
[swat team](https://xkcd.com/2916/#xt=6&yt=31&v=457) |
[more fans](https://xkcd.com/2916/#xt=4&yt=67&v=922) |
[Bouncy House](https://xkcd.com/2916/#xt=0&yt=10&v=75) |
[Jamslunt interfoggle](https://xkcd.com/2916/#xt=2&yt=2&v=30) |
[Many fan make light green work](https://xkcd.com/2916/#xt=9&yt=33&v=487) |
[i DIDN'T HAVE TO DO ANYTHING](https://xkcd.com/2916/#xt=7&yt=37&v=528) |
[the contraption](https://xkcd.com/2916/#xt=7&yt=29&v=432) |
[How to make scrambled eggs; a memoir](https://xkcd.com/2916/#xt=7&yt=38&v=546) |
[Thread the needle](https://xkcd.com/2916/#xt=3&yt=16&v=265) |
[The Holar Express](https://xkcd.com/2916/#xt=6&yt=3&v=59) |
[the acclaimed Fort Swordforge](https://xkcd.com/2916/#xt=4&yt=33&v=489) |
[Just enough to keep the cat interested](https://xkcd.com/2916/#xt=11&yt=36&v=543) |
[Neature](https://xkcd.com/2916/#xt=5&yt=29&v=440) |
[Cyclotronics](https://xkcd.com/2916/#xt=3&yt=25&v=395) |
[launch](https://xkcd.com/2916/#xt=10&yt=12&v=219) |
[the baseball player](https://xkcd.com/2916/#xt=4&yt=10&v=170) |
[Vacuum-Sealed](https://xkcd.com/2916/#xt=0&yt=54&v=752) |
[Minefield](https://xkcd.com/2916/#xt=9&yt=7&v=114) |
[Never trust the squirrels.](https://xkcd.com/2916/#xt=0&yt=19&v=255) |
[Lines and launches](https://xkcd.com/2916/#xt=3&yt=19&v=319) |
[Error-checking redundancy](https://xkcd.com/2916/#xt=10&yt=40&v=579) |
[Cliff Edge](https://xkcd.com/2916/#xt=4&yt=46&v=645) |
[Hide the nuts](https://xkcd.com/2916/#xt=4&yt=60&v=832) |
[SUPER PINBALLINATOR 9000](https://xkcd.com/2916/#xt=2&yt=16&v=157) |
[Agents of chaos](https://xkcd.com/2916/#xt=7&yt=41&v=595) |
[My Apologies To the chef](https://xkcd.com/2916/#xt=2&yt=26&v=391) |
[super sorter 6000](https://xkcd.com/2916/#xt=6&yt=52&v=734) |
[technically bubblesort](https://xkcd.com/2916/#xt=6&yt=42&v=606) |
[dont forget to switch your fans](https://xkcd.com/2916/#xt=7&yt=0&v=2) |
[Squirrel determinism](https://xkcd.com/2916/#xt=3&yt=26&v=398) |
[spin sorter](https://xkcd.com/2916/#xt=0&yt=15&v=163) |
[Mass Sort](https://xkcd.com/2916/#xt=11&yt=27&v=427) |
[the wheel's back](https://xkcd.com/2916/#xt=1&yt=69&v=944) |
[samba](https://xkcd.com/2916/#xt=4&yt=0&v=9) |
[Supercollider](https://xkcd.com/2916/#xt=9&yt=9&v=120) |
[less is more](https://xkcd.com/2916/#xt=6&yt=6&v=100) |
[oops! all pillows](https://xkcd.com/2916/#xt=6&yt=44&v=638) |
[The Tri-swordter](https://xkcd.com/2916/#xt=7&yt=72&v=977) |
[Working the forge](https://xkcd.com/2916/#xt=6&yt=33&v=472) |
[null](https://xkcd.com/2916/#xt=3&yt=60&v=830) |
[orbital bonk](https://xkcd.com/2916/#xt=11&yt=12&v=210) |
[the cat has everything under control](https://xkcd.com/2916/#xt=0&yt=52&v=726) |
[error correction](https://xkcd.com/2916/#xt=1&yt=33&v=492) |
[SQUARE SQUIRREL CONTAINMENT](https://xkcd.com/2916/#xt=2&yt=8&v=117) |
[Popcorn maker](https://xkcd.com/2916/#xt=0&yt=61&v=838) |
[Ball Pens Are FUN](https://xkcd.com/2916/#xt=11&yt=62&v=852) |
[unearned confidence :3](https://xkcd.com/2916/#xt=6&yt=38&v=548) |
[6 fans and a cat](https://xkcd.com/2916/#xt=11&yt=59&v=813) |
[Speed up, slow down](https://xkcd.com/2916/#xt=6&yt=35&v=533) |
[overcaffeinated](https://xkcd.com/2916/#xt=11&yt=67&v=925) |
[Coasters](https://xkcd.com/2916/#xt=0&yt=60&v=824) |
[Blues ](https://xkcd.com/2916/#xt=6&yt=62&v=856) |
[Wh- what have you done to my house?](https://xkcd.com/2916/#xt=11&yt=47&v=661) |
[its a groovy time for a movie time](https://xkcd.com/2916/#xt=11&yt=29&v=438) |
[GRAVITY FILTER](https://xkcd.com/2916/#xt=3&yt=15&v=251) |
[Coding for the enterprise](https://xkcd.com/2916/#xt=11&yt=70&v=959) |
[I think this pipe is clogged](https://xkcd.com/2916/#xt=8&yt=15&v=393) |
[Don’t rotate anything challenge](https://xkcd.com/2916/#xt=7&yt=58&v=804) |
[Infinite Cosmos](https://xkcd.com/2916/#xt=5&yt=20&v=340) |
[absence of god](https://xkcd.com/2916/#xt=9&yt=11&v=185) |
[Better Cat than Sorry](https://xkcd.com/2916/#xt=7&yt=60&v=826) |
[swords of teleportation: behind the scenes](https://xkcd.com/2916/#xt=9&yt=70&v=923) |
[Popcorn Machine](https://xkcd.com/2916/#xt=2&yt=46&v=655) |
[3-way sorter](https://xkcd.com/2916/#xt=3&yt=50&v=704) |
[Sword Pile](https://xkcd.com/2916/#xt=5&yt=5&v=71) |
[Drop that anvil](https://xkcd.com/2916/#xt=11&yt=68&v=937) |
[Designed within needed technical specifications](https://xkcd.com/2916/#xt=7&yt=23&v=371) |
[our house, in the middle of my sort](https://xkcd.com/2916/#xt=7&yt=11&v=174) |
[Board to tears](https://xkcd.com/2916/#xt=0&yt=18&v=243) |
[RBY Output; All Color FIlter?](https://xkcd.com/2916/#xt=3&yt=68&v=935) |
[Tripplelerator](https://xkcd.com/2916/#xt=4&yt=25&v=394) |
[And yet they called me mad when I filled the machine with BEES](https://xkcd.com/2916/#xt=10&yt=59&v=812) |
[Nothing to see here, Mr Newton!](https://xkcd.com/2916/#xt=10&yt=71&v=971) |
[Bonknoulli principle](https://xkcd.com/2916/#xt=11&yt=17&v=294) |
[Bubble SOrt](https://xkcd.com/2916/#xt=2&yt=51&v=718) |
[sorting Madness](https://xkcd.com/2916/#xt=2&yt=57&v=798) |
[Pillow fight at the bar](https://xkcd.com/2916/#xt=8&yt=39&v=549) |
[Anvil Sorter](https://xkcd.com/2916/#xt=10&yt=56&v=786) |
[Wild wheels](https://xkcd.com/2916/#xt=1&yt=49&v=692) |
[trans rights](https://xkcd.com/2916/#xt=7&yt=6&v=96) |
[The confoundinator!](https://xkcd.com/2916/#xt=5&yt=33&v=485) |
[big tony](https://xkcd.com/2916/#xt=7&yt=20&v=299) |
[blue hyper highway across green crosswalk](https://xkcd.com/2916/#xt=7&yt=22&v=364) |
[crossed streams](https://xkcd.com/2916/#xt=8&yt=21&v=352) |
[fascinating invention](https://xkcd.com/2916/#xt=10&yt=61&v=848) |
[DEFINITELY NONDETERMINISTIC](https://xkcd.com/2916/#xt=10&yt=7&v=116) |
[occam's swords](https://xkcd.com/2916/#xt=3&yt=71&v=964) |
[pretty bad](https://xkcd.com/2916/#xt=0&yt=0&v=1) |
[Under the Stairs](https://xkcd.com/2916/#xt=9&yt=47&v=662) |
[The creation of Machine](https://xkcd.com/2916/#xt=11&yt=44&v=618) |
[the prism sorts as it desires](https://xkcd.com/2916/#xt=2&yt=20&v=325) |
[Bounce](https://xkcd.com/2916/#xt=7&yt=3&v=70) |
[champagne supernova](https://xkcd.com/2916/#xt=11&yt=66&v=913) |
[Talvieno's Smashbot](https://xkcd.com/2916/#xt=4&yt=9&v=161) |
[Gravity works](https://xkcd.com/2916/#xt=5&yt=17&v=298) |
[Evaporation Filter](https://xkcd.com/2916/#xt=10&yt=58&v=801) |
[panning for green](https://xkcd.com/2916/#xt=0&yt=33&v=477) |
[Popcorn](https://xkcd.com/2916/#xt=1&yt=19&v=274) |
[Mostly air pressure](https://xkcd.com/2916/#xt=10&yt=24&v=390) |
[the sword is mightier than the balls](https://xkcd.com/2916/#xt=10&yt=1&v=39) |
[Galton's Failed board](https://xkcd.com/2916/#xt=6&yt=16&v=195) |
[The Machine](https://xkcd.com/2916/#xt=7&yt=39&v=559) |
[this confounding device](https://xkcd.com/2916/#xt=10&yt=63&v=863) |
[A reasonable attempt](https://xkcd.com/2916/#xt=10&yt=15&v=268) |
[upside down](https://xkcd.com/2916/#xt=6&yt=47&v=664) |
[shooting gallery](https://xkcd.com/2916/#xt=10&yt=20&v=321) |
[It's Getting Silly now](https://xkcd.com/2916/#xt=6&yt=49&v=698) |
[Layered boinginess](https://xkcd.com/2916/#xt=3&yt=28&v=434) |
[not fast enough](https://xkcd.com/2916/#xt=0&yt=39&v=582) |
[nekomimimode](https://xkcd.com/2916/#xt=3&yt=49&v=687) |
[Patterns, 100% Ball Transfer](https://xkcd.com/2916/#xt=5&yt=69&v=941) |
[Speedrun](https://xkcd.com/2916/#xt=11&yt=63&v=862) |
[What strange creatures](https://xkcd.com/2916/#xt=0&yt=14&v=142) |
[Hammer-encouraged sorting algorythm](https://xkcd.com/2916/#xt=5&yt=15&v=270) |
[Brick Whartley's Turbine](https://xkcd.com/2916/#xt=4&yt=27&v=419) |
[Super simple sorter ](https://xkcd.com/2916/#xt=8&yt=62&v=850) |
[sacrifices for the greater good](https://xkcd.com/2916/#xt=4&yt=14&v=246) |
[Bonks](https://xkcd.com/2916/#xt=0&yt=50&v=689) |
[KALI MAAAAAA](https://xkcd.com/2916/#xt=0&yt=28&v=387) |
[the hall of edges](https://xkcd.com/2916/#xt=3&yt=11&v=162) |
[Supercolliding supercollider](https://xkcd.com/2916/#xt=1&yt=45&v=634) |
[this is fine!](https://xkcd.com/2916/#xt=7&yt=49&v=697) |
[The duel](https://xkcd.com/2916/#xt=11&yt=7&v=98) |
[Il fait Doink](https://xkcd.com/2916/#xt=8&yt=20&v=287) |
[nearly always works](https://xkcd.com/2916/#xt=8&yt=50&v=709) |
[Employee of the Month](https://xkcd.com/2916/#xt=7&yt=55&v=781) |
[You have my sword](https://xkcd.com/2916/#xt=8&yt=13&v=197) |
[Catleidoscope](https://xkcd.com/2916/#xt=4&yt=70&v=952) |
[Pneumatic Pnetwork](https://xkcd.com/2916/#xt=6&yt=4&v=72) |
[secret tunnel](https://xkcd.com/2916/#xt=2&yt=14&v=208) |
[A cat's innate, unstoppable desire to push things off of tables](https://xkcd.com/2916/#xt=9&yt=67&v=918) |
[Epic Duel](https://xkcd.com/2916/#xt=0&yt=18&v=252) |
[Don't forget your party helmet](https://xkcd.com/2916/#xt=7&yt=51&v=711) |
[the most direct path](https://xkcd.com/2916/#xt=11&yt=34&v=504) |
[rabbit path](https://xkcd.com/2916/#xt=8&yt=35&v=508) |
[Inner Peace](https://xkcd.com/2916/#xt=2&yt=21&v=320) |
[buns versus squirrels](https://xkcd.com/2916/#xt=11&yt=35&v=517) |
[Bonk Conduction](https://xkcd.com/2916/#xt=7&yt=18&v=244) |
[wormhole](https://xkcd.com/2916/#xt=8&yt=44&v=636) |
[Probably Pinball](https://xkcd.com/2916/#xt=1&yt=20&v=279) |
[Catto Assisted Sorting](https://xkcd.com/2916/#xt=3&yt=51&v=717) |
[Red green Error  checking](https://xkcd.com/2916/#xt=9&yt=66&v=911) |
[name](https://xkcd.com/2916/#xt=2&yt=55&v=769) |
[its all cats all the way down](https://xkcd.com/2916/#xt=8&yt=32&v=481) |
[p(hit) corr. 1/v](https://xkcd.com/2916/#xt=7&yt=43&v=628) |
[hellish merger](https://xkcd.com/2916/#xt=4&yt=8&v=152) |
[dangerous intersection](https://xkcd.com/2916/#xt=11&yt=53&v=745) |
[Will the squirrel ever catch a nut?](https://xkcd.com/2916/#xt=5&yt=67&v=928) |
[*might* be food safe](https://xkcd.com/2916/#xt=8&yt=41&v=596) |
[I Assure You The Loop is Strictly Necessary](https://xkcd.com/2916/#xt=3&yt=29&v=454) |
[Next Time on Dragonball Z!](https://xkcd.com/2916/#xt=4&yt=10&v=169) |
[sword of truth](https://xkcd.com/2916/#xt=2&yt=36&v=537) |
[Zero Point Cat.exe_dropTables](https://xkcd.com/2916/#xt=10&yt=37&v=551) |
[An Uphill Battle](https://xkcd.com/2916/#xt=8&yt=11&v=179) |
[Simply connected](https://xkcd.com/2916/#xt=8&yt=29&v=451) |
[null](https://xkcd.com/2916/#xt=9&yt=51&v=713) |
[That information is classified.](https://xkcd.com/2916/#xt=4&yt=71&v=965) |
[Flooper](https://xkcd.com/2916/#xt=3&yt=24&v=381) |
[javascript version 2](https://xkcd.com/2916/#xt=2&yt=35&v=512) |
[small sort](https://xkcd.com/2916/#xt=9&yt=8&v=125) |
[Look ma! No hands!](https://xkcd.com/2916/#xt=8&yt=0&v=12) |
[order and chaos](https://xkcd.com/2916/#xt=1&yt=9&v=129) |
[jupiter](https://xkcd.com/2916/#xt=8&yt=2&v=73) |
[idk how this works](https://xkcd.com/2916/#xt=7&yt=2&v=64) |
[only fans](https://xkcd.com/2916/#xt=3&yt=27&v=410) |
[hope the cat doesn't get bored](https://xkcd.com/2916/#xt=10&yt=50&v=710) |
[The message](https://xkcd.com/2916/#xt=10&yt=0&v=16) |
[Chaos in a box](https://xkcd.com/2916/#xt=7&yt=42&v=610) |
[an absolutely necessarily complicated machine](https://xkcd.com/2916/#xt=6&yt=68&v=933) |
[SPEED RACER](https://xkcd.com/2916/#xt=11&yt=21&v=347) |
[Lazy hurricane](https://xkcd.com/2916/#xt=5&yt=21&v=343) |
[*clacking noises*](https://xkcd.com/2916/#xt=7&yt=33&v=484) |
[chaff, flare](https://xkcd.com/2916/#xt=9&yt=34&v=501) |
[ballistics are my passion](https://xkcd.com/2916/#xt=6&yt=50&v=708) |
[but you did nothing...](https://xkcd.com/2916/#xt=5&yt=19&v=330) |
[Simple Y/G sorter](https://xkcd.com/2916/#xt=11&yt=28&v=431) |
[throw practice: 🐈=20pt, 🐇=5pt, 🐿️=2pt, 🧢=0pt](https://xkcd.com/2916/#xt=1&yt=54&v=750) |
[velocity sorter](https://xkcd.com/2916/#xt=7&yt=61&v=845) |
[Walk the Plank](https://xkcd.com/2916/#xt=0&yt=57&v=796) |
[red green separator](https://xkcd.com/2916/#xt=0&yt=43&v=619) |
[Junction](https://xkcd.com/2916/#xt=1&yt=24&v=335) |
[Criss-Cross](https://xkcd.com/2916/#xt=6&yt=11&v=167) |
[undercomplicate](https://xkcd.com/2916/#xt=3&yt=0&v=6) |
[Don't Cross The Streams](https://xkcd.com/2916/#xt=0&yt=9&v=68) |
[Breach Control](https://xkcd.com/2916/#xt=1&yt=11&v=154) |
[Fans and bricks](https://xkcd.com/2916/#xt=10&yt=6&v=106) |
[Particle Accelerator 1.0](https://xkcd.com/2916/#xt=5&yt=28&v=435) |
[unbothered](https://xkcd.com/2916/#xt=3&yt=7&v=112) |
[lucky draw](https://xkcd.com/2916/#xt=0&yt=24&v=316) |
[catwalks](https://xkcd.com/2916/#xt=5&yt=40&v=585) |
[chillout by the pool](https://xkcd.com/2916/#xt=8&yt=60&v=825) |
[Deterministic dependency](https://xkcd.com/2916/#xt=4&yt=27&v=420) |
[⚔️🔴☢️](https://xkcd.com/2916/#xt=6&yt=15&v=193) |
[minimalism](https://xkcd.com/2916/#xt=3&yt=46&v=653) |
[Grandpa's Wooden Coaster](https://xkcd.com/2916/#xt=4&yt=40&v=588) |
[Proud](https://xkcd.com/2916/#xt=4&yt=57&v=795) |
[You know i could have left it](https://xkcd.com/2916/#xt=3&yt=56&v=764) |
[Try{Hover();Rebound};Catch{Ball};](https://xkcd.com/2916/#xt=9&yt=42&v=611) |
[More bounces than needed](https://xkcd.com/2916/#xt=11&yt=57&v=788) |
[Springboard](https://xkcd.com/2916/#xt=1&yt=41&v=589) |
[WAAAGGGGGGGG!!!!](https://xkcd.com/2916/#xt=4&yt=13&v=225) |
[the easiest way](https://xkcd.com/2916/#xt=0&yt=67&v=914) |
[bun](https://xkcd.com/2916/#xt=0&yt=46&v=633) |
[Division of Labor](https://xkcd.com/2916/#xt=7&yt=63&v=872) |
[I totally understand gravity systems](https://xkcd.com/2916/#xt=2&yt=23&v=324) |
[All hail king knitcap](https://xkcd.com/2916/#xt=4&yt=29&v=445) |
[EVENTUALLY CONSISTENT](https://xkcd.com/2916/#xt=10&yt=25&v=389) |
[☃](https://xkcd.com/2916/#xt=5&yt=7&v=108) |
[Repel-o-matic](https://xkcd.com/2916/#xt=1&yt=2&v=22) |
[The long way around](https://xkcd.com/2916/#xt=5&yt=15&v=269) |
[I mean it works...](https://xkcd.com/2916/#xt=9&yt=19&v=284) |
[A dance of ancient forces](https://xkcd.com/2916/#xt=11&yt=25&v=392) |
[Tower defence](https://xkcd.com/2916/#xt=8&yt=6&v=94) |
[Zooming ball](https://xkcd.com/2916/#xt=10&yt=49&v=694) |
[mixer](https://xkcd.com/2916/#xt=7&yt=24&v=383) |
[Feline kickball practice](https://xkcd.com/2916/#xt=0&yt=44&v=624) |
[WAD_SWAT](https://xkcd.com/2916/#xt=11&yt=38&v=557) |
[Fan-tastic heart](https://xkcd.com/2916/#xt=11&yt=13&v=213) |
[Traps](https://xkcd.com/2916/#xt=7&yt=71&v=968) |
[Trans rights 2](https://xkcd.com/2916/#xt=4&yt=34&v=505) |
[All about the balance](https://xkcd.com/2916/#xt=10&yt=19&v=303) |
[Fred](https://xkcd.com/2916/#xt=1&yt=0&v=4) |
[i HAVE SEEN BETTER](https://xkcd.com/2916/#xt=9&yt=45&v=646) |
[highway inspector bun](https://xkcd.com/2916/#xt=8&yt=24&v=386) |
[bookshelf](https://xkcd.com/2916/#xt=5&yt=13&v=231) |
[Do you feel a draft?](https://xkcd.com/2916/#xt=3&yt=10&v=205) |
[trust but verify](https://xkcd.com/2916/#xt=0&yt=41&v=590) |
[stripy pillows](https://xkcd.com/2916/#xt=0&yt=63&v=866) |
[Sleepy](https://xkcd.com/2916/#xt=6&yt=18&v=365) |
[Black Magic](https://xkcd.com/2916/#xt=11&yt=39&v=572) |
[under construction](https://xkcd.com/2916/#xt=8&yt=53&v=742) |
[recycler](https://xkcd.com/2916/#xt=9&yt=40&v=561) |
[Maxwell's Demon](https://xkcd.com/2916/#xt=1&yt=26&v=356) |
[A Roundabout Bounder route](https://xkcd.com/2916/#xt=1&yt=8&v=104) |
[654](https://xkcd.com/2916/#xt=9&yt=14&v=234) |
[Folsom prism blues](https://xkcd.com/2916/#xt=2&yt=64&v=886) |
[yeetatron 5.000.000](https://xkcd.com/2916/#xt=5&yt=50&v=706) |
[Green shaker](https://xkcd.com/2916/#xt=4&yt=52&v=728) |
[Cats & Cannons](https://xkcd.com/2916/#xt=9&yt=41&v=597) |
[synchronicity](https://xkcd.com/2916/#xt=1&yt=64&v=885) |
[tunnels](https://xkcd.com/2916/#xt=6&yt=61&v=844) |
[Particle Accelerator](https://xkcd.com/2916/#xt=11&yt=50&v=699) |
[hostile takeover](https://xkcd.com/2916/#xt=4&yt=68&v=930) |
[The giant](https://xkcd.com/2916/#xt=9&yt=1&v=38) |
[collision](https://xkcd.com/2916/#xt=4&yt=20&v=338) |
[I'm a BIG FAN](https://xkcd.com/2916/#xt=1&yt=8&v=103) |
[AAAAAAAAAAAAAAAAAAAAAAAAAHHH](https://xkcd.com/2916/#xt=1&yt=57&v=797) |
[i swear it's iso 9001 compliant](https://xkcd.com/2916/#xt=10&yt=44&v=620) |
[Journey to Squirrel Temple](https://xkcd.com/2916/#xt=10&yt=52&v=722) |
[False Positive filter](https://xkcd.com/2916/#xt=0&yt=68&v=931) |
[Roticerizer](https://xkcd.com/2916/#xt=1&yt=2&v=24) |
[Sharingan](https://xkcd.com/2916/#xt=3&yt=41&v=568) |
[Scientific Progress Goes Bonk](https://xkcd.com/2916/#xt=1&yt=23&v=315) |
[completely fanless](https://xkcd.com/2916/#xt=1&yt=44&v=632) |
[Ball PIt](https://xkcd.com/2916/#xt=11&yt=10&v=171) |
[Give the cat a ball](https://xkcd.com/2916/#xt=9&yt=43&v=614) |
[it's-a me, wario!](https://xkcd.com/2916/#xt=7&yt=59&v=816) |
[uncombineinator](https://xkcd.com/2916/#xt=5&yt=70&v=955) |
[labyrinth](https://xkcd.com/2916/#xt=5&yt=26&v=400) |
[new high score](https://xkcd.com/2916/#xt=3&yt=32&v=480) |
[100% reliable](https://xkcd.com/2916/#xt=8&yt=14&v=212) |
[Failing upwards ](https://xkcd.com/2916/#xt=8&yt=35&v=509) |
[<Ø> | intersection](https://xkcd.com/2916/#xt=5&yt=61&v=839) |
[Bounce under the bun](https://xkcd.com/2916/#xt=5&yt=57&v=794) |
[Bonk Reactor](https://xkcd.com/2916/#xt=0&yt=13&v=126) |
[chassé croisé](https://xkcd.com/2916/#xt=3&yt=8&v=137) |
[Fan](https://xkcd.com/2916/#xt=7&yt=5&v=89) |
[well, the gears are a metaphor for the economy, you see, and the rabbit in the shotglass being rewarded is....](https://xkcd.com/2916/#xt=2&yt=27&v=428) |
[The rise of the green](https://xkcd.com/2916/#xt=2&yt=39&v=570) |
[sword](https://xkcd.com/2916/#xt=2&yt=0&v=3) |
[Hello Squirrel](https://xkcd.com/2916/#xt=1&yt=4&v=32) |
[get outta here](https://xkcd.com/2916/#xt=7&yt=64&v=875) |
[swan](https://xkcd.com/2916/#xt=4&yt=49&v=685) |
[BB Gun](https://xkcd.com/2916/#xt=3&yt=59&v=820) |
[SOArSORT (WITH MAndatory CAT)](https://xkcd.com/2916/#xt=11&yt=56&v=787) |
[qwerty](https://xkcd.com/2916/#xt=3&yt=53&v=738) |
[x](https://xkcd.com/2916/#xt=11&yt=0&v=17) |
[cat-egorization](https://xkcd.com/2916/#xt=9&yt=60&v=836) |
[Bounce house](https://xkcd.com/2916/#xt=5&yt=0&v=10) |
[in hammer we truss](https://xkcd.com/2916/#xt=2&yt=32&v=465) |
[Cyclone tower](https://xkcd.com/2916/#xt=10&yt=22&v=358) |
[Anechoic chamber](https://xkcd.com/2916/#xt=9&yt=18&v=278) |
[Precarious](https://xkcd.com/2916/#xt=8&yt=65&v=895) |
[?](https://xkcd.com/2916/#xt=0&yt=5&v=26) |
[horrible](https://xkcd.com/2916/#xt=4&yt=32&v=475) |
[This makes more sense if they're helium ](https://xkcd.com/2916/#xt=1&yt=52&v=733) |
[are you sure we are not missing an obvious solution?](https://xkcd.com/2916/#xt=9&yt=27&v=407) |
[Technically Effective](https://xkcd.com/2916/#xt=9&yt=22&v=348) |
[The Cat-raption](https://xkcd.com/2916/#xt=6&yt=36&v=510) |
[risking it](https://xkcd.com/2916/#xt=9&yt=55&v=775) |
[Pepper Grinder](https://xkcd.com/2916/#xt=1&yt=42&v=601) |
[Hands free 2 - replusive](https://xkcd.com/2916/#xt=10&yt=10&v=138) |
[Levitation](https://xkcd.com/2916/#xt=7&yt=12&v=182) |
[yeah!! science!!!](https://xkcd.com/2916/#xt=8&yt=43&v=627) |
[Swingbopper](https://xkcd.com/2916/#xt=1&yt=6&v=54) |
[Unnecessary Complications with mediocre outcome](https://xkcd.com/2916/#xt=6&yt=8&v=121) |
[Chris](https://xkcd.com/2916/#xt=1&yt=32&v=461) |
[Observation](https://xkcd.com/2916/#xt=7&yt=13&v=184) |
[Stick :3](https://xkcd.com/2916/#xt=1&yt=54&v=749) |
[Fan Spectrometer](https://xkcd.com/2916/#xt=10&yt=27&v=426) |
[The Fan-tom Menace ](https://xkcd.com/2916/#xt=1&yt=25&v=344) |
[Electric Blender](https://xkcd.com/2916/#xt=5&yt=30&v=460) |
[xkcd's biggest fan](https://xkcd.com/2916/#xt=11&yt=5&v=102) |
[school skipping machine 2000](https://xkcd.com/2916/#xt=4&yt=47&v=665) |
[Rainbow Road](https://xkcd.com/2916/#xt=10&yt=18&v=292) |
[SEE YOU, SPACE CHEERLEADER](https://xkcd.com/2916/#xt=8&yt=4&v=84) |
[air filtration](https://xkcd.com/2916/#xt=2&yt=6&v=61) |
[Q-switched LINAC](https://xkcd.com/2916/#xt=0&yt=17&v=181) |
[Behind the scenes of the sword in the stone](https://xkcd.com/2916/#xt=1&yt=27&v=357) |
[cats and wabits](https://xkcd.com/2916/#xt=11&yt=46&v=648) |
[soft](https://xkcd.com/2916/#xt=1&yt=58&v=810) |
[Word Harder not Smarter](https://xkcd.com/2916/#xt=8&yt=57&v=791) |
[the creation of adam](https://xkcd.com/2916/#xt=3&yt=30&v=455) |
[cannon vs. stochastic windtunnel](https://xkcd.com/2916/#xt=3&yt=35&v=520) |
[All you need are cats](https://xkcd.com/2916/#xt=11&yt=40&v=580) |
[What goes up](https://xkcd.com/2916/#xt=2&yt=18&v=271) |
[Cyclotron](https://xkcd.com/2916/#xt=2&yt=41&v=593) |
[Blue is lighter than green](https://xkcd.com/2916/#xt=6&yt=63&v=871) |
[fan-sort](https://xkcd.com/2916/#xt=10&yt=70&v=958) |
[Newton's Theory Of Anti-Gravity](https://xkcd.com/2916/#xt=5&yt=66&v=907) |
[The Hammer In The Stone](https://xkcd.com/2916/#xt=3&yt=55&v=763) |
[now that's what I call engineering](https://xkcd.com/2916/#xt=5&yt=14&v=253) |
[!important](https://xkcd.com/2916/#xt=9&yt=40&v=560) |
[Ultrasorter](https://xkcd.com/2916/#xt=1&yt=3&v=27) |
[green superhighway](https://xkcd.com/2916/#xt=5&yt=43&v=615) |
[ran out of blocks](https://xkcd.com/2916/#xt=4&yt=42&v=604) |
[Butterfly chaos circuit coaster](https://xkcd.com/2916/#xt=7&yt=47&v=663) |
[Reverse Gravity](https://xkcd.com/2916/#xt=7&yt=52&v=731) |
[BG Output; All Color Filter?](https://xkcd.com/2916/#xt=1&yt=72&v=973) |
[Dueling Pneumatics](https://xkcd.com/2916/#xt=5&yt=62&v=854) |
[Propmaster](https://xkcd.com/2916/#xt=6&yt=1&v=35) |
[color correction on the fly](https://xkcd.com/2916/#xt=5&yt=59&v=818) |
[defying expectations - a Visual Essay](https://xkcd.com/2916/#xt=1&yt=15&v=230) |
[SKÅL](https://xkcd.com/2916/#xt=8&yt=71&v=969) |
[Windy Boards](https://xkcd.com/2916/#xt=5&yt=48&v=678) |
[Deoxyribonucleic acid](https://xkcd.com/2916/#xt=10&yt=68&v=926) |
[The Squirrel from Ipanema](https://xkcd.com/2916/#xt=11&yt=17&v=297) |
[i'm A big fan](https://xkcd.com/2916/#xt=3&yt=10&v=201) |
[The sorting stick is never wrong twice](https://xkcd.com/2916/#xt=5&yt=34&v=506) |
[has anyone figured out how this game determines which machines to show publicly yet?](https://xkcd.com/2916/#xt=11&yt=13&v=211) |
[Defiance Apparatus](https://xkcd.com/2916/#xt=7&yt=36&v=521) |
[2](https://xkcd.com/2916/#xt=0&yt=21&v=306) |
[how many fans does a pillow fort need](https://xkcd.com/2916/#xt=1&yt=55&v=771) |
[Descent](https://xkcd.com/2916/#xt=5&yt=7&v=109) |
[I tried gravity. it was hard](https://xkcd.com/2916/#xt=9&yt=9&v=215) |
[the chute](https://xkcd.com/2916/#xt=2&yt=21&v=317) |
[popcorn](https://xkcd.com/2916/#xt=3&yt=0&v=8) |
[Twin Turbine](https://xkcd.com/2916/#xt=0&yt=56&v=770) |
[Worst. Sorter. ever.](https://xkcd.com/2916/#xt=8&yt=40&v=578) |
[HOW STOP LIGHTS WORK](https://xkcd.com/2916/#xt=4&yt=51&v=716) |
[The princess and the Peas](https://xkcd.com/2916/#xt=2&yt=15&v=155) |
[goodsort](https://xkcd.com/2916/#xt=5&yt=51&v=715) |
[tee hee](https://xkcd.com/2916/#xt=0&yt=26&v=337) |
[Source Leak](https://xkcd.com/2916/#xt=2&yt=72&v=974) |
[dont mind the collisions](https://xkcd.com/2916/#xt=8&yt=20&v=289) |
[The "I can't believe it actually works"](https://xkcd.com/2916/#xt=7&yt=7&v=111) |
[double check](https://xkcd.com/2916/#xt=2&yt=71&v=963) |
[the sword of judgement](https://xkcd.com/2916/#xt=9&yt=55&v=777) |
[not sure this is feasible](https://xkcd.com/2916/#xt=7&yt=27&v=416) |
[The Turtle Moves](https://xkcd.com/2916/#xt=4&yt=65&v=899) |
[Woodframe](https://xkcd.com/2916/#xt=4&yt=36&v=539) |
[Metabolic reprocessing](https://xkcd.com/2916/#xt=5&yt=31&v=464) |
[Procrastination machine](https://xkcd.com/2916/#xt=0&yt=53&v=735) |
[Thirsty](https://xkcd.com/2916/#xt=2&yt=69&v=943) |
[crosswinds](https://xkcd.com/2916/#xt=6&yt=25&v=396) |
[separation of concerns](https://xkcd.com/2916/#xt=5&yt=60&v=833) |
[60% of the time it works every time](https://xkcd.com/2916/#xt=4&yt=22&v=346) |
[Crazy 2](https://xkcd.com/2916/#xt=3&yt=34&v=507) |
[Trust Me it works](https://xkcd.com/2916/#xt=9&yt=20&v=314) |
[Red sky at night, sailors delight](https://xkcd.com/2916/#xt=10&yt=54&v=758) |
[planet](https://xkcd.com/2916/#xt=0&yt=69&v=945) |
[DIY antigravity color sorter](https://xkcd.com/2916/#xt=1&yt=56&v=772) |
[Drawbridge](https://xkcd.com/2916/#xt=0&yt=20&v=300) |
[how to not sort colors (colorized) 2](https://xkcd.com/2916/#xt=2&yt=12&v=178) |
[Loop de Loop](https://xkcd.com/2916/#xt=10&yt=9&v=119) |
[It Just works](https://xkcd.com/2916/#xt=5&yt=1&v=28) |
[Piper](https://xkcd.com/2916/#xt=9&yt=55&v=776) |
[wILL THIS REALLY SORT, HONEY?](https://xkcd.com/2916/#xt=11&yt=40&v=581) |
[Surfing the Stream](https://xkcd.com/2916/#xt=6&yt=21&v=345) |
[null](https://xkcd.com/2916/#xt=9&yt=61&v=847) |
[Kitty Kitty](https://xkcd.com/2916/#xt=0&yt=31&v=441) |
[They MiGht Be Sorted](https://xkcd.com/2916/#xt=9&yt=68&v=920) |
[pinball... hexagon squirrel?!](https://xkcd.com/2916/#xt=6&yt=28&v=421) |
[BONKland](https://xkcd.com/2916/#xt=8&yt=16&v=256) |
[Classify](https://xkcd.com/2916/#xt=11&yt=41&v=599) |
[Shoot and test](https://xkcd.com/2916/#xt=9&yt=56&v=785) |
["I think the Interns are taking care of it.](https://xkcd.com/2916/#xt=8&yt=15&v=221) |
[Dual Wield ⚔️ for colour Correction 🔨](https://xkcd.com/2916/#xt=2&yt=68&v=934) |
[chaos II](https://xkcd.com/2916/#xt=9&yt=50&v=701) |
[We have a black hole at home... the black hole at home:](https://xkcd.com/2916/#xt=9&yt=58&v=802) |
[snow globe](https://xkcd.com/2916/#xt=11&yt=58&v=800) |
[egg holder](https://xkcd.com/2916/#xt=11&yt=23&v=372) |
[Just like clockwork](https://xkcd.com/2916/#xt=10&yt=67&v=919) |
[Air Travel](https://xkcd.com/2916/#xt=4&yt=66&v=908) |
[meow](https://xkcd.com/2916/#xt=2&yt=64&v=883) |
[which way do we go?](https://xkcd.com/2916/#xt=8&yt=45&v=656) |
[Lorentz's Catio](https://xkcd.com/2916/#xt=4&yt=31&v=463) |
[cat pinball](https://xkcd.com/2916/#xt=0&yt=42&v=600) |
[pool](https://xkcd.com/2916/#xt=7&yt=17&v=242) |
[The long way around](https://xkcd.com/2916/#xt=3&yt=6&v=65) |
[thread the needle](https://xkcd.com/2916/#xt=1&yt=5&v=47) |
[railgun ran out of budget](https://xkcd.com/2916/#xt=8&yt=27&v=414) |
[breakout](https://xkcd.com/2916/#xt=2&yt=22&v=322) |
[make it rain](https://xkcd.com/2916/#xt=2&yt=11&v=149) |
[thank god there are enough blues for the cat](https://xkcd.com/2916/#xt=6&yt=55&v=759) |
[Sisyphus](https://xkcd.com/2916/#xt=3&yt=44&v=642) |
[A royal throne for a king bun](https://xkcd.com/2916/#xt=6&yt=56&v=780) |
[Stroll'in](https://xkcd.com/2916/#xt=9&yt=2&v=82) |
[He's Bonkers](https://xkcd.com/2916/#xt=11&yt=30&v=516) |
[teeter-totter love](https://xkcd.com/2916/#xt=3&yt=32&v=476) |
[How pinball should be played](https://xkcd.com/2916/#xt=0&yt=30&v=436) |
[Anxious blacksmith’s dreams](https://xkcd.com/2916/#xt=8&yt=16&v=304) |
[Flush](https://xkcd.com/2916/#xt=9&yt=63&v=864) |
[wood'n'wind](https://xkcd.com/2916/#xt=8&yt=51&v=720) |
[duality](https://xkcd.com/2916/#xt=9&yt=15&v=245) |
[load bearing cat](https://xkcd.com/2916/#xt=3&yt=47&v=668) |
[Somewhat sorted](https://xkcd.com/2916/#xt=8&yt=64&v=877) |
[### Multiball 2 ###](https://xkcd.com/2916/#xt=5&yt=38&v=554) |
[Sysiphean Task (Or, The Green Ball Go Up)](https://xkcd.com/2916/#xt=2&yt=48&v=684) |
[attempting to pierce the bun field](https://xkcd.com/2916/#xt=11&yt=60&v=834) |
[combinator separator](https://xkcd.com/2916/#xt=5&yt=72&v=976) |
[Black Hole Parachute](https://xkcd.com/2916/#xt=9&yt=49&v=695) |
[oxygen/nitrogen separator](https://xkcd.com/2916/#xt=6&yt=57&v=793) |
[canals](https://xkcd.com/2916/#xt=10&yt=8&v=134) |
[Small hadron collider](https://xkcd.com/2916/#xt=9&yt=48&v=677) |
[needless](https://xkcd.com/2916/#xt=1&yt=66&v=906) |
[Repulsors](https://xkcd.com/2916/#xt=7&yt=1&v=45) |
[anything to keep production going](https://xkcd.com/2916/#xt=7&yt=32&v=482) |
[Eclipse observation station](https://xkcd.com/2916/#xt=4&yt=38&v=555) |
[Sierpinski](https://xkcd.com/2916/#xt=5&yt=53&v=724) |
[Cat Bat pinball](https://xkcd.com/2916/#xt=0&yt=51&v=719) |
[Defying Phsyics](https://xkcd.com/2916/#xt=11&yt=15&v=276) |
[sorter](https://xkcd.com/2916/#xt=6&yt=32&v=468) |
[black hole 2: electric boogaloo](https://xkcd.com/2916/#xt=1&yt=9&v=128) |
[inconvenient](https://xkcd.com/2916/#xt=0&yt=18&v=241) |
[It starts so calmly](https://xkcd.com/2916/#xt=3&yt=48&v=688) |
[Blue is the warmest colour](https://xkcd.com/2916/#xt=8&yt=31&v=470) |
[POpcorn](https://xkcd.com/2916/#xt=10&yt=36&v=532) |
[Deterministic pinball](https://xkcd.com/2916/#xt=4&yt=17&v=267) |
[Gravity-assisted bonkotron](https://xkcd.com/2916/#xt=6&yt=0&v=11) |
[tiny](https://xkcd.com/2916/#xt=9&yt=19&v=282) |
[sift four cups flour](https://xkcd.com/2916/#xt=2&yt=67&v=916) |
[Float backup filters](https://xkcd.com/2916/#xt=11&yt=45&v=635) |
[The Optics Final](https://xkcd.com/2916/#xt=0&yt=45&v=625) |
[The Kessle run](https://xkcd.com/2916/#xt=4&yt=11&v=172) |
[swirl](https://xkcd.com/2916/#xt=1&yt=70&v=950) |
[Tri-sorter with a cat!](https://xkcd.com/2916/#xt=9&yt=71&v=970) |
[Wind sorter](https://xkcd.com/2916/#xt=3&yt=18&v=312) |
[wash em up](https://xkcd.com/2916/#xt=6&yt=9&v=141) |
[probabilistic bounce house](https://xkcd.com/2916/#xt=3&yt=13&v=191) |
[bogosort](https://xkcd.com/2916/#xt=7&yt=31&v=453) |
[relentlessly rectilinear](https://xkcd.com/2916/#xt=2&yt=33&v=491) |
[Plan for Failure](https://xkcd.com/2916/#xt=1&yt=60&v=827) |
[i'd like to buy a vowel](https://xkcd.com/2916/#xt=4&yt=62&v=855) |
[Crossroads](https://xkcd.com/2916/#xt=7&yt=8&v=135) |
[Where the wind Takes you](https://xkcd.com/2916/#xt=6&yt=2&v=50) |
[3d stuff gives me a headache](https://xkcd.com/2916/#xt=11&yt=32&v=471) |
[Fancy_CAt](https://xkcd.com/2916/#xt=3&yt=54&v=746) |
[the filter](https://xkcd.com/2916/#xt=7&yt=21&v=349) |
[i think youre nuts](https://xkcd.com/2916/#xt=4&yt=12&v=192) |
[down the rabbit hole](https://xkcd.com/2916/#xt=5&yt=45&v=639) |
[scientific progress goes](https://xkcd.com/2916/#xt=8&yt=59&v=815) |
[LBC](https://xkcd.com/2916/#xt=9&yt=65&v=896) |
[Sortenflugen](https://xkcd.com/2916/#xt=3&yt=45&v=644) |
[Eowyn will handle it](https://xkcd.com/2916/#xt=6&yt=37&v=530) |
[SS Probably Deterministic](https://xkcd.com/2916/#xt=11&yt=61&v=837) |
[Bonk line](https://xkcd.com/2916/#xt=7&yt=3&v=69) |
[upside down](https://xkcd.com/2916/#xt=1&yt=67&v=915) |
[gentle descent](https://xkcd.com/2916/#xt=9&yt=13&v=206) |
[Schrödinger's wonderland](https://xkcd.com/2916/#xt=11&yt=33&v=486) |
[swordplay](https://xkcd.com/2916/#xt=4&yt=59&v=819) |
[Brownian Motion](https://xkcd.com/2916/#xt=1&yt=20&v=281) |
[the council advises against colliding](https://xkcd.com/2916/#xt=0&yt=18&v=247) |
[slurp](https://xkcd.com/2916/#xt=9&yt=37&v=535) |
[The intestines](https://xkcd.com/2916/#xt=9&yt=4&v=80) |
[pipe dream](https://xkcd.com/2916/#xt=4&yt=3&v=49) |
[you'll never take me alive!](https://xkcd.com/2916/#xt=0&yt=71&v=961) |
[medium-speed shredder](https://xkcd.com/2916/#xt=5&yt=58&v=806) |
[The jugglers](https://xkcd.com/2916/#xt=11&yt=0&v=40) |
[bonk and forth](https://xkcd.com/2916/#xt=1&yt=29&v=412) |
[H. Gravity Wells](https://xkcd.com/2916/#xt=2&yt=54&v=747) |
[THE cat-inator](https://xkcd.com/2916/#xt=0&yt=35&v=495) |
[a bonk-determined tesla valve](https://xkcd.com/2916/#xt=0&yt=26&v=355) |
[XKCD 303](https://xkcd.com/2916/#xt=1&yt=7&v=67) |
[Team Rocket is blasting off again](https://xkcd.com/2916/#xt=5&yt=24&v=380) |
[What do you mean, the tomatoes aren't even ripe? We didn't buy this tomato Sorter for nothing!](https://xkcd.com/2916/#xt=3&yt=40&v=567) |
[Prism twirler](https://xkcd.com/2916/#xt=8&yt=7&v=113) |
[Leaky pipes](https://xkcd.com/2916/#xt=5&yt=6&v=95) |
[thirsty](https://xkcd.com/2916/#xt=8&yt=23&v=375) |
[Everyone does their part](https://xkcd.com/2916/#xt=5&yt=41&v=592) |
[gold rubeberg](https://xkcd.com/2916/#xt=5&yt=22&v=363) |
[Double half pipe](https://xkcd.com/2916/#xt=10&yt=7&v=118) |
[import antigravity](https://xkcd.com/2916/#xt=0&yt=48&v=671) |
[Do a flip](https://xkcd.com/2916/#xt=8&yt=37&v=519) |
[Traffic jam](https://xkcd.com/2916/#xt=1&yt=46&v=647) |
[The Betrayal...](https://xkcd.com/2916/#xt=1&yt=14&v=190) |
[the bun cannon](https://xkcd.com/2916/#xt=7&yt=50&v=702) |
[the great filter](https://xkcd.com/2916/#xt=3&yt=1&v=31) |
[its like a laser except it isn't](https://xkcd.com/2916/#xt=2&yt=40&v=586) |
[AutoWash](https://xkcd.com/2916/#xt=11&yt=16&v=293) |
[crisscross](https://xkcd.com/2916/#xt=9&yt=21&v=354) |
[accursed criss cross](https://xkcd.com/2916/#xt=5&yt=55&v=762) |
[store room](https://xkcd.com/2916/#xt=3&yt=36&v=534) |
[Mass Attraction](https://xkcd.com/2916/#xt=2&yt=49&v=691) |
[I have trapped him](https://xkcd.com/2916/#xt=3&yt=15&v=250) |
[boing](https://xkcd.com/2916/#xt=8&yt=19&v=277) |
[Simple](https://xkcd.com/2916/#xt=9&yt=12&v=200) |
[Filtration by Levitation](https://xkcd.com/2916/#xt=2&yt=44&v=622) |
[the sorting hat](https://xkcd.com/2916/#xt=9&yt=24&v=376) |
[don't forget to change the directions of your fans for summer!](https://xkcd.com/2916/#xt=0&yt=18&v=254) |
[Ultimate Ballpit Showdown](https://xkcd.com/2916/#xt=2&yt=8&v=127) |
[balls galore](https://xkcd.com/2916/#xt=3&yt=20&v=333) |
[XKCD GLados Fight (Portal)](https://xkcd.com/2916/#xt=10&yt=65&v=901) |
[redacted antigravity](https://xkcd.com/2916/#xt=6&yt=54&v=753) |
[can you please lend a hand?](https://xkcd.com/2916/#xt=0&yt=66&v=905) |
[The Nine Lives of Erwin Schrödinger](https://xkcd.com/2916/#xt=10&yt=53&v=744) |
[Basic Ball Bounce Brew](https://xkcd.com/2916/#xt=10&yt=41&v=598) |
[Normal distribution](https://xkcd.com/2916/#xt=7&yt=27&v=423) |
[Safe from emails](https://xkcd.com/2916/#xt=6&yt=19&v=332) |
[the very accurate separator TM](https://xkcd.com/2916/#xt=3&yt=10&v=202) |
[If I were a sculptor, but then again no.](https://xkcd.com/2916/#xt=8&yt=66&v=894) |
[radioactive decay of yellow element](https://xkcd.com/2916/#xt=2&yt=65&v=893) |
[Oil and Water bubble toy](https://xkcd.com/2916/#xt=0&yt=23&v=311) |
[Injection moulding](https://xkcd.com/2916/#xt=8&yt=1&v=41) |
[tempo control](https://xkcd.com/2916/#xt=4&yt=63&v=869) |
[Void in reverse](https://xkcd.com/2916/#xt=0&yt=2&v=13) |
[Big Fan of the bouncy castle](https://xkcd.com/2916/#xt=7&yt=26&v=401) |
[Klaus](https://xkcd.com/2916/#xt=9&yt=31&v=478) |
[All Hail Hexagon squirrel](https://xkcd.com/2916/#xt=0&yt=7&v=55) |
[Flying kitten](https://xkcd.com/2916/#xt=7&yt=56&v=783) |
[overcomplication is fun!](https://xkcd.com/2916/#xt=3&yt=64&v=880) |
[laziness ](https://xkcd.com/2916/#xt=11&yt=11&v=199) |
[The smithy's Rest](https://xkcd.com/2916/#xt=1&yt=10&v=132) |
[I need to vent](https://xkcd.com/2916/#xt=3&yt=2&v=36) |
[Red Boink, Blue FlIES](https://xkcd.com/2916/#xt=7&yt=5&v=91) |
[no](https://xkcd.com/2916/#xt=6&yt=18&v=331) |
[Twirl and a Dunk](https://xkcd.com/2916/#xt=4&yt=72&v=975) |
[junction 9000](https://xkcd.com/2916/#xt=4&yt=35&v=536) |
[Contactless Payment](https://xkcd.com/2916/#xt=0&yt=18&v=260) |
[Anvil cat slips the surly bonds of earth](https://xkcd.com/2916/#xt=11&yt=18&v=295) |
[Bonk sort](https://xkcd.com/2916/#xt=7&yt=54&v=756) |
[Big Mixer](https://xkcd.com/2916/#xt=2&yt=7&v=101) |
[The fun we could have had](https://xkcd.com/2916/#xt=0&yt=8&v=60) |
[crossover episode](https://xkcd.com/2916/#xt=10&yt=34&v=502) |
[under construction](https://xkcd.com/2916/#xt=10&yt=60&v=835) |
[Color Correction](https://xkcd.com/2916/#xt=6&yt=27&v=418) |
[Malus Pummela](https://xkcd.com/2916/#xt=9&yt=25&v=379) |
[The Trial of Wind](https://xkcd.com/2916/#xt=10&yt=47&v=675) |
[Sudo Buy me Some Playpen Balls](https://xkcd.com/2916/#xt=4&yt=39&v=575) |
[AIRSORT](https://xkcd.com/2916/#xt=5&yt=27&v=413) |
[Bounce Grouse](https://xkcd.com/2916/#xt=8&yt=5&v=86) |
[Blue Shall Not Pass](https://xkcd.com/2916/#xt=4&yt=41&v=591) |
[Skeet Shoot](https://xkcd.com/2916/#xt=3&yt=10&v=153) |
[pLarf](https://xkcd.com/2916/#xt=8&yt=26&v=402) |
[Basic Bouncer Funnel](https://xkcd.com/2916/#xt=10&yt=12&v=217) |
[the airship](https://xkcd.com/2916/#xt=10&yt=13&v=233) |
[accelerator](https://xkcd.com/2916/#xt=7&yt=48&v=681) |
[Probable failure v0.1](https://xkcd.com/2916/#xt=10&yt=21&v=360) |
[100% Deterministic](https://xkcd.com/2916/#xt=5&yt=36&v=540) |
[Final boss](https://xkcd.com/2916/#xt=3&yt=65&v=889) |
[Too much KSP](https://xkcd.com/2916/#xt=5&yt=2&v=46) |
[Kerplunkinator](https://xkcd.com/2916/#xt=1&yt=38&v=563) |
[#10438](https://xkcd.com/2916/#xt=7&yt=38&v=547) |
[TIL why box fans exist](https://xkcd.com/2916/#xt=1&yt=51&v=721) |
[The not so great filter](https://xkcd.com/2916/#xt=4&yt=54&v=755) |
[Spooky action at a distance](https://xkcd.com/2916/#xt=7&yt=34&v=499) |
[To Boink or Not To Boink](https://xkcd.com/2916/#xt=1&yt=12&v=165) |
[THE AMBIENT VOID OF SELF-CONGRATULATORY BUT ULTIMATELY EMPTY RHETORIC](https://xkcd.com/2916/#xt=8&yt=3&v=76) |
[FA, A long long way to run](https://xkcd.com/2916/#xt=4&yt=60&v=831) |
[Chaos in a box](https://xkcd.com/2916/#xt=5&yt=13&v=227) |
[krazy copter hats!](https://xkcd.com/2916/#xt=9&yt=53&v=743) |
[Agitate and Evaporate](https://xkcd.com/2916/#xt=0&yt=59&v=823) |
[flughenvaghen](https://xkcd.com/2916/#xt=2&yt=3&v=34) |
[test2](https://xkcd.com/2916/#xt=9&yt=19&v=286) |
[Double Rainbow](https://xkcd.com/2916/#xt=10&yt=5&v=99) |
[loss](https://xkcd.com/2916/#xt=4&yt=15&v=261) |
[40-swat bulb](https://xkcd.com/2916/#xt=3&yt=33&v=490) |
[Polynomial Time](https://xkcd.com/2916/#xt=6&yt=60&v=829) |
[cat power](https://xkcd.com/2916/#xt=0&yt=37&v=531) |
[Gravity assist](https://xkcd.com/2916/#xt=1&yt=22&v=308) |
[Filterrer](https://xkcd.com/2916/#xt=0&yt=18&v=239) |
[I Don't Think This Is OSHA Compliant](https://xkcd.com/2916/#xt=8&yt=15&v=220) |
[Free floating](https://xkcd.com/2916/#xt=8&yt=10&v=156) |
[Maze runner](https://xkcd.com/2916/#xt=9&yt=69&v=924) |
[oof](https://xkcd.com/2916/#xt=4&yt=23&v=369) |
[Pinball Bouncer](https://xkcd.com/2916/#xt=0&yt=1&v=5) |
[late to work](https://xkcd.com/2916/#xt=8&yt=67&v=897) |
[closed source](https://xkcd.com/2916/#xt=10&yt=57&v=789) |
[Half Normal](https://xkcd.com/2916/#xt=5&yt=65&v=892) |
[Fishmolish](https://xkcd.com/2916/#xt=11&yt=69&v=949) |
[The Fanspitter contraption](https://xkcd.com/2916/#xt=1&yt=18&v=264) |
[we're out of vermouth!](https://xkcd.com/2916/#xt=9&yt=38&v=550) |
[Resistor v87](https://xkcd.com/2916/#xt=5&yt=13&v=223) |
[Polyhammory](https://xkcd.com/2916/#xt=1&yt=59&v=822) |
[gravity feed](https://xkcd.com/2916/#xt=7&yt=4&v=78) |
[Squirrels are boring, trampolines are better](https://xkcd.com/2916/#xt=4&yt=53&v=739) |
[Fan power](https://xkcd.com/2916/#xt=4&yt=19&v=329) |
[Not a transistor](https://xkcd.com/2916/#xt=8&yt=20&v=291) |
[Cat Sort](https://xkcd.com/2916/#xt=4&yt=30&v=466) |
[Rotatory press](https://xkcd.com/2916/#xt=6&yt=30&v=446) |
[Filter 8](https://xkcd.com/2916/#xt=8&yt=69&v=947) |
[Don't even worry about it](https://xkcd.com/2916/#xt=9&yt=59&v=814) |
[just hoping someone didn't sort the input](https://xkcd.com/2916/#xt=7&yt=68&v=921) |
[The gears that power the tubes](https://xkcd.com/2916/#xt=6&yt=53&v=740) |
[Let's see how well this works on the big one](https://xkcd.com/2916/#xt=3&yt=52&v=727) |
[Just Blue, No Garbage, Maybe](https://xkcd.com/2916/#xt=4&yt=64&v=879) |
[Potential Energy for my Potential Friends, Kinetic Energy for my Real Friends ](https://xkcd.com/2916/#xt=7&yt=67&v=917) |
[double loop](https://xkcd.com/2916/#xt=7&yt=15&v=214) |
[Triforce Rules](https://xkcd.com/2916/#xt=11&yt=9&v=151) |
[Nope](https://xkcd.com/2916/#xt=10&yt=21&v=359) |
[rgb](https://xkcd.com/2916/#xt=9&yt=46&v=658) |
[YelloGreenPerfect](https://xkcd.com/2916/#xt=10&yt=31&v=473) |
[bouncy](https://xkcd.com/2916/#xt=2&yt=1&v=25) |
[99% accurate sorting environment](https://xkcd.com/2916/#xt=2&yt=45&v=643) |
[null](https://xkcd.com/2916/#xt=2&yt=37&v=542) |
[inclined planes](https://xkcd.com/2916/#xt=1&yt=17&v=203) |
[Up N Around launcher](https://xkcd.com/2916/#xt=8&yt=33&v=488) |
[I seriously doubt this pillow fort is up to code](https://xkcd.com/2916/#xt=0&yt=47&v=654) |
[cyclotron radiation](https://xkcd.com/2916/#xt=11&yt=26&v=405) |
[mechanical relay](https://xkcd.com/2916/#xt=2&yt=70&v=960) |
[Bring forth the Holy Handgrenade!](https://xkcd.com/2916/#xt=0&yt=40&v=587) |
[Easter MONDAY at IKEA](https://xkcd.com/2916/#xt=9&yt=39&v=558) |
[Ball engine](https://xkcd.com/2916/#xt=7&yt=45&v=651) |
[I need to stop why cant i stop](https://xkcd.com/2916/#xt=10&yt=14&v=248) |
[space oddity](https://xkcd.com/2916/#xt=3&yt=10&v=158) |
[tuned bricks](https://xkcd.com/2916/#xt=4&yt=47&v=690) |
[swish!](https://xkcd.com/2916/#xt=1&yt=40&v=583) |
[really simple machine](https://xkcd.com/2916/#xt=6&yt=14&v=188) |
[makeshift Particle accelerator](https://xkcd.com/2916/#xt=11&yt=3&v=62) |
[Glorious](https://xkcd.com/2916/#xt=9&yt=44&v=621) |
[sorting station](https://xkcd.com/2916/#xt=7&yt=53&v=741) |
[Mostly Harmless](https://xkcd.com/2916/#xt=4&yt=18&v=318) |
[Training the new guy](https://xkcd.com/2916/#xt=10&yt=33&v=494) |
[if at first you don't succeed...](https://xkcd.com/2916/#xt=8&yt=17&v=258) |
[Measure once, Sort Twice](https://xkcd.com/2916/#xt=8&yt=68&v=898) |
[sortery](https://xkcd.com/2916/#xt=2&yt=61&v=840) |
[Why Mess with Perfection?](https://xkcd.com/2916/#xt=1&yt=62&v=858) |
[Safe in our pillow fort](https://xkcd.com/2916/#xt=6&yt=34&v=498) |
[autocollider](https://xkcd.com/2916/#xt=2&yt=9&v=130) |
[The Jetpack squirrels lair](https://xkcd.com/2916/#xt=3&yt=5&v=52) |
[trans rights](https://xkcd.com/2916/#xt=4&yt=14&v=249) |
[Turbo](https://xkcd.com/2916/#xt=2&yt=63&v=867) |
[pipe-works](https://xkcd.com/2916/#xt=5&yt=44&v=631) |
[Whose Idea was it to let the cats in here?](https://xkcd.com/2916/#xt=7&yt=35&v=514) |
[maximum speed](https://xkcd.com/2916/#xt=7&yt=57&v=792) |
[Looks so](https://xkcd.com/2916/#xt=2&yt=62&v=860) |
[Use the forcefields](https://xkcd.com/2916/#xt=4&yt=1&v=21) |
[Ich bin ein Berliner](https://xkcd.com/2916/#xt=11&yt=54&v=748) |
[lunar lander?](https://xkcd.com/2916/#xt=2&yt=27&v=408) |
[The Squirrel Overseer](https://xkcd.com/2916/#xt=10&yt=2&v=93) |
[The Bonk Mech](https://xkcd.com/2916/#xt=9&yt=7&v=115) |
[scintillae](https://xkcd.com/2916/#xt=5&yt=13&v=229) |
[cyclone](https://xkcd.com/2916/#xt=3&yt=14&v=228) |
[Spin to win](https://xkcd.com/2916/#xt=2&yt=50&v=705) |
[flutterpellets](https://xkcd.com/2916/#xt=6&yt=20&v=342) |
[crossing guard](https://xkcd.com/2916/#xt=5&yt=52&v=723) |
[Don't Settle For Simple](https://xkcd.com/2916/#xt=5&yt=32&v=474) |
[Order vs chaos](https://xkcd.com/2916/#xt=7&yt=44&v=637) |
[unsteady stack](https://xkcd.com/2916/#xt=6&yt=7&v=110) |
[highly unsafe](https://xkcd.com/2916/#xt=1&yt=43&v=623) |
[Windsort and the squirrel guard](https://xkcd.com/2916/#xt=8&yt=12&v=189) |
[Pinball whiskers](https://xkcd.com/2916/#xt=0&yt=65&v=887) |
[bonk industries](https://xkcd.com/2916/#xt=0&yt=18&v=238) |
[They call it dunamancy](https://xkcd.com/2916/#xt=3&yt=38&v=565) |
[Cross Purposes](https://xkcd.com/2916/#xt=9&yt=2&v=83) |
[Trust me, I know what I'm doing!](https://xkcd.com/2916/#xt=3&yt=63&v=868) |
[octosep](https://xkcd.com/2916/#xt=4&yt=44&v=630) |
[Fan-Tastic?](https://xkcd.com/2916/#xt=7&yt=27&v=417) |
[at its heart, the machine requires a gentle touch](https://xkcd.com/2916/#xt=6&yt=70&v=956) |
[totally worth 30 min of my time](https://xkcd.com/2916/#xt=6&yt=66&v=909) |
[party](https://xkcd.com/2916/#xt=4&yt=61&v=842) |
[Shooting Stars](https://xkcd.com/2916/#xt=6&yt=59&v=817) |
[guided whoosh ](https://xkcd.com/2916/#xt=5&yt=49&v=696) |
[circling the drain](https://xkcd.com/2916/#xt=7&yt=62&v=857) |
[Dual-Bladed](https://xkcd.com/2916/#xt=9&yt=64&v=874) |
[it works](https://xkcd.com/2916/#xt=5&yt=16&v=272) |
[Bonko sort](https://xkcd.com/2916/#xt=3&yt=10&v=207) |
[4-panel comic: sea-saw bun](https://xkcd.com/2916/#xt=9&yt=62&v=849) |
[Still not sure how Prisms work](https://xkcd.com/2916/#xt=10&yt=26&v=403) |
[loops](https://xkcd.com/2916/#xt=5&yt=42&v=605) |
[bouncesort](https://xkcd.com/2916/#xt=7&yt=46&v=660) |
[Balanced](https://xkcd.com/2916/#xt=2&yt=53&v=737) |
[Uncontrolled Launch?](https://xkcd.com/2916/#xt=5&yt=63&v=870) |
[good enough](https://xkcd.com/2916/#xt=10&yt=16&v=280) |
[Oscillation circulation](https://xkcd.com/2916/#xt=10&yt=64&v=873) |
[9](https://xkcd.com/2916/#xt=9&yt=57&v=790) |
[Rainbow Pachinko](https://xkcd.com/2916/#xt=9&yt=52&v=730) |
[Liquid Metal Playground](https://xkcd.com/2916/#xt=8&yt=46&v=659) |
[a center point that isnt centered](https://xkcd.com/2916/#xt=9&yt=54&v=757) |
[Overly Complicated work of art](https://xkcd.com/2916/#xt=1&yt=13&v=177) |
[wind tunnels](https://xkcd.com/2916/#xt=2&yt=66&v=904) |
[I Don't think that's regulation fencing](https://xkcd.com/2916/#xt=11&yt=48&v=676) |
[why? good question, i'm not sure either](https://xkcd.com/2916/#xt=1&yt=35&v=497) |
[fractional distillation](https://xkcd.com/2916/#xt=5&yt=39&v=576) |
[MIx and unmixer](https://xkcd.com/2916/#xt=6&yt=51&v=714) |
[hammertime](https://xkcd.com/2916/#xt=3&yt=4&v=44) |
[slidesnfans](https://xkcd.com/2916/#xt=5&yt=54&v=754) |
[meowamid outside the bonker forge](https://xkcd.com/2916/#xt=5&yt=46&v=652) |
[The Great Attractor](https://xkcd.com/2916/#xt=5&yt=23&v=367) |
[treadmill of life](https://xkcd.com/2916/#xt=11&yt=37&v=552) |
[faultrap](https://xkcd.com/2916/#xt=2&yt=42&v=602) |
[OnlyFans](https://xkcd.com/2916/#xt=3&yt=0&v=7) |
[the sword-split stochastic bonker](https://xkcd.com/2916/#xt=1&yt=31&v=424) |
[arcane ballpit magicks](https://xkcd.com/2916/#xt=6&yt=13&v=183) |
[At last!!](https://xkcd.com/2916/#xt=8&yt=55&v=782) |
[CERn](https://xkcd.com/2916/#xt=11&yt=51&v=700) |
[lax Lullaby](https://xkcd.com/2916/#xt=10&yt=39&v=573) |
[Loop De Loop of Henle](https://xkcd.com/2916/#xt=5&yt=68&v=936) |
[the squirrel armada](https://xkcd.com/2916/#xt=6&yt=17&v=218) |
[Double helix](https://xkcd.com/2916/#xt=0&yt=70&v=946) |
[cross](https://xkcd.com/2916/#xt=11&yt=22&v=361) |
[530 560nM sorting](https://xkcd.com/2916/#xt=4&yt=4&v=53) |
[Diabolical Simplicity](https://xkcd.com/2916/#xt=6&yt=22&v=351) |
[The most crucial part of the machine](https://xkcd.com/2916/#xt=11&yt=52&v=732) |
[Helicopter Assistance](https://xkcd.com/2916/#xt=1&yt=39&v=569) |
[Hop Skip and a Jump](https://xkcd.com/2916/#xt=6&yt=48&v=679) |
[Drink's on the house](https://xkcd.com/2916/#xt=8&yt=30&v=469) |
[Citsinimreted Ylbaborp](https://xkcd.com/2916/#xt=5&yt=27&v=415) |
[Error-correcting Sword sort](https://xkcd.com/2916/#xt=6&yt=58&v=805) |
[This should be able to re-route some wrong-colored inputs](https://xkcd.com/2916/#xt=6&yt=67&v=929) |
[you love bouncing balls don't you](https://xkcd.com/2916/#xt=2&yt=29&v=444) |
[backyard particle accelerator](https://xkcd.com/2916/#xt=9&yt=5&v=92) |
[whooshbonk](https://xkcd.com/2916/#xt=8&yt=19&v=288) |
[Hijinks Ensue](https://xkcd.com/2916/#xt=6&yt=64&v=876) |
[blow-hard-help](https://xkcd.com/2916/#xt=5&yt=13&v=224) |
[trans entertainment machine aka "they're helping!"](https://xkcd.com/2916/#xt=5&yt=47&v=667) |
[Oops! All BonkS!](https://xkcd.com/2916/#xt=9&yt=9&v=216) |
[One Brick wonder](https://xkcd.com/2916/#xt=11&yt=14&v=262) |
[Please do not the cat](https://xkcd.com/2916/#xt=8&yt=47&v=674) |
[Triple Trouble](https://xkcd.com/2916/#xt=5&yt=26&v=399) |
[Black Hole fan](https://xkcd.com/2916/#xt=0&yt=4&v=20) |
[Prism Pachinko](https://xkcd.com/2916/#xt=0&yt=38&v=562) |
[woodhammer 40000](https://xkcd.com/2916/#xt=5&yt=13&v=222) |
[the unbearable lightness of being yellow](https://xkcd.com/2916/#xt=0&yt=6&v=43) |
[flickshot](https://xkcd.com/2916/#xt=9&yt=35&v=518) |
[Forge](https://xkcd.com/2916/#xt=0&yt=29&v=409) |
[blowfish](https://xkcd.com/2916/#xt=1&yt=1&v=19) |
[The Mistakeinator](https://xkcd.com/2916/#xt=11&yt=8&v=145) |
[Flow](https://xkcd.com/2916/#xt=10&yt=28&v=448) |
[the horror](https://xkcd.com/2916/#xt=8&yt=18&v=259) |
[flycatcher](https://xkcd.com/2916/#xt=2&yt=5&v=51) |
[Dude! I told you to stop letting your cat on the table!](https://xkcd.com/2916/#xt=11&yt=36&v=524) |
[quarantine](https://xkcd.com/2916/#xt=9&yt=10&v=168) |
[Goldberg Catcher](https://xkcd.com/2916/#xt=8&yt=28&v=430) |
[Undoing](https://xkcd.com/2916/#xt=11&yt=31&v=459) |
[would Maxwell be proud?](https://xkcd.com/2916/#xt=1&yt=48&v=686) |
[inefficient yet sufficient](https://xkcd.com/2916/#xt=2&yt=20&v=313) |
[null](https://xkcd.com/2916/#xt=0&yt=65&v=888) |
[Air conditioning unit](https://xkcd.com/2916/#xt=2&yt=13&v=187) |
[more speed, fewer collisions](https://xkcd.com/2916/#xt=6&yt=11&v=150) |
[waterwheel](https://xkcd.com/2916/#xt=3&yt=61&v=843) |
[Probable Determinism: The Ride](https://xkcd.com/2916/#xt=4&yt=7&v=107) |
[I miss LineRider](https://xkcd.com/2916/#xt=3&yt=17&v=285) |
[merge and split](https://xkcd.com/2916/#xt=3&yt=67&v=927) |
[Repulsed](https://xkcd.com/2916/#xt=0&yt=3&v=15) |
[aqueducts](https://xkcd.com/2916/#xt=11&yt=36&v=523) |
[Airways](https://xkcd.com/2916/#xt=7&yt=40&v=574) |
[s is for... safety?](https://xkcd.com/2916/#xt=4&yt=55&v=766) |
[sway](https://xkcd.com/2916/#xt=9&yt=3&v=81) |
[Wombleton 3](https://xkcd.com/2916/#xt=5&yt=71&v=966) |
[two factor sortification](https://xkcd.com/2916/#xt=1&yt=28&v=382) |
[tree house](https://xkcd.com/2916/#xt=2&yt=38&v=564) |
[Harder Than it looks](https://xkcd.com/2916/#xt=2&yt=28&v=433) |
[Quantum Computer](https://xkcd.com/2916/#xt=0&yt=49&v=672) |
[With No due respect to Gravity](https://xkcd.com/2916/#xt=4&yt=48&v=673) |
[an actual honest attempt to sort the balls](https://xkcd.com/2916/#xt=5&yt=12&v=209) |
[Egg Drop Experiment](https://xkcd.com/2916/#xt=4&yt=16&v=266) |
[Take This](https://xkcd.com/2916/#xt=2&yt=4&v=42) |
[so fresh and so clean](https://xkcd.com/2916/#xt=6&yt=65&v=890) |
[Space Cadet](https://xkcd.com/2916/#xt=1&yt=16&v=176) |
[scaffolding](https://xkcd.com/2916/#xt=3&yt=42&v=603) |
[BONK](https://xkcd.com/2916/#xt=10&yt=4&v=85) |
[Quality assurance](https://xkcd.com/2916/#xt=6&yt=41&v=594) |
[Fan wars ii: last stand of the hammer buns](https://xkcd.com/2916/#xt=9&yt=14&v=235) |
[sorting errors get the squirrel pit](https://xkcd.com/2916/#xt=6&yt=46&v=666) |
[keepin' it cool](https://xkcd.com/2916/#xt=3&yt=58&v=808) |
[Cogwheel Clockworks](https://xkcd.com/2916/#xt=11&yt=6&v=87) |
[Mind over Matter](https://xkcd.com/2916/#xt=10&yt=55&v=773) |
[hark! the wizard hath cast a spell of momentum cancellation!](https://xkcd.com/2916/#xt=1&yt=34&v=496) |
[A-Mazed](https://xkcd.com/2916/#xt=4&yt=45&v=640) |
[Apple Pie Shower](https://xkcd.com/2916/#xt=2&yt=58&v=809) |
[hail ho hole](https://xkcd.com/2916/#xt=2&yt=56&v=778) |
[Peas in pipes](https://xkcd.com/2916/#xt=11&yt=19&v=296) |
[Secrets](https://xkcd.com/2916/#xt=2&yt=17&v=236) |
[Led Zeppelin Meets ACDC and Fans](https://xkcd.com/2916/#xt=4&yt=5&v=57) |
[double crossing streams](https://xkcd.com/2916/#xt=7&yt=69&v=938) |
[5$ budget pinball](https://xkcd.com/2916/#xt=5&yt=10&v=166) |
[physical vs aerial](https://xkcd.com/2916/#xt=9&yt=72&v=978) |
[doohickey'); DROP TABLE machines;--](https://xkcd.com/2916/#xt=2&yt=47&v=669) |
[Open-minded sauron](https://xkcd.com/2916/#xt=3&yt=70&v=953) |
[Object Identification machine](https://xkcd.com/2916/#xt=0&yt=72&v=972) |
[a little basic](https://xkcd.com/2916/#xt=2&yt=19&v=301) |
[Butterflies In the Stomache](https://xkcd.com/2916/#xt=3&yt=37&v=544) |
[oh behave](https://xkcd.com/2916/#xt=4&yt=43&v=629) |
[completely unrelated events (right)](https://xkcd.com/2916/#xt=0&yt=22&v=307) |
[Roundabout and starightforward](https://xkcd.com/2916/#xt=8&yt=42&v=609) |
[The tower](https://xkcd.com/2916/#xt=9&yt=12&v=196) |
[Highway to the](https://xkcd.com/2916/#xt=7&yt=30&v=443) |
[Many a Boink](https://xkcd.com/2916/#xt=8&yt=8&v=124) |
[Bounciness testing](https://xkcd.com/2916/#xt=1&yt=36&v=538) |
[The Taco Bell Experience](https://xkcd.com/2916/#xt=8&yt=10&v=159) |
[Bogosort mk2](https://xkcd.com/2916/#xt=9&yt=29&v=452) |
[Telekinesy is real](https://xkcd.com/2916/#xt=1&yt=68&v=932) |
[....I trust you.](https://xkcd.com/2916/#xt=4&yt=56&v=765) |
[*Almost* enough room](https://xkcd.com/2916/#xt=0&yt=58&v=811) |
[Some of the Kinetic energy comes from bonks](https://xkcd.com/2916/#xt=8&yt=34&v=500) |
[Powered by fans](https://xkcd.com/2916/#xt=7&yt=65&v=891) |
[culling the greens from the chaff](https://xkcd.com/2916/#xt=11&yt=64&v=861) |
[swatsort](https://xkcd.com/2916/#xt=8&yt=52&v=729) |
[don't worry; they're trained professionals](https://xkcd.com/2916/#xt=1&yt=65&v=900) |
[null](https://xkcd.com/2916/#xt=10&yt=32&v=479) |
[Chim Chim Cher-ee](https://xkcd.com/2916/#xt=4&yt=55&v=767) |
[Barroom billiards](https://xkcd.com/2916/#xt=9&yt=23&v=373) |
[platformer](https://xkcd.com/2916/#xt=9&yt=32&v=483) |
[pillow power](https://xkcd.com/2916/#xt=0&yt=64&v=884) |
[Squirrel's Industrial Revolution](https://xkcd.com/2916/#xt=1&yt=30&v=422) |
[A Fan of Kinematics](https://xkcd.com/2916/#xt=4&yt=26&v=411) |
[SLOw down](https://xkcd.com/2916/#xt=6&yt=29&v=425) |
[saggy switchback](https://xkcd.com/2916/#xt=11&yt=30&v=439) |
[the fan guy](https://xkcd.com/2916/#xt=1&yt=63&v=882) |
[hit](https://xkcd.com/2916/#xt=11&yt=1&v=23) |
[ramp](https://xkcd.com/2916/#xt=6&yt=40&v=584) |
[The Snail](https://xkcd.com/2916/#xt=10&yt=51&v=712) |
[y = -cos(2x)](https://xkcd.com/2916/#xt=5&yt=56&v=779) |
[mass spectrometry and bun wizardry](https://xkcd.com/2916/#xt=6&yt=69&v=939) |
[Multiphasic air filter](https://xkcd.com/2916/#xt=10&yt=62&v=851) |
[Physics off](https://xkcd.com/2916/#xt=5&yt=4&v=63) |
[Blacksmith's Lament](https://xkcd.com/2916/#xt=0&yt=18&v=237) |
[KAPOW](https://xkcd.com/2916/#xt=9&yt=6&v=97) |
[Earth, Fire, Air That was the Four... Wait ...](https://xkcd.com/2916/#xt=1&yt=47&v=670) |
[CROSSOVER FANFIC](https://xkcd.com/2916/#xt=6&yt=5&v=77) |
[a touchy topic](https://xkcd.com/2916/#xt=2&yt=10&v=147) |
[I feel like the loop the loop  was unnecessary but made it more interesting](https://xkcd.com/2916/#xt=2&yt=52&v=725) |
[the kitty highway :3](https://xkcd.com/2916/#xt=5&yt=35&v=529) |
[How did the Squirrel get that?](https://xkcd.com/2916/#xt=0&yt=16&v=180) |
[Interesting... Umbrella](https://xkcd.com/2916/#xt=0&yt=34&v=493) |
[Average Boston Road](https://xkcd.com/2916/#xt=5&yt=25&v=397) |
[Another One Bites The Dust](https://xkcd.com/2916/#xt=1&yt=71&v=962) |
[spin to win!](https://xkcd.com/2916/#xt=6&yt=24&v=385) |
[Pachinko](https://xkcd.com/2916/#xt=10&yt=3&v=79) |
[Autosorter](https://xkcd.com/2916/#xt=10&yt=48&v=682) |
[The Crazy intersection](https://xkcd.com/2916/#xt=8&yt=22&v=362) |
[old cabin](https://xkcd.com/2916/#xt=10&yt=23&v=378) |
[push and pull](https://xkcd.com/2916/#xt=7&yt=5&v=88) |
[If I had more space, I would've made a smaller machine](https://xkcd.com/2916/#xt=10&yt=38&v=556) |
[Mass spectrometer](https://xkcd.com/2916/#xt=9&yt=26&v=404) |
[No Funnel Allowed](https://xkcd.com/2916/#xt=5&yt=13&v=226) |
[Squirrels all the way down](https://xkcd.com/2916/#xt=6&yt=26&v=406) |
[lawless roundabout](https://xkcd.com/2916/#xt=10&yt=11&v=194) |
[Several things happening at once](https://xkcd.com/2916/#xt=10&yt=35&v=522) |
[1.. 2.. 3.. crunch](https://xkcd.com/2916/#xt=4&yt=24&v=384) |
[siege on the seas](https://xkcd.com/2916/#xt=2&yt=31&v=462) |
[Bonks and fans](https://xkcd.com/2916/#xt=3&yt=3&v=33) |
[fanomenal accuracy](https://xkcd.com/2916/#xt=6&yt=43&v=626) |
[[design Approved by the Squirrel Council. See subsection 45B red-green-ball-sort-design 2BA-LL]](https://xkcd.com/2916/#xt=10&yt=66&v=912) |
[pattern recognition](https://xkcd.com/2916/#xt=2&yt=25&v=366) |
[am i doing this right?](https://xkcd.com/2916/#xt=5&yt=18&v=328) |
[Black hole plinko](https://xkcd.com/2916/#xt=10&yt=42&v=608) |
[Truss the process 3.0](https://xkcd.com/2916/#xt=2&yt=73&v=980) |
[clockwork lemons](https://xkcd.com/2916/#xt=3&yt=72&v=981) |
[Hold it Right there](https://xkcd.com/2916/#xt=1&yt=55&v=768) |
[Raindrops and sunshine](https://xkcd.com/2916/#xt=6&yt=71&v=967) |
[Over Complication](https://xkcd.com/2916/#xt=5&yt=9&v=164) |
[Agile Development](https://xkcd.com/2916/#xt=8&yt=70&v=951) |
[how2colorsort](https://xkcd.com/2916/#xt=3&yt=22&v=341) |
[BUBBLES](https://xkcd.com/2916/#xt=10&yt=72&v=979) |
[A Game of swords](https://xkcd.com/2916/#xt=10&yt=46&v=657) |
[The magic of yellow](https://xkcd.com/2916/#xt=11&yt=55&v=774) |
[RGB AirBounce Sorter](https://xkcd.com/2916/#xt=3&yt=57&v=799) |
[Strictly speaking, the loop-de-loop was probably unnecessary](https://xkcd.com/2916/#xt=3&yt=43&v=616) |
[Squirrel cage centrifuge](https://xkcd.com/2916/#xt=8&yt=49&v=693) |
[Good Thing I'm Not COlorblind](https://xkcd.com/2916/#xt=9&yt=16&v=273) |
[sword dodge](https://xkcd.com/2916/#xt=0&yt=11&v=105) |
[Dispertion](https://xkcd.com/2916/#xt=11&yt=30&v=515) |
[Why do the reds get to have all the fun?](https://xkcd.com/2916/#xt=6&yt=45&v=650) |
[Ball-Effect Transistor](https://xkcd.com/2916/#xt=10&yt=69&v=948) |
[I Ship it](https://xkcd.com/2916/#xt=7&yt=5&v=90) |
[Redefining Down](https://xkcd.com/2916/#xt=8&yt=38&v=525) |
[probably definitely probably](https://xkcd.com/2916/#xt=4&yt=6&v=74) |
[Airflow](https://xkcd.com/2916/#xt=8&yt=61&v=846) |
[Turbine](https://xkcd.com/2916/#xt=1&yt=61&v=841) |
[mass_Separation_maze](https://xkcd.com/2916/#xt=1&yt=37&v=541) |
[The King's Wisdom](https://xkcd.com/2916/#xt=1&yt=53&v=736) |
[TILT](https://xkcd.com/2916/#xt=2&yt=70&v=954) |
[⚔️⚔️⚔️🗡️🗡️🗡️⚔️⚔️⚔️](https://xkcd.com/2916/#xt=2&yt=59&v=821) |
[Just imitating someone else's maze](https://xkcd.com/2916/#xt=3&yt=44&v=641) |
[arthur](https://xkcd.com/2916/#xt=7&yt=28&v=429) |
[Second](https://xkcd.com/2916/#xt=0&yt=20&v=302) |
[taking the scenic route](https://xkcd.com/2916/#xt=11&yt=65&v=902) |
[Wind and Planks](https://xkcd.com/2916/#xt=11&yt=2&v=48) |
[Path of the Fireflies](https://xkcd.com/2916/#xt=3&yt=9&v=144) |
[Cat Tree](https://xkcd.com/2916/#xt=0&yt=62&v=859) |
[ciurus carolinensis](https://xkcd.com/2916/#xt=0&yt=12&v=123) |
[among us](https://xkcd.com/2916/#xt=10&yt=0&v=37) |
[The Shortest Distance From Point A To Point B](https://xkcd.com/2916/#xt=0&yt=23&v=310) |
[i overdid the props kinda](https://xkcd.com/2916/#xt=7&yt=19&v=263) |
[pipes](https://xkcd.com/2916/#xt=8&yt=54&v=760) |
[Set Sail towards Adventure!](https://xkcd.com/2916/#xt=3&yt=39&v=566) |
[Livin' on the edge](https://xkcd.com/2916/#xt=8&yt=9&v=133) |
[Spiral](https://xkcd.com/2916/#xt=0&yt=27&v=368) |
[kitty korner](https://xkcd.com/2916/#xt=7&yt=73&v=992) |
[artisanal perfect filter](https://xkcd.com/2916/#xt=4&yt=73&v=989) |
[The last arcade has closed forever](https://xkcd.com/2916/#xt=6&yt=73&v=991) |
[ANOTHER LAW](https://xkcd.com/2916/#xt=11&yt=71&v=986) |
[aw man](https://xkcd.com/2916/#xt=8&yt=74&v=1003) |
[wind tunels](https://xkcd.com/2916/#xt=0&yt=73&v=987) |
[homestar runner and strong bad](https://xkcd.com/2916/#xt=8&yt=73&v=993) |
[the long way round](https://xkcd.com/2916/#xt=0&yt=74&v=996) |
[Particle accelerator?](https://xkcd.com/2916/#xt=11&yt=72&v=983) |
[XK Escher](https://xkcd.com/2916/#xt=3&yt=74&v=999) |
[I'm not a very good juggler](https://xkcd.com/2916/#xt=2&yt=74&v=998) |
[!yttik](https://xkcd.com/2916/#xt=4&yt=74&v=1000) |
[disco party](https://xkcd.com/2916/#xt=1&yt=73&v=995) |
[reasonable colour-sorter](https://xkcd.com/2916/#xt=6&yt=72&v=985) |
[Will it sort?](https://xkcd.com/2916/#xt=11&yt=73&v=994) |
[The crossroads](https://xkcd.com/2916/#xt=8&yt=72&v=984) |
[selecta](https://xkcd.com/2916/#xt=3&yt=73&v=988) |
[ψήφος](https://xkcd.com/2916/#xt=5&yt=73&v=990) |
[return of the spider](https://xkcd.com/2916/#xt=7&yt=74&v=1002) |
[Bunny paradise ](https://xkcd.com/2916/#xt=11&yt=71&v=982) |
[Combine and Separate](https://xkcd.com/2916/#xt=5&yt=74&v=1001) |
[recirculator](https://xkcd.com/2916/#xt=1&yt=74&v=997) |
<<<<<<< Updated upstream
[inertial vs gravitational mass](https://xkcd.com/2916/#xt=9&yt=74&v=1007) |
[Chaos sorter](https://xkcd.com/2916/#xt=10&yt=74&v=1011) |
[Fan of Curves](https://xkcd.com/2916/#xt=0&yt=75&v=1012) |
[curvaceous curves](https://xkcd.com/2916/#xt=7&yt=75&v=1008) |
[Icarus](https://xkcd.com/2916/#xt=9&yt=73&v=1004) |
[Gyratory system](https://xkcd.com/2916/#xt=10&yt=74&v=1010) |
[Yellow is my favorite color](https://xkcd.com/2916/#xt=1&yt=75&v=1013) |
[zipzopzap](https://xkcd.com/2916/#xt=11&yt=74&v=1009) |
[The Turtle Moves](https://xkcd.com/2916/#xt=6&yt=74&v=1006) |
[Safety First 🛡](https://xkcd.com/2916/#xt=10&yt=73&v=1005) |
=======
[The thingamajigger](https://xkcd.com/2916/#xt=10&yt=84&v=1129) |
[probably deterministic parade](https://xkcd.com/2916/#xt=3&yt=77&v=1045) |
[ohno](https://xkcd.com/2916/#xt=3&yt=79&v=1064) |
[As the walls crumble](https://xkcd.com/2916/#xt=3&yt=75&v=1014) |
[swat](https://xkcd.com/2916/#xt=8&yt=85&v=1141) |
[Centrifugal Force Is Real (In A Rotating Frame Of Reference)](https://xkcd.com/2916/#xt=9&yt=86&v=1147) |
[sorting](https://xkcd.com/2916/#xt=2&yt=86&v=1154) |
[It fixes your mistakes.](https://xkcd.com/2916/#xt=8&yt=77&v=1048) |
[Fan Fanatic](https://xkcd.com/2916/#xt=6&yt=78&v=1053) |
[Premium Blend](https://xkcd.com/2916/#xt=11&yt=81&v=1093) |
[Uncooperative red](https://xkcd.com/2916/#xt=2&yt=81&v=1085) |
[MasterpieceifIdosaysomyself](https://xkcd.com/2916/#xt=9&yt=79&v=1071) |
[Stability Test](https://xkcd.com/2916/#xt=9&yt=78&v=1050) |
[Apologies to the next person](https://xkcd.com/2916/#xt=1&yt=80&v=1072) |
[Electric Kittens](https://xkcd.com/2916/#xt=7&yt=82&v=1098) |
[color winds](https://xkcd.com/2916/#xt=2&yt=77&v=1042) |
[the altar](https://xkcd.com/2916/#xt=11&yt=83&v=1119) |
[mass spectrometer](https://xkcd.com/2916/#xt=5&yt=83&v=1110) |
[Hercules vs the hydra](https://xkcd.com/2916/#xt=11&yt=76&v=1022) |
[BLUE Quality control by cat](https://xkcd.com/2916/#xt=1&yt=77&v=1038) |
[red touches yellow, re-sort a fellow.](https://xkcd.com/2916/#xt=8&yt=82&v=1097) |
[i warned you about the stairs](https://xkcd.com/2916/#xt=10&yt=77&v=1019) |
[Stay in your lane](https://xkcd.com/2916/#xt=9&yt=75&v=1024) |
[Just another sorter](https://xkcd.com/2916/#xt=8&yt=81&v=1091) |
[Fan of Curves](https://xkcd.com/2916/#xt=0&yt=75&v=1012) |
[fewer bonks than expected](https://xkcd.com/2916/#xt=5&yt=86&v=1151) |
[prism pairs](https://xkcd.com/2916/#xt=10&yt=86&v=1146) |
[Earth wind.. no fire](https://xkcd.com/2916/#xt=3&yt=84&v=1126) |
[black hole sun](https://xkcd.com/2916/#xt=7&yt=77&v=1047) |
[Spherical Harmonics](https://xkcd.com/2916/#xt=2&yt=78&v=1057) |
[This is normal. Is this normal?](https://xkcd.com/2916/#xt=2&yt=76&v=1028) |
[Galton Board](https://xkcd.com/2916/#xt=8&yt=78&v=1051) |
[Boing lift separator](https://xkcd.com/2916/#xt=6&yt=79&v=1067) |
[Overflow drains](https://xkcd.com/2916/#xt=7&yt=86&v=1149) |
[The dragon!  The dragon!  The dragon!  The dragon! ...](https://xkcd.com/2916/#xt=1&yt=83&v=1106) |
[Gravitic Sorter](https://xkcd.com/2916/#xt=5&yt=81&v=1088) |
[Hungry Hungry Hippos](https://xkcd.com/2916/#xt=4&yt=79&v=1065) |
[Cat wheel](https://xkcd.com/2916/#xt=6&yt=84&v=1127) |
[Cat-Trifical Force](https://xkcd.com/2916/#xt=10&yt=78&v=1036) |
[haphazard is a compliment](https://xkcd.com/2916/#xt=3&yt=85&v=1136) |
[We're done here](https://xkcd.com/2916/#xt=10&yt=82&v=1096) |
[Superfast crossing](https://xkcd.com/2916/#xt=8&yt=80&v=1081) |
[dragonslayer](https://xkcd.com/2916/#xt=1&yt=81&v=1084) |
[Pressure separator](https://xkcd.com/2916/#xt=8&yt=84&v=1132) |
[oversimplified](https://xkcd.com/2916/#xt=3&yt=83&v=1108) |
[Well we Save a Bundle By Using the Red Stream to Drive a Turbine](https://xkcd.com/2916/#xt=3&yt=80&v=1074) |
[The Turtle Moves](https://xkcd.com/2916/#xt=6&yt=74&v=1006) |
[4 streams](https://xkcd.com/2916/#xt=9&yt=81&v=1094) |
[Icarus](https://xkcd.com/2916/#xt=9&yt=73&v=1004) |
[magic cup](https://xkcd.com/2916/#xt=4&yt=81&v=1087) |
[Could be worse](https://xkcd.com/2916/#xt=1&yt=82&v=1103) |
[The siege](https://xkcd.com/2916/#xt=3&yt=78&v=1056) |
[The hardest working cat in all the land](https://xkcd.com/2916/#xt=5&yt=84&v=1122) |
[I am the Lorax, I speak for the trees](https://xkcd.com/2916/#xt=4&yt=77&v=1043) |
[waning creativity, 2024 - Digital](https://xkcd.com/2916/#xt=11&yt=77&v=1023) |
[i feel buoyant about this one](https://xkcd.com/2916/#xt=4&yt=80&v=1080) |
[The Core (2003, colorized)](https://xkcd.com/2916/#xt=0&yt=86&v=1156) |
[inertial vs gravitational mass](https://xkcd.com/2916/#xt=9&yt=74&v=1007) |
[Home-Made Fusion Reactor](https://xkcd.com/2916/#xt=7&yt=76&v=1035) |
[Bestagon with squirrel, bunny and kitty.](https://xkcd.com/2916/#xt=7&yt=84&v=1128) |
[Doublesort](https://xkcd.com/2916/#xt=9&yt=83&v=1115) |
[my cup runneth under](https://xkcd.com/2916/#xt=1&yt=79&v=1062) |
[there's an eclipse but you still have to work](https://xkcd.com/2916/#xt=7&yt=79&v=1066) |
[grinds my gears](https://xkcd.com/2916/#xt=0&yt=79&v=1060) |
[all floating sorts](https://xkcd.com/2916/#xt=10&yt=75&v=1018) |
[You will not go to space today](https://xkcd.com/2916/#xt=2&yt=85&v=1135) |
[I lost a bonk, do you have it?](https://xkcd.com/2916/#xt=4&yt=76&v=1033) |
[To Influence](https://xkcd.com/2916/#xt=9&yt=77&v=1046) |
[Unite and divide](https://xkcd.com/2916/#xt=7&yt=80&v=1076) |
[zoooooooooom](https://xkcd.com/2916/#xt=11&yt=85&v=1144) |
[the wind in the pillows](https://xkcd.com/2916/#xt=8&yt=86&v=1148) |
[Statistically Significant](https://xkcd.com/2916/#xt=4&yt=82&v=1101) |
[monday morning brain scan](https://xkcd.com/2916/#xt=9&yt=80&v=1082) |
[Wheels of fortune](https://xkcd.com/2916/#xt=5&yt=75&v=1017) |
[luxury cats-only hotel](https://xkcd.com/2916/#xt=4&yt=78&v=1054) |
[probably deterministic park](https://xkcd.com/2916/#xt=1&yt=86&v=1155) |
[Maxwell's Daemon](https://xkcd.com/2916/#xt=4&yt=84&v=1123) |
[Semi JUMP](https://xkcd.com/2916/#xt=11&yt=84&v=1130) |
[Gravity assisted particle accelerator](https://xkcd.com/2916/#xt=0&yt=85&v=1133) |
[three stage filter](https://xkcd.com/2916/#xt=11&yt=75&v=1021) |
[Easypeasylemonsqueezy](https://xkcd.com/2916/#xt=6&yt=76&v=1034) |
[i shall name it... "this marvelous device"!](https://xkcd.com/2916/#xt=0&yt=81&v=1083) |
[there he is!](https://xkcd.com/2916/#xt=0&yt=80&v=1063) |
[Three Yellow Crossovers](https://xkcd.com/2916/#xt=10&yt=81&v=1092) |
[Don't mind the bird](https://xkcd.com/2916/#xt=6&yt=75&v=1025) |
[the water pipes](https://xkcd.com/2916/#xt=2&yt=75&v=1015) |
[Flippin' Magnets. How do they work?](https://xkcd.com/2916/#xt=11&yt=79&v=1068) |
[Saboteur (or pushing the limits of cat hitboxes to potentially swat balls in adjacent machines)](https://xkcd.com/2916/#xt=11&yt=83&v=1121) |
[pneumonoultramicroscopicsilicovolcanoconiosis is a word](https://xkcd.com/2916/#xt=1&yt=85&v=1134) |
[Particle Motion](https://xkcd.com/2916/#xt=9&yt=85&v=1142) |
[float like a butterfly, sink like a stone](https://xkcd.com/2916/#xt=11&yt=86&v=1145) |
[that's not how you use them](https://xkcd.com/2916/#xt=8&yt=83&v=1114) |
[batter up!](https://xkcd.com/2916/#xt=0&yt=76&v=1030) |
[Red Mountain](https://xkcd.com/2916/#xt=11&yt=80&v=1077) |
[surprisingly good filter](https://xkcd.com/2916/#xt=9&yt=84&v=1131) |
[The factory](https://xkcd.com/2916/#xt=10&yt=76&v=1020) |
[Sometimes a lil green gets in the red, it's okay. And vice versa, but science ain't perfect.](https://xkcd.com/2916/#xt=6&yt=83&v=1112) |
[curvaceous curves](https://xkcd.com/2916/#xt=7&yt=75&v=1008) |
[flight of the bumblebees](https://xkcd.com/2916/#xt=5&yt=78&v=1055) |
[good job](https://xkcd.com/2916/#xt=5&yt=85&v=1138) |
[it's probably](https://xkcd.com/2916/#xt=8&yt=76&v=1040) |
[zoom](https://xkcd.com/2916/#xt=0&yt=78&v=1049) |
[I'll take you roundabout](https://xkcd.com/2916/#xt=5&yt=76&v=1027) |
[all the stuff i could've used](https://xkcd.com/2916/#xt=0&yt=77&v=1037) |
[rabbits' 4-corners machine](https://xkcd.com/2916/#xt=11&yt=78&v=1026) |
[Objective: 100% accuracy](https://xkcd.com/2916/#xt=7&yt=85&v=1140) |
[Cat's Cradle](https://xkcd.com/2916/#xt=5&yt=82&v=1099) |
[weelz within weelz](https://xkcd.com/2916/#xt=7&yt=81&v=1090) |
[precarious](https://xkcd.com/2916/#xt=10&yt=85&v=1143) |
[the premise of a very weird dystopian novel](https://xkcd.com/2916/#xt=2&yt=83&v=1107) |
[yellow get multiple chances, just because](https://xkcd.com/2916/#xt=2&yt=84&v=1124) |
[choose your own adventure](https://xkcd.com/2916/#xt=4&yt=75&v=1016) |
[I'll Stop Making Railguns when the railguns stop being the best solution to every engineering challenge](https://xkcd.com/2916/#xt=10&yt=83&v=1116) |
[that's them sorted...](https://xkcd.com/2916/#xt=4&yt=86&v=1152) |
[troy](https://xkcd.com/2916/#xt=5&yt=79&v=1059) |
[The Faucet](https://xkcd.com/2916/#xt=1&yt=84&v=1125) |
[Is it some kind of magic?](https://xkcd.com/2916/#xt=8&yt=75&v=1031) |
[Potato ](https://xkcd.com/2916/#xt=10&yt=80&v=1078) |
[red/yellow feline fractionator](https://xkcd.com/2916/#xt=6&yt=85&v=1139) |
[don't look for symbolism, i just like to see the balls float](https://xkcd.com/2916/#xt=0&yt=84&v=1120) |
[leap of faith](https://xkcd.com/2916/#xt=9&yt=82&v=1095) |
[RAGE AGAINST](https://xkcd.com/2916/#xt=6&yt=77&v=1041) |
[nine lives](https://xkcd.com/2916/#xt=1&yt=78&v=1058) |
[Why do we have all these fans, anyway?](https://xkcd.com/2916/#xt=0&yt=83&v=1105) |
[Particle accelerator](https://xkcd.com/2916/#xt=3&yt=86&v=1153) |
[Pareidolia](https://xkcd.com/2916/#xt=3&yt=81&v=1086) |
[the Prisms did a good job, probably.](https://xkcd.com/2916/#xt=9&yt=76&v=1039) |
[zipzopzap](https://xkcd.com/2916/#xt=11&yt=74&v=1009) |
[layer sorter](https://xkcd.com/2916/#xt=10&yt=79&v=1070) |
[not this way](https://xkcd.com/2916/#xt=7&yt=78&v=1052) |
[dangerous crossing](https://xkcd.com/2916/#xt=5&yt=77&v=1044) |
[byg-sort](https://xkcd.com/2916/#xt=3&yt=76&v=1032) |
[bonkers](https://xkcd.com/2916/#xt=2&yt=79&v=1061) |
[Hands free ](https://xkcd.com/2916/#xt=4&yt=85&v=1137) |
[Cats playground](https://xkcd.com/2916/#xt=7&yt=83&v=1113) |
[Gyratory system](https://xkcd.com/2916/#xt=10&yt=74&v=1010) |
[The bunny observes](https://xkcd.com/2916/#xt=6&yt=82&v=1111) |
[Brickout Blues](https://xkcd.com/2916/#xt=6&yt=80&v=1075) |
[Narrow margins](https://xkcd.com/2916/#xt=2&yt=80&v=1073) |
[Yellow is my favorite color](https://xkcd.com/2916/#xt=1&yt=75&v=1013) |
[Chaos sorter](https://xkcd.com/2916/#xt=10&yt=74&v=1011) |
[Singing in the rain](https://xkcd.com/2916/#xt=5&yt=80&v=1079) |
[greens are a pain](https://xkcd.com/2916/#xt=8&yt=79&v=1069) |
[professional pillow-fighting ring](https://xkcd.com/2916/#xt=11&yt=82&v=1118) |
[Only sort if you have to](https://xkcd.com/2916/#xt=6&yt=86&v=1150) |
[particle accelerator (too fast edition)](https://xkcd.com/2916/#xt=0&yt=82&v=1104) |
[hopefully only one green at a time](https://xkcd.com/2916/#xt=11&yt=82&v=1117) |
[emperor bun's wrath](https://xkcd.com/2916/#xt=6&yt=81&v=1089) |
[Safety First 🛡](https://xkcd.com/2916/#xt=10&yt=73&v=1005) |
[6-way intersection](https://xkcd.com/2916/#xt=2&yt=82&v=1102) |
[submission denied](https://xkcd.com/2916/#xt=4&yt=83&v=1109) |
[Berghain](https://xkcd.com/2916/#xt=1&yt=76&v=1029) |
[eeeeeeeeeeeee](https://xkcd.com/2916/#xt=3&yt=82&v=1100) |
