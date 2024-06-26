# incrediblexkcd

A celebration of xkcd comic 2916: [xkcd.com/2916](https://xkcd.com/2916)

![Machine](https://imgs.xkcd.com/comics/machine_2x.png)

If you're just here to search for published submissions, have a look at the
**[Permalinks](#Permalinks)** section at the bottom of this readme, or the file
[incrediblexkcd.csv](/incrediblexkcd.csv) which contains the ids, permalinks,
submission dates (in UTC timezone), and titles of all blueprints that have been
published on [xkcd.com](https://xkcd.com/2916).

---

## Update: Source Published!
see: [https://github.com/xkcd/incredible](https://github.com/xkcd/incredible)
and also check out insider Max Goodhart's excellent blog about the story behind
the machine and some of the details of implementation (and content moderation):
[https://chromakode.com/post/xkcd-machine/](https://chromakode.com/post/xkcd-machine/)

---

I found myself wondering if any of my submissions have been published (they
haven't) and wound up writing a small script to ingest the published data. My
best submission was called 'boing boom tschak' and, naturally, depicted
Kraftwerk on stage replete with their signature lightshow.

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

Feel free to run the bash script [getincrediblexkcd.sh](/getincrediblexkcd.sh)
yourself. It takes me about 3 minutes to run from scratch for ~1300 machines
(in which the bottleneck is the nearly ~3000 curl calls to download each
individual file), and 25 seconds to reprocess the same ~1300 machines if the
source files are already downloaded. You can halt the script at any time by
just pressing `CTRL-C` to send a SIGINT and it *should* exit gracefully. When
you run the script again you can use the argument `--reset` to delete all data
and start from scratch, or otherwise it should nominally pick up where it left
off. It also takes aruments `--help` to show usage, `--start` to choose a
machine version to start at (default 0) and `--jobs` to choose how many
parallel jobs to run (default 12). Running more jobs is advantageous when
running from scratch because the curl calls are blocking within each individual
job, so more jobs means more parallel web requests. The sweet spot on my 4 core
laptop is `--jobs 22` but it will depend on both hardware and network.

No doubt there are more performant techniques that could be used - and if you
have any tips regarding this (or my script authorship in general) feel free to
open an issue.

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

[Airflow](https://xkcd.com/2916/#xt=8&yt=61&v=846) |
[Earth, Fire, Air That was the Four... Wait ...](https://xkcd.com/2916/#xt=1&yt=47&v=670) |
[it barely functions but at least we have a ballpit](https://xkcd.com/2916/#xt=9&yt=28&v=449) |
[Truss the process 3.0](https://xkcd.com/2916/#xt=2&yt=73&v=980) |
[The heist](https://xkcd.com/2916/#xt=6&yt=91&v=1212) |
[the chute](https://xkcd.com/2916/#xt=8&yt=90&v=1199) |
[Over Complication](https://xkcd.com/2916/#xt=5&yt=9&v=164) |
[not this way](https://xkcd.com/2916/#xt=7&yt=78&v=1052) |
[Angry Claw Beast](https://xkcd.com/2916/#xt=1&yt=21&v=290) |
[I Ship it](https://xkcd.com/2916/#xt=7&yt=5&v=90) |
[The King's Wisdom](https://xkcd.com/2916/#xt=1&yt=53&v=736) |
[sword dodge](https://xkcd.com/2916/#xt=0&yt=11&v=105) |
[deus ex machina](https://xkcd.com/2916/#xt=7&yt=70&v=957) |
[Dispertion](https://xkcd.com/2916/#xt=11&yt=30&v=515) |
[Autosorter](https://xkcd.com/2916/#xt=10&yt=48&v=682) |
[The thingamajigger](https://xkcd.com/2916/#xt=10&yt=84&v=1129) |
[Highway to the](https://xkcd.com/2916/#xt=7&yt=30&v=443) |
[Trust but Verify](https://xkcd.com/2916/#xt=5&yt=64&v=878) |
[RAGE AGAINST](https://xkcd.com/2916/#xt=6&yt=77&v=1041) |
[green go, yellow slow](https://xkcd.com/2916/#xt=8&yt=89&v=1186) |
[Wind and Planks](https://xkcd.com/2916/#xt=11&yt=2&v=48) |
[knorks 1000](https://xkcd.com/2916/#xt=10&yt=43&v=613) |
[the machine](https://xkcd.com/2916/#xt=4&yt=69&v=940) |
[XK Escher](https://xkcd.com/2916/#xt=3&yt=74&v=999) |
[Bonked my Elbow](https://xkcd.com/2916/#xt=5&yt=38&v=571) |
[Bonks and fans](https://xkcd.com/2916/#xt=3&yt=3&v=33) |
[⚔️⚔️⚔️🗡️🗡️🗡️⚔️⚔️⚔️](https://xkcd.com/2916/#xt=2&yt=59&v=821) |
[Hercules vs the hydra](https://xkcd.com/2916/#xt=11&yt=76&v=1022) |
[Ball-Effect Transistor](https://xkcd.com/2916/#xt=10&yt=69&v=948) |
[Laundry](https://xkcd.com/2916/#xt=2&yt=30&v=450) |
[Just imitating someone else's maze](https://xkcd.com/2916/#xt=3&yt=44&v=641) |
[Chim Chim Cher-ee](https://xkcd.com/2916/#xt=4&yt=55&v=767) |
[Gaussian funnel](https://xkcd.com/2916/#xt=7&yt=25&v=388) |
[more fans](https://xkcd.com/2916/#xt=4&yt=67&v=922) |
[ciurus carolinensis](https://xkcd.com/2916/#xt=0&yt=12&v=123) |
[fail-safes. emphasize the fail. ](https://xkcd.com/2916/#xt=1&yt=88&v=1180) |
[water filter](https://xkcd.com/2916/#xt=7&yt=66&v=910) |
[how2colorsort](https://xkcd.com/2916/#xt=3&yt=22&v=341) |
[sierpinski](https://xkcd.com/2916/#xt=4&yt=2&v=29) |
[green machine](https://xkcd.com/2916/#xt=9&yt=20&v=323) |
[Diamond Bonk](https://xkcd.com/2916/#xt=4&yt=37&v=545) |
[swat team](https://xkcd.com/2916/#xt=6&yt=31&v=457) |
[arthur](https://xkcd.com/2916/#xt=7&yt=28&v=429) |
[Go KiTty!](https://xkcd.com/2916/#xt=10&yt=29&v=442) |
[Fun with the wind](https://xkcd.com/2916/#xt=3&yt=66&v=903) |
[Flappy_Rake](https://xkcd.com/2916/#xt=7&yt=9&v=139) |
[Cyclotronics](https://xkcd.com/2916/#xt=3&yt=25&v=395) |
[The Snail](https://xkcd.com/2916/#xt=10&yt=51&v=712) |
[I like big bonks and I cannot lie](https://xkcd.com/2916/#xt=4&yt=5&v=58) |
[Redefining Down](https://xkcd.com/2916/#xt=8&yt=38&v=525) |
[pneumonoultramicroscopicsilicovolcanoconiosis is a word](https://xkcd.com/2916/#xt=1&yt=85&v=1134) |
[ziggity](https://xkcd.com/2916/#xt=8&yt=48&v=680) |
[Thread the needle](https://xkcd.com/2916/#xt=3&yt=16&v=265) |
[The Hard Way](https://xkcd.com/2916/#xt=4&yt=50&v=707) |
[opposite direction](https://xkcd.com/2916/#xt=6&yt=12&v=175) |
[Cat Physics](https://xkcd.com/2916/#xt=0&yt=36&v=513) |
[I Can't Believe It's Not Bonk](https://xkcd.com/2916/#xt=6&yt=23&v=370) |
[Average Boston Road](https://xkcd.com/2916/#xt=5&yt=25&v=397) |
[swords of teleportation](https://xkcd.com/2916/#xt=11&yt=24&v=374) |
[super sorter 6000](https://xkcd.com/2916/#xt=6&yt=52&v=734) |
[a walk in the park](https://xkcd.com/2916/#xt=5&yt=3&v=56) |
[Apologies to the next person](https://xkcd.com/2916/#xt=1&yt=80&v=1072) |
[Ol' Reliable](https://xkcd.com/2916/#xt=6&yt=39&v=577) |
[get in the bun pit](https://xkcd.com/2916/#xt=1&yt=50&v=703) |
[Squirrels all the way down](https://xkcd.com/2916/#xt=6&yt=26&v=406) |
[too care to drunk](https://xkcd.com/2916/#xt=1&yt=22&v=305) |
[Four nines of uptime](https://xkcd.com/2916/#xt=3&yt=62&v=853) |
[Pride Plinko](https://xkcd.com/2916/#xt=9&yt=0&v=14) |
[The bunny observes](https://xkcd.com/2916/#xt=6&yt=82&v=1111) |
[Boing lift separator](https://xkcd.com/2916/#xt=6&yt=79&v=1067) |
[Just hangin'](https://xkcd.com/2916/#xt=9&yt=36&v=527) |
[Agents of chaos](https://xkcd.com/2916/#xt=7&yt=41&v=595) |
[They gave me a line what](https://xkcd.com/2916/#xt=0&yt=22&v=309) |
[Second](https://xkcd.com/2916/#xt=0&yt=20&v=302) |
[[design Approved by the Squirrel Council. See subsection 45B red-green-ball-sort-design 2BA-LL]](https://xkcd.com/2916/#xt=10&yt=66&v=912) |
[Sorter 2.0](https://xkcd.com/2916/#xt=9&yt=30&v=458) |
[The Tri-swordter](https://xkcd.com/2916/#xt=7&yt=72&v=977) |
[split down the middle](https://xkcd.com/2916/#xt=3&yt=31&v=467) |
[Bonkey Kong](https://xkcd.com/2916/#xt=8&yt=58&v=803) |
[The EdmuNd Fitzgerald](https://xkcd.com/2916/#xt=3&yt=69&v=942) |
[Catch the lemons](https://xkcd.com/2916/#xt=11&yt=42&v=607) |
[less is more](https://xkcd.com/2916/#xt=6&yt=6&v=100) |
[Neature](https://xkcd.com/2916/#xt=5&yt=29&v=440) |
[Red-Green](https://xkcd.com/2916/#xt=1&yt=1&v=18) |
[prism pairs](https://xkcd.com/2916/#xt=10&yt=86&v=1146) |
[the contraption](https://xkcd.com/2916/#xt=7&yt=29&v=432) |
[A Game of swords](https://xkcd.com/2916/#xt=10&yt=46&v=657) |
[Coasters](https://xkcd.com/2916/#xt=0&yt=60&v=824) |
[Party flippers](https://xkcd.com/2916/#xt=5&yt=37&v=553) |
[Ughhhh](https://xkcd.com/2916/#xt=7&yt=14&v=198) |
[i DIDN'T HAVE TO DO ANYTHING](https://xkcd.com/2916/#xt=7&yt=37&v=528) |
[Is it some kind of magic?](https://xkcd.com/2916/#xt=8&yt=75&v=1031) |
[unearned confidence :3](https://xkcd.com/2916/#xt=6&yt=38&v=548) |
[Hide the nuts](https://xkcd.com/2916/#xt=4&yt=60&v=832) |
[supporters](https://xkcd.com/2916/#xt=9&yt=10&v=131) |
[raaaaaamps](https://xkcd.com/2916/#xt=11&yt=20&v=326) |
[Hungry Hungry Hippos](https://xkcd.com/2916/#xt=4&yt=79&v=1065) |
[Lines and launches](https://xkcd.com/2916/#xt=3&yt=19&v=319) |
[probably definitely probably](https://xkcd.com/2916/#xt=4&yt=6&v=74) |
[Squirrel's Maze](https://xkcd.com/2916/#xt=6&yt=10&v=143) |
[Large Hexagon Collider](https://xkcd.com/2916/#xt=6&yt=9&v=146) |
[Popcorn Machine](https://xkcd.com/2916/#xt=2&yt=46&v=655) |
[Orbital Mechanic 3: the cat-aclysm](https://xkcd.com/2916/#xt=0&yt=25&v=336) |
[oops! all pillows](https://xkcd.com/2916/#xt=6&yt=44&v=638) |
[sorting](https://xkcd.com/2916/#xt=2&yt=86&v=1154) |
[how i learned to stop worrying and love the particle oven](https://xkcd.com/2916/#xt=7&yt=16&v=232) |
[Never trust the squirrels.](https://xkcd.com/2916/#xt=0&yt=19&v=255) |
[Elevator Jam](https://xkcd.com/2916/#xt=2&yt=34&v=503) |
[parallel universes](https://xkcd.com/2916/#xt=0&yt=32&v=456) |
[the wheel's back](https://xkcd.com/2916/#xt=1&yt=69&v=944) |
[Path of the Fireflies](https://xkcd.com/2916/#xt=3&yt=9&v=144) |
[The Fan physics are nondeterministic](https://xkcd.com/2916/#xt=11&yt=43&v=612) |
[the acclaimed Fort Swordforge](https://xkcd.com/2916/#xt=4&yt=33&v=489) |
[Bubble SOrt](https://xkcd.com/2916/#xt=2&yt=51&v=718) |
[Speed up, slow down](https://xkcd.com/2916/#xt=6&yt=35&v=533) |
[immediate relief when and where you need it most](https://xkcd.com/2916/#xt=2&yt=60&v=828) |
[swords of teleportation: behind the scenes](https://xkcd.com/2916/#xt=9&yt=70&v=923) |
[not a normal distribution](https://xkcd.com/2916/#xt=11&yt=49&v=683) |
[Mass Sort](https://xkcd.com/2916/#xt=11&yt=27&v=427) |
[Many fan make light green work](https://xkcd.com/2916/#xt=9&yt=33&v=487) |
[The Bun Mechanism](https://xkcd.com/2916/#xt=10&yt=30&v=447) |
[Jamslunt interfoggle](https://xkcd.com/2916/#xt=2&yt=2&v=30) |
[SUPER PINBALLINATOR 9000](https://xkcd.com/2916/#xt=2&yt=16&v=157) |
[DEFINITELY NONDETERMINISTIC](https://xkcd.com/2916/#xt=10&yt=7&v=116) |
[In-flight crossing](https://xkcd.com/2916/#xt=4&yt=58&v=807) |
[board stiff](https://xkcd.com/2916/#xt=8&yt=92&v=1224) |
[absence of god](https://xkcd.com/2916/#xt=9&yt=11&v=185) |
[dragonslayer](https://xkcd.com/2916/#xt=1&yt=81&v=1084) |
[Bonknoulli principle](https://xkcd.com/2916/#xt=11&yt=17&v=294) |
[the baseball player](https://xkcd.com/2916/#xt=4&yt=10&v=170) |
[Knife's Edge](https://xkcd.com/2916/#xt=8&yt=25&v=377) |
[iffy clouds](https://xkcd.com/2916/#xt=3&yt=10&v=204) |
[SQUARE SQUIRREL CONTAINMENT](https://xkcd.com/2916/#xt=2&yt=8&v=117) |
[Popcorn](https://xkcd.com/2916/#xt=1&yt=19&v=274) |
[error correction](https://xkcd.com/2916/#xt=1&yt=33&v=492) |
[Blown away](https://xkcd.com/2916/#xt=4&yt=28&v=437) |
[And yet they called me mad when I filled the machine with BEES](https://xkcd.com/2916/#xt=10&yt=59&v=812) |
[Home-Made Fusion Reactor](https://xkcd.com/2916/#xt=7&yt=76&v=1035) |
[Vacuum-Sealed](https://xkcd.com/2916/#xt=0&yt=54&v=752) |
[Just enough to keep the cat interested](https://xkcd.com/2916/#xt=11&yt=36&v=543) |
[fascinating invention](https://xkcd.com/2916/#xt=10&yt=61&v=848) |
[sorry](https://xkcd.com/2916/#xt=3&yt=8&v=136) |
[technically bubblesort](https://xkcd.com/2916/#xt=6&yt=42&v=606) |
[zipzopzap](https://xkcd.com/2916/#xt=11&yt=74&v=1009) |
[its a groovy time for a movie time](https://xkcd.com/2916/#xt=11&yt=29&v=438) |
[Coding for the enterprise](https://xkcd.com/2916/#xt=11&yt=70&v=959) |
[Error-checking redundancy](https://xkcd.com/2916/#xt=10&yt=40&v=579) |
[haphazard is a compliment](https://xkcd.com/2916/#xt=3&yt=85&v=1136) |
[not fast enough](https://xkcd.com/2916/#xt=0&yt=39&v=582) |
[samba](https://xkcd.com/2916/#xt=4&yt=0&v=9) |
[FLoat Tank](https://xkcd.com/2916/#xt=0&yt=55&v=761) |
[big tony](https://xkcd.com/2916/#xt=7&yt=20&v=299) |
[panning for green](https://xkcd.com/2916/#xt=0&yt=33&v=477) |
[Could be worse](https://xkcd.com/2916/#xt=1&yt=82&v=1103) |
[The Holar Express](https://xkcd.com/2916/#xt=6&yt=3&v=59) |
[that's not how you use them](https://xkcd.com/2916/#xt=8&yt=83&v=1114) |
[null](https://xkcd.com/2916/#xt=3&yt=60&v=830) |
[dont forget to switch your fans](https://xkcd.com/2916/#xt=7&yt=0&v=2) |
[our house, in the middle of my sort](https://xkcd.com/2916/#xt=7&yt=11&v=174) |
[Popcorn maker](https://xkcd.com/2916/#xt=0&yt=61&v=838) |
[Cat's Cradle](https://xkcd.com/2916/#xt=5&yt=82&v=1099) |
[brick bounce fan fun](https://xkcd.com/2916/#xt=7&yt=89&v=1188) |
[spin sorter](https://xkcd.com/2916/#xt=0&yt=15&v=163) |
[Patterns, 100% Ball Transfer](https://xkcd.com/2916/#xt=5&yt=69&v=941) |
[will it work? see bottom left](https://xkcd.com/2916/#xt=8&yt=63&v=865) |
[Blues ](https://xkcd.com/2916/#xt=6&yt=62&v=856) |
[Cliff Edge](https://xkcd.com/2916/#xt=4&yt=46&v=645) |
[Sword Pile](https://xkcd.com/2916/#xt=5&yt=5&v=71) |
[Adit ventilation](https://xkcd.com/2916/#xt=10&yt=45&v=649) |
[I think this pipe is clogged](https://xkcd.com/2916/#xt=8&yt=15&v=393) |
[the cat has everything under control](https://xkcd.com/2916/#xt=0&yt=52&v=726) |
[champagne supernova](https://xkcd.com/2916/#xt=11&yt=66&v=913) |
[Anvil Sorter](https://xkcd.com/2916/#xt=10&yt=56&v=786) |
[inertial vs gravitational mass](https://xkcd.com/2916/#xt=9&yt=74&v=1007) |
[Supercolliding supercollider](https://xkcd.com/2916/#xt=1&yt=45&v=634) |
[The duel](https://xkcd.com/2916/#xt=11&yt=7&v=98) |
[MasterpieceifIdosaysomyself](https://xkcd.com/2916/#xt=9&yt=79&v=1071) |
[trans rights](https://xkcd.com/2916/#xt=7&yt=6&v=96) |
[Semi JUMP](https://xkcd.com/2916/#xt=11&yt=84&v=1130) |
[my cup runneth under](https://xkcd.com/2916/#xt=1&yt=79&v=1062) |
[No OSHA Violations Here](https://xkcd.com/2916/#xt=8&yt=56&v=784) |
[GRAVITY FILTER](https://xkcd.com/2916/#xt=3&yt=15&v=251) |
[Narrow margins](https://xkcd.com/2916/#xt=2&yt=80&v=1073) |
[The creation of Machine](https://xkcd.com/2916/#xt=11&yt=44&v=618) |
[A reasonable attempt](https://xkcd.com/2916/#xt=10&yt=15&v=268) |
[Ball Pens Are FUN](https://xkcd.com/2916/#xt=11&yt=62&v=852) |
[It fixes your mistakes.](https://xkcd.com/2916/#xt=8&yt=77&v=1048) |
[rabbit path](https://xkcd.com/2916/#xt=8&yt=35&v=508) |
[Bouncy House](https://xkcd.com/2916/#xt=0&yt=10&v=75) |
[Bounce](https://xkcd.com/2916/#xt=7&yt=3&v=70) |
[Supercollider](https://xkcd.com/2916/#xt=9&yt=9&v=120) |
[3-way sorter](https://xkcd.com/2916/#xt=3&yt=50&v=704) |
[Forced Air Heating](https://xkcd.com/2916/#xt=4&yt=93&v=1231) |
[red/yellow feline fractionator](https://xkcd.com/2916/#xt=6&yt=85&v=1139) |
[How to make scrambled eggs; a memoir](https://xkcd.com/2916/#xt=7&yt=38&v=546) |
[Designed within needed technical specifications](https://xkcd.com/2916/#xt=7&yt=23&v=371) |
[Layered boinginess](https://xkcd.com/2916/#xt=3&yt=28&v=434) |
[the wind in the pillows](https://xkcd.com/2916/#xt=8&yt=86&v=1148) |
[Don't forget your party helmet](https://xkcd.com/2916/#xt=7&yt=51&v=711) |
[the long way round](https://xkcd.com/2916/#xt=0&yt=74&v=996) |
[launch](https://xkcd.com/2916/#xt=10&yt=12&v=219) |
[Don’t rotate anything challenge](https://xkcd.com/2916/#xt=7&yt=58&v=804) |
[overcaffeinated](https://xkcd.com/2916/#xt=11&yt=67&v=925) |
[Board to tears](https://xkcd.com/2916/#xt=0&yt=18&v=243) |
[this confounding device](https://xkcd.com/2916/#xt=10&yt=63&v=863) |
[sorting Madness](https://xkcd.com/2916/#xt=2&yt=57&v=798) |
[he's not stuck, he just enjoys causing problems.](https://xkcd.com/2916/#xt=11&yt=90&v=1197) |
[Only needed half.](https://xkcd.com/2916/#xt=9&yt=87&v=1167) |
[KALI MAAAAAA](https://xkcd.com/2916/#xt=0&yt=28&v=387) |
[Minefield](https://xkcd.com/2916/#xt=9&yt=7&v=114) |
[waning creativity, 2024 - Digital](https://xkcd.com/2916/#xt=11&yt=77&v=1023) |
[dangerous intersection](https://xkcd.com/2916/#xt=11&yt=53&v=745) |
[My Apologies To the chef](https://xkcd.com/2916/#xt=2&yt=26&v=391) |
[RBY Output; All Color FIlter?](https://xkcd.com/2916/#xt=3&yt=68&v=935) |
[The confoundinator!](https://xkcd.com/2916/#xt=5&yt=33&v=485) |
[color winds](https://xkcd.com/2916/#xt=2&yt=77&v=1042) |
[Epic Duel](https://xkcd.com/2916/#xt=0&yt=18&v=252) |
[double shot](https://xkcd.com/2916/#xt=4&yt=87&v=1161) |
[ψήφος](https://xkcd.com/2916/#xt=5&yt=73&v=990) |
[Squirrel determinism](https://xkcd.com/2916/#xt=3&yt=26&v=398) |
[sacrifices for the greater good](https://xkcd.com/2916/#xt=4&yt=14&v=246) |
[Wild wheels](https://xkcd.com/2916/#xt=1&yt=49&v=692) |
[Bonks](https://xkcd.com/2916/#xt=0&yt=50&v=689) |
[javascript version 2](https://xkcd.com/2916/#xt=2&yt=35&v=512) |
[Working the forge](https://xkcd.com/2916/#xt=6&yt=33&v=472) |
[blue hyper highway across green crosswalk](https://xkcd.com/2916/#xt=7&yt=22&v=364) |
[Talvieno's Smashbot](https://xkcd.com/2916/#xt=4&yt=9&v=161) |
[its all cats all the way down](https://xkcd.com/2916/#xt=8&yt=32&v=481) |
[Pneumatic Pnetwork](https://xkcd.com/2916/#xt=6&yt=4&v=72) |
[We are Not Sure What We Do Around Here](https://xkcd.com/2916/#xt=9&yt=90&v=1204) |
[p(hit) corr. 1/v](https://xkcd.com/2916/#xt=7&yt=43&v=628) |
[pretty bad](https://xkcd.com/2916/#xt=0&yt=0&v=1) |
[Under the Stairs](https://xkcd.com/2916/#xt=9&yt=47&v=662) |
[orbital bonk](https://xkcd.com/2916/#xt=11&yt=12&v=210) |
[professional pillow-fighting ring](https://xkcd.com/2916/#xt=11&yt=82&v=1118) |
[Lazy hurricane](https://xkcd.com/2916/#xt=5&yt=21&v=343) |
[3 output filter](https://xkcd.com/2916/#xt=6&yt=92&v=1232) |
[Bonk Conduction](https://xkcd.com/2916/#xt=7&yt=18&v=244) |
[Flooper](https://xkcd.com/2916/#xt=3&yt=24&v=381) |
[Evaporation Filter](https://xkcd.com/2916/#xt=10&yt=58&v=801) |
[null](https://xkcd.com/2916/#xt=9&yt=51&v=713) |
[upside down](https://xkcd.com/2916/#xt=6&yt=47&v=664) |
[secret tunnel](https://xkcd.com/2916/#xt=2&yt=14&v=208) |
[The Machine](https://xkcd.com/2916/#xt=7&yt=39&v=559) |
[Better Cat than Sorry](https://xkcd.com/2916/#xt=7&yt=60&v=826) |
[Wh- what have you done to my house?](https://xkcd.com/2916/#xt=11&yt=47&v=661) |
[Consistently Inconsistent](https://xkcd.com/2916/#xt=5&yt=87&v=1162) |
[undercomplicate](https://xkcd.com/2916/#xt=3&yt=0&v=6) |
[6 fans and a cat](https://xkcd.com/2916/#xt=11&yt=59&v=813) |
[Things to bounce off (variing Quality)](https://xkcd.com/2916/#xt=10&yt=90&v=1198) |
[Zero Point Cat.exe_dropTables](https://xkcd.com/2916/#xt=10&yt=37&v=551) |
[Drop that anvil](https://xkcd.com/2916/#xt=11&yt=68&v=937) |
[the sword is mightier than the balls](https://xkcd.com/2916/#xt=10&yt=1&v=39) |
[Brick Whartley's Turbine](https://xkcd.com/2916/#xt=4&yt=27&v=419) |
[homestar runner and strong bad](https://xkcd.com/2916/#xt=8&yt=73&v=993) |
[Probably Pinball](https://xkcd.com/2916/#xt=1&yt=20&v=279) |
[What strange creatures](https://xkcd.com/2916/#xt=0&yt=14&v=142) |
[Stability Test](https://xkcd.com/2916/#xt=9&yt=78&v=1050) |
[Nothing to see here, Mr Newton!](https://xkcd.com/2916/#xt=10&yt=71&v=971) |
[mass spectrometer](https://xkcd.com/2916/#xt=5&yt=83&v=1110) |
[Infinite Cosmos](https://xkcd.com/2916/#xt=5&yt=20&v=340) |
[SPEED RACER](https://xkcd.com/2916/#xt=11&yt=21&v=347) |
[Pillow fight at the bar](https://xkcd.com/2916/#xt=8&yt=39&v=549) |
[only fans](https://xkcd.com/2916/#xt=3&yt=27&v=410) |
[Particle Motion](https://xkcd.com/2916/#xt=9&yt=85&v=1142) |
[Catleidoscope](https://xkcd.com/2916/#xt=4&yt=70&v=952) |
[my fingers hurt](https://xkcd.com/2916/#xt=5&yt=88&v=1176) |
[The message](https://xkcd.com/2916/#xt=10&yt=0&v=16) |
[i shall name it... "this marvelous device"!](https://xkcd.com/2916/#xt=0&yt=81&v=1083) |
[good job](https://xkcd.com/2916/#xt=5&yt=85&v=1138) |
[occam's swords](https://xkcd.com/2916/#xt=3&yt=71&v=964) |
[Grandpa's Wooden Coaster](https://xkcd.com/2916/#xt=4&yt=40&v=588) |
[Tripplelerator](https://xkcd.com/2916/#xt=4&yt=25&v=394) |
[Criss-Cross](https://xkcd.com/2916/#xt=6&yt=11&v=167) |
[To Influence](https://xkcd.com/2916/#xt=9&yt=77&v=1046) |
[Speedrun](https://xkcd.com/2916/#xt=11&yt=63&v=862) |
[buns versus squirrels](https://xkcd.com/2916/#xt=11&yt=35&v=517) |
[Walk the Plank](https://xkcd.com/2916/#xt=0&yt=57&v=796) |
[nearly always works](https://xkcd.com/2916/#xt=8&yt=50&v=709) |
["Look buddy, the Specs didn't say anything about non yellow balls"](https://xkcd.com/2916/#xt=0&yt=90&v=1193) |
[sword of truth](https://xkcd.com/2916/#xt=2&yt=36&v=537) |
[It's Getting Silly now](https://xkcd.com/2916/#xt=6&yt=49&v=698) |
[Uncooperative red](https://xkcd.com/2916/#xt=2&yt=81&v=1085) |
[black hole sun](https://xkcd.com/2916/#xt=7&yt=77&v=1047) |
[crossed streams](https://xkcd.com/2916/#xt=8&yt=21&v=352) |
[Earth wind.. no fire](https://xkcd.com/2916/#xt=3&yt=84&v=1126) |
[wind tunels](https://xkcd.com/2916/#xt=0&yt=73&v=987) |
[troy](https://xkcd.com/2916/#xt=5&yt=79&v=1059) |
[!yttik](https://xkcd.com/2916/#xt=4&yt=74&v=1000) |
[Deterministic dependency](https://xkcd.com/2916/#xt=4&yt=27&v=420) |
[jupiter](https://xkcd.com/2916/#xt=8&yt=2&v=73) |
[Inner Peace](https://xkcd.com/2916/#xt=2&yt=21&v=320) |
[Mostly air pressure](https://xkcd.com/2916/#xt=10&yt=24&v=390) |
[Simple Y/G sorter](https://xkcd.com/2916/#xt=11&yt=28&v=431) |
[Hammer-encouraged sorting algorythm](https://xkcd.com/2916/#xt=5&yt=15&v=270) |
[EVENTUALLY CONSISTENT](https://xkcd.com/2916/#xt=10&yt=25&v=389) |
[minimalism](https://xkcd.com/2916/#xt=3&yt=46&v=653) |
[Gravity works](https://xkcd.com/2916/#xt=5&yt=17&v=298) |
[the prism sorts as it desires](https://xkcd.com/2916/#xt=2&yt=20&v=325) |
[I Assure You The Loop is Strictly Necessary](https://xkcd.com/2916/#xt=3&yt=29&v=454) |
[I totally understand gravity systems](https://xkcd.com/2916/#xt=2&yt=23&v=324) |
[Il fait Doink](https://xkcd.com/2916/#xt=8&yt=20&v=287) |
[velocity sorter](https://xkcd.com/2916/#xt=7&yt=61&v=845) |
[Employee of the Month](https://xkcd.com/2916/#xt=7&yt=55&v=781) |
[clutter toss](https://xkcd.com/2916/#xt=9&yt=91&v=1214) |
[Fans and bricks](https://xkcd.com/2916/#xt=10&yt=6&v=106) |
[nekomimimode](https://xkcd.com/2916/#xt=3&yt=49&v=687) |
[Traps](https://xkcd.com/2916/#xt=7&yt=71&v=968) |
[dESPAWNER](https://xkcd.com/2916/#xt=9&yt=89&v=1203) |
[All hail king knitcap](https://xkcd.com/2916/#xt=4&yt=29&v=445) |
[shooting gallery](https://xkcd.com/2916/#xt=10&yt=20&v=321) |
[order and chaos](https://xkcd.com/2916/#xt=1&yt=9&v=129) |
[the Prisms did a good job, probably.](https://xkcd.com/2916/#xt=9&yt=76&v=1039) |
[bouncy-Hexagons](https://xkcd.com/2916/#xt=0&yt=93&v=1228) |
[Thanks for the sorted balls!](https://xkcd.com/2916/#xt=8&yt=91&v=1213) |
[collisions ok, reds and greens, not ok](https://xkcd.com/2916/#xt=1&yt=91&v=1209) |
[unbothered](https://xkcd.com/2916/#xt=3&yt=7&v=112) |
[bun](https://xkcd.com/2916/#xt=0&yt=46&v=633) |
[this is fine!](https://xkcd.com/2916/#xt=7&yt=49&v=697) |
[luxury cats-only hotel](https://xkcd.com/2916/#xt=4&yt=78&v=1054) |
[Galton's Failed board](https://xkcd.com/2916/#xt=6&yt=16&v=195) |
[Cat-Trifical Force](https://xkcd.com/2916/#xt=10&yt=78&v=1036) |
[Black Magic](https://xkcd.com/2916/#xt=11&yt=39&v=572) |
[*clacking noises*](https://xkcd.com/2916/#xt=7&yt=33&v=484) |
[and it would have worked if not for those meddling balls bouncing into each other.](https://xkcd.com/2916/#xt=5&yt=89&v=1191) |
[Fan-tastic heart](https://xkcd.com/2916/#xt=11&yt=13&v=213) |
[float like a butterfly, sink like a stone](https://xkcd.com/2916/#xt=11&yt=86&v=1145) |
[More bounces than needed](https://xkcd.com/2916/#xt=11&yt=57&v=788) |
[Will the squirrel ever catch a nut?](https://xkcd.com/2916/#xt=5&yt=67&v=928) |
[mixer](https://xkcd.com/2916/#xt=7&yt=24&v=383) |
[the most direct path](https://xkcd.com/2916/#xt=11&yt=34&v=504) |
[red touches yellow, re-sort a fellow.](https://xkcd.com/2916/#xt=8&yt=82&v=1097) |
[the hall of edges](https://xkcd.com/2916/#xt=3&yt=11&v=162) |
[Don't Cross The Streams](https://xkcd.com/2916/#xt=0&yt=9&v=68) |
[hostile takeover](https://xkcd.com/2916/#xt=4&yt=68&v=930) |
[WAD_SWAT](https://xkcd.com/2916/#xt=11&yt=38&v=557) |
[Catto Assisted Sorting](https://xkcd.com/2916/#xt=3&yt=51&v=717) |
[under construction](https://xkcd.com/2916/#xt=8&yt=53&v=742) |
[I mean it works...](https://xkcd.com/2916/#xt=9&yt=19&v=284) |
[name](https://xkcd.com/2916/#xt=2&yt=55&v=769) |
[All about the balance](https://xkcd.com/2916/#xt=10&yt=19&v=303) |
[hellish merger](https://xkcd.com/2916/#xt=4&yt=8&v=152) |
[Statistically Significant](https://xkcd.com/2916/#xt=4&yt=82&v=1101) |
[A cat's innate, unstoppable desire to push things off of tables](https://xkcd.com/2916/#xt=9&yt=67&v=918) |
[Scientific Progress Goes Bonk](https://xkcd.com/2916/#xt=1&yt=23&v=315) |
[Proud](https://xkcd.com/2916/#xt=4&yt=57&v=795) |
[The crossroads](https://xkcd.com/2916/#xt=8&yt=72&v=984) |
[Sleepy](https://xkcd.com/2916/#xt=6&yt=18&v=365) |
[Yellow is my favorite color](https://xkcd.com/2916/#xt=1&yt=75&v=1013) |
[Panning for sky-gold](https://xkcd.com/2916/#xt=0&yt=92&v=1223) |
[i HAVE SEEN BETTER](https://xkcd.com/2916/#xt=9&yt=45&v=646) |
[small sort](https://xkcd.com/2916/#xt=9&yt=8&v=125) |
[Simply connected](https://xkcd.com/2916/#xt=8&yt=29&v=451) |
[synchronicity](https://xkcd.com/2916/#xt=1&yt=64&v=885) |
[That information is classified.](https://xkcd.com/2916/#xt=4&yt=71&v=965) |
[Saboteur (or pushing the limits of cat hitboxes to potentially swat balls in adjacent machines)](https://xkcd.com/2916/#xt=11&yt=83&v=1121) |
[monday morning brain scan](https://xkcd.com/2916/#xt=9&yt=80&v=1082) |
[Bonk Reactor](https://xkcd.com/2916/#xt=0&yt=13&v=126) |
[tunnels](https://xkcd.com/2916/#xt=6&yt=61&v=844) |
[Super simple sorter ](https://xkcd.com/2916/#xt=8&yt=62&v=850) |
[An Uphill Battle](https://xkcd.com/2916/#xt=8&yt=11&v=179) |
[Particle Accelerator](https://xkcd.com/2916/#xt=11&yt=50&v=699) |
[Folsom prism blues](https://xkcd.com/2916/#xt=2&yt=64&v=886) |
[there he is!](https://xkcd.com/2916/#xt=0&yt=80&v=1063) |
[Sharingan](https://xkcd.com/2916/#xt=3&yt=41&v=568) |
[Chaos in a box](https://xkcd.com/2916/#xt=7&yt=42&v=610) |
[an absolutely necessarily complicated machine](https://xkcd.com/2916/#xt=6&yt=68&v=933) |
[wormhole](https://xkcd.com/2916/#xt=8&yt=44&v=636) |
[Ball PIt](https://xkcd.com/2916/#xt=11&yt=10&v=171) |
[quite reliable](https://xkcd.com/2916/#xt=7&yt=91&v=1219) |
[False Positive filter](https://xkcd.com/2916/#xt=0&yt=68&v=931) |
[You have my sword](https://xkcd.com/2916/#xt=8&yt=13&v=197) |
[hope the cat doesn't get bored](https://xkcd.com/2916/#xt=10&yt=50&v=710) |
[completely fanless](https://xkcd.com/2916/#xt=1&yt=44&v=632) |
[Tower defence](https://xkcd.com/2916/#xt=8&yt=6&v=94) |
[chaff, flare](https://xkcd.com/2916/#xt=9&yt=34&v=501) |
[but you did nothing...](https://xkcd.com/2916/#xt=5&yt=19&v=330) |
[<Ø> | intersection](https://xkcd.com/2916/#xt=5&yt=61&v=839) |
[Junction](https://xkcd.com/2916/#xt=1&yt=24&v=335) |
[*might* be food safe](https://xkcd.com/2916/#xt=8&yt=41&v=596) |
[Fan](https://xkcd.com/2916/#xt=7&yt=5&v=89) |
[qwerty](https://xkcd.com/2916/#xt=3&yt=53&v=738) |
[labyrinth](https://xkcd.com/2916/#xt=5&yt=26&v=400) |
[chassé croisé](https://xkcd.com/2916/#xt=3&yt=8&v=137) |
[hunting wabbits](https://xkcd.com/2916/#xt=4&yt=90&v=1205) |
[greens are a pain](https://xkcd.com/2916/#xt=8&yt=79&v=1069) |
[Red green Error  checking](https://xkcd.com/2916/#xt=9&yt=66&v=911) |
[Breach Control](https://xkcd.com/2916/#xt=1&yt=11&v=154) |
[lucky draw](https://xkcd.com/2916/#xt=0&yt=24&v=316) |
[Fan of Curves](https://xkcd.com/2916/#xt=0&yt=75&v=1012) |
[chillout by the pool](https://xkcd.com/2916/#xt=8&yt=60&v=825) |
[Look ma! No hands!](https://xkcd.com/2916/#xt=8&yt=0&v=12) |
[Bounce house](https://xkcd.com/2916/#xt=5&yt=0&v=10) |
[The Cat-raption](https://xkcd.com/2916/#xt=6&yt=36&v=510) |
[cat-egorization](https://xkcd.com/2916/#xt=9&yt=60&v=836) |
[This is normal. Is this normal?](https://xkcd.com/2916/#xt=2&yt=76&v=1028) |
[SOArSORT (WITH MAndatory CAT)](https://xkcd.com/2916/#xt=11&yt=56&v=787) |
[inside the attempt to find and isolate so-called red and green particles](https://xkcd.com/2916/#xt=2&yt=89&v=1184) |
[Fred](https://xkcd.com/2916/#xt=1&yt=0&v=4) |
[Try{Hover();Rebound};Catch{Ball};](https://xkcd.com/2916/#xt=9&yt=42&v=611) |
[Springboard](https://xkcd.com/2916/#xt=1&yt=41&v=589) |
[Cat wheel](https://xkcd.com/2916/#xt=6&yt=84&v=1127) |
[the easiest way](https://xkcd.com/2916/#xt=0&yt=67&v=914) |
[The hardest working cat in all the land](https://xkcd.com/2916/#xt=5&yt=84&v=1122) |
[The Fan-tom Menace ](https://xkcd.com/2916/#xt=1&yt=25&v=344) |
[ballistics are my passion](https://xkcd.com/2916/#xt=6&yt=50&v=708) |
[risking it](https://xkcd.com/2916/#xt=9&yt=55&v=775) |
[Simple Bonk](https://xkcd.com/2916/#xt=8&yt=87&v=1166) |
[the premise of a very weird dystopian novel](https://xkcd.com/2916/#xt=2&yt=83&v=1107) |
[Maxwell's Demon](https://xkcd.com/2916/#xt=1&yt=26&v=356) |
[red green separator](https://xkcd.com/2916/#xt=0&yt=43&v=619) |
[☃](https://xkcd.com/2916/#xt=5&yt=7&v=108) |
[sprinkle separator](https://xkcd.com/2916/#xt=4&yt=92&v=1221) |
[Hello Squirrel](https://xkcd.com/2916/#xt=1&yt=4&v=32) |
[Just another sorter](https://xkcd.com/2916/#xt=8&yt=81&v=1091) |
[Particle Accelerator 1.0](https://xkcd.com/2916/#xt=5&yt=28&v=435) |
[oversimplified](https://xkcd.com/2916/#xt=3&yt=83&v=1108) |
[Technically Effective](https://xkcd.com/2916/#xt=9&yt=22&v=348) |
[Fan Spectrometer](https://xkcd.com/2916/#xt=10&yt=27&v=426) |
[Next Time on Dragonball Z!](https://xkcd.com/2916/#xt=4&yt=10&v=169) |
[Anechoic chamber](https://xkcd.com/2916/#xt=9&yt=18&v=278) |
[collision](https://xkcd.com/2916/#xt=4&yt=20&v=338) |
[⚔️🔴☢️](https://xkcd.com/2916/#xt=6&yt=15&v=193) |
[Trans rights 2](https://xkcd.com/2916/#xt=4&yt=34&v=505) |
[Repel-o-matic](https://xkcd.com/2916/#xt=1&yt=2&v=22) |
[are you sure we are not missing an obvious solution?](https://xkcd.com/2916/#xt=9&yt=27&v=407) |
[A dance of ancient forces](https://xkcd.com/2916/#xt=11&yt=25&v=392) |
[Word Harder not Smarter](https://xkcd.com/2916/#xt=8&yt=57&v=791) |
[The return of <script/>](https://xkcd.com/2916/#xt=6&yt=90&v=1195) |
[Electric Blender](https://xkcd.com/2916/#xt=5&yt=30&v=460) |
[idk how this works](https://xkcd.com/2916/#xt=7&yt=2&v=64) |
[Pareidolia](https://xkcd.com/2916/#xt=3&yt=81&v=1086) |
[All you need are cats](https://xkcd.com/2916/#xt=11&yt=40&v=580) |
[everything everywhere all at once](https://xkcd.com/2916/#xt=7&yt=87&v=1164) |
[Division of Labor](https://xkcd.com/2916/#xt=7&yt=63&v=872) |
[surprisingly good filter](https://xkcd.com/2916/#xt=9&yt=84&v=1131) |
[highway inspector bun](https://xkcd.com/2916/#xt=8&yt=24&v=386) |
[Chris](https://xkcd.com/2916/#xt=1&yt=32&v=461) |
[Do you feel a draft?](https://xkcd.com/2916/#xt=3&yt=10&v=205) |
[Ultrasorter](https://xkcd.com/2916/#xt=1&yt=3&v=27) |
[WAAAGGGGGGGG!!!!](https://xkcd.com/2916/#xt=4&yt=13&v=225) |
[the creation of adam](https://xkcd.com/2916/#xt=3&yt=30&v=455) |
[throw practice: 🐈=20pt, 🐇=5pt, 🐿️=2pt, 🧢=0pt](https://xkcd.com/2916/#xt=1&yt=54&v=750) |
[Swingbopper](https://xkcd.com/2916/#xt=1&yt=6&v=54) |
[Hands free ](https://xkcd.com/2916/#xt=4&yt=85&v=1137) |
[it's-a me, wario!](https://xkcd.com/2916/#xt=7&yt=59&v=816) |
[Fan Fanatic](https://xkcd.com/2916/#xt=6&yt=78&v=1053) |
[recycler](https://xkcd.com/2916/#xt=9&yt=40&v=561) |
[A Roundabout Bounder route](https://xkcd.com/2916/#xt=1&yt=8&v=104) |
[Bestagon with squirrel, bunny and kitty.](https://xkcd.com/2916/#xt=7&yt=84&v=1128) |
[Cats & Cannons](https://xkcd.com/2916/#xt=9&yt=41&v=597) |
[It is what it is Mk IV](https://xkcd.com/2916/#xt=10&yt=88&v=1171) |
[ran out of blocks](https://xkcd.com/2916/#xt=4&yt=42&v=604) |
[The long way around](https://xkcd.com/2916/#xt=5&yt=15&v=269) |
[catwalks](https://xkcd.com/2916/#xt=5&yt=40&v=585) |
[Cats playground](https://xkcd.com/2916/#xt=7&yt=83&v=1113) |
[Butterfly chaos circuit coaster](https://xkcd.com/2916/#xt=7&yt=47&v=663) |
[BB Gun](https://xkcd.com/2916/#xt=3&yt=59&v=820) |
[The giant](https://xkcd.com/2916/#xt=9&yt=1&v=38) |
[Feline kickball practice](https://xkcd.com/2916/#xt=0&yt=44&v=624) |
[I'm a BIG FAN](https://xkcd.com/2916/#xt=1&yt=8&v=103) |
[soft](https://xkcd.com/2916/#xt=1&yt=58&v=810) |
[i swear it's iso 9001 compliant](https://xkcd.com/2916/#xt=10&yt=44&v=620) |
[stripy pillows](https://xkcd.com/2916/#xt=0&yt=63&v=866) |
[The Squirrel from Ipanema](https://xkcd.com/2916/#xt=11&yt=17&v=297) |
[Deoxyribonucleic acid](https://xkcd.com/2916/#xt=10&yt=68&v=926) |
[You know i could have left it](https://xkcd.com/2916/#xt=3&yt=56&v=764) |
[Behind the scenes of the sword in the stone](https://xkcd.com/2916/#xt=1&yt=27&v=357) |
[Give the cat a ball](https://xkcd.com/2916/#xt=9&yt=43&v=614) |
[trust but verify](https://xkcd.com/2916/#xt=0&yt=41&v=590) |
[new high score](https://xkcd.com/2916/#xt=3&yt=32&v=480) |
[Failing upwards ](https://xkcd.com/2916/#xt=8&yt=35&v=509) |
[in hammer we truss](https://xkcd.com/2916/#xt=2&yt=32&v=465) |
[Newton's Theory Of Anti-Gravity](https://xkcd.com/2916/#xt=5&yt=66&v=907) |
[Bunny paradise ](https://xkcd.com/2916/#xt=11&yt=71&v=982) |
[654](https://xkcd.com/2916/#xt=9&yt=14&v=234) |
[we loop because we can](https://xkcd.com/2916/#xt=3&yt=91&v=1207) |
[HOW STOP LIGHTS WORK](https://xkcd.com/2916/#xt=4&yt=51&v=716) |
[Zooming ball](https://xkcd.com/2916/#xt=10&yt=49&v=694) |
[Premium Blend](https://xkcd.com/2916/#xt=11&yt=81&v=1093) |
[yeah!! science!!!](https://xkcd.com/2916/#xt=8&yt=43&v=627) |
[The sorting stick is never wrong twice](https://xkcd.com/2916/#xt=5&yt=34&v=506) |
[zoooooooooom](https://xkcd.com/2916/#xt=11&yt=85&v=1144) |
[well, the gears are a metaphor for the economy, you see, and the rabbit in the shotglass being rewarded is....](https://xkcd.com/2916/#xt=2&yt=27&v=428) |
[swan](https://xkcd.com/2916/#xt=4&yt=49&v=685) |
[The rise of the green](https://xkcd.com/2916/#xt=2&yt=39&v=570) |
[yeetatron 5.000.000](https://xkcd.com/2916/#xt=5&yt=50&v=706) |
[The Faucet](https://xkcd.com/2916/#xt=1&yt=84&v=1125) |
[popcorn](https://xkcd.com/2916/#xt=3&yt=0&v=8) |
[bookshelf](https://xkcd.com/2916/#xt=5&yt=13&v=231) |
[fan-sort](https://xkcd.com/2916/#xt=10&yt=70&v=958) |
[Probably not the safest wooden Coaster](https://xkcd.com/2916/#xt=6&yt=89&v=1187) |
[Don't mind the bird](https://xkcd.com/2916/#xt=6&yt=75&v=1025) |
[horrible](https://xkcd.com/2916/#xt=4&yt=32&v=475) |
[The princess and the Peas](https://xkcd.com/2916/#xt=2&yt=15&v=155) |
[Emergency Backup Pipe](https://xkcd.com/2916/#xt=7&yt=92&v=1220) |
[Crossroads of fate](https://xkcd.com/2916/#xt=4&yt=88&v=1177) |
[AAAAAAAAAAAAAAAAAAAAAAAAAHHH](https://xkcd.com/2916/#xt=1&yt=57&v=797) |
[Roticerizer](https://xkcd.com/2916/#xt=1&yt=2&v=24) |
[The Turtle Moves](https://xkcd.com/2916/#xt=4&yt=65&v=899) |
[Precarious](https://xkcd.com/2916/#xt=8&yt=65&v=895) |
[Icarus](https://xkcd.com/2916/#xt=9&yt=73&v=1004) |
[Propmaster](https://xkcd.com/2916/#xt=6&yt=1&v=35) |
[Green shaker](https://xkcd.com/2916/#xt=4&yt=52&v=728) |
[Sometimes a lil green gets in the red, it's okay. And vice versa, but science ain't perfect.](https://xkcd.com/2916/#xt=6&yt=83&v=1112) |
[why would anyone think this would work?](https://xkcd.com/2916/#xt=2&yt=87&v=1159) |
[SKÅL](https://xkcd.com/2916/#xt=8&yt=71&v=969) |
[This makes more sense if they're helium ](https://xkcd.com/2916/#xt=1&yt=52&v=733) |
[100% reliable](https://xkcd.com/2916/#xt=8&yt=14&v=212) |
[layer sorter](https://xkcd.com/2916/#xt=10&yt=79&v=1070) |
[Procrastination machine](https://xkcd.com/2916/#xt=0&yt=53&v=735) |
[Levitation](https://xkcd.com/2916/#xt=7&yt=12&v=182) |
[separation of concerns](https://xkcd.com/2916/#xt=5&yt=60&v=833) |
[I tried gravity. it was hard](https://xkcd.com/2916/#xt=9&yt=9&v=215) |
[Journey to Squirrel Temple](https://xkcd.com/2916/#xt=10&yt=52&v=722) |
[You will not go to space today](https://xkcd.com/2916/#xt=2&yt=85&v=1135) |
[Rainbow Road](https://xkcd.com/2916/#xt=10&yt=18&v=292) |
[Observation](https://xkcd.com/2916/#xt=7&yt=13&v=184) |
[Three Yellow Crossovers](https://xkcd.com/2916/#xt=10&yt=81&v=1092) |
[Unnecessary Complications with mediocre outcome](https://xkcd.com/2916/#xt=6&yt=8&v=121) |
[i warned you about the stairs](https://xkcd.com/2916/#xt=10&yt=77&v=1019) |
[SEE YOU, SPACE CHEERLEADER](https://xkcd.com/2916/#xt=8&yt=4&v=84) |
[Wait, gravity works how?](https://xkcd.com/2916/#xt=10&yt=91&v=1215) |
[Loop de Loop](https://xkcd.com/2916/#xt=10&yt=9&v=119) |
[Bounce under the bun](https://xkcd.com/2916/#xt=5&yt=57&v=794) |
[not sure this is feasible](https://xkcd.com/2916/#xt=7&yt=27&v=416) |
[uncombineinator](https://xkcd.com/2916/#xt=5&yt=70&v=955) |
[Metabolic reprocessing](https://xkcd.com/2916/#xt=5&yt=31&v=464) |
[Objective: 100% accuracy](https://xkcd.com/2916/#xt=7&yt=85&v=1140) |
[The dragon!  The dragon!  The dragon!  The dragon! ...](https://xkcd.com/2916/#xt=1&yt=83&v=1106) |
[Descent](https://xkcd.com/2916/#xt=5&yt=7&v=109) |
[Q-switched LINAC](https://xkcd.com/2916/#xt=0&yt=17&v=181) |
[Blue is lighter than green](https://xkcd.com/2916/#xt=6&yt=63&v=871) |
[x](https://xkcd.com/2916/#xt=11&yt=0&v=17) |
[sword](https://xkcd.com/2916/#xt=2&yt=0&v=3) |
[Surfing the Stream](https://xkcd.com/2916/#xt=6&yt=21&v=345) |
[Singing in the rain](https://xkcd.com/2916/#xt=5&yt=80&v=1079) |
[how to not sort colors (colorized) 2](https://xkcd.com/2916/#xt=2&yt=12&v=178) |
[DIY antigravity color sorter](https://xkcd.com/2916/#xt=1&yt=56&v=772) |
[Sure hope no one around me cares about gravity](https://xkcd.com/2916/#xt=3&yt=89&v=1185) |
[now that's what I call engineering](https://xkcd.com/2916/#xt=5&yt=14&v=253) |
[air filtration](https://xkcd.com/2916/#xt=2&yt=6&v=61) |
[Spooky action](https://xkcd.com/2916/#xt=2&yt=90&v=1200) |
[Cyclotron](https://xkcd.com/2916/#xt=2&yt=41&v=593) |
[color correction on the fly](https://xkcd.com/2916/#xt=5&yt=59&v=818) |
[Pepper Grinder](https://xkcd.com/2916/#xt=1&yt=42&v=601) |
[Air Travel](https://xkcd.com/2916/#xt=4&yt=66&v=908) |
["I think the Interns are taking care of it.](https://xkcd.com/2916/#xt=8&yt=15&v=221) |
[Cyclone tower](https://xkcd.com/2916/#xt=10&yt=22&v=358) |
[Shoot and test](https://xkcd.com/2916/#xt=9&yt=56&v=785) |
[defying expectations - a Visual Essay](https://xkcd.com/2916/#xt=1&yt=15&v=230) |
[get outta here](https://xkcd.com/2916/#xt=7&yt=64&v=875) |
[Stay in your lane](https://xkcd.com/2916/#xt=9&yt=75&v=1024) |
[The Hammer In The Stone](https://xkcd.com/2916/#xt=3&yt=55&v=763) |
[The "I can't believe it actually works"](https://xkcd.com/2916/#xt=7&yt=7&v=111) |
[Reverse Gravity](https://xkcd.com/2916/#xt=7&yt=52&v=731) |
[I got a cat! ...but, I got a cat!](https://xkcd.com/2916/#xt=8&yt=87&v=1165) |
[The long way around](https://xkcd.com/2916/#xt=3&yt=6&v=65) |
[cat pinball](https://xkcd.com/2916/#xt=0&yt=42&v=600) |
[Galton Board](https://xkcd.com/2916/#xt=8&yt=78&v=1051) |
[all the stuff i could've used](https://xkcd.com/2916/#xt=0&yt=77&v=1037) |
[Gravity assisted particle accelerator](https://xkcd.com/2916/#xt=0&yt=85&v=1133) |
[BG Output; All Color Filter?](https://xkcd.com/2916/#xt=1&yt=72&v=973) |
[60% of the time it works every time](https://xkcd.com/2916/#xt=4&yt=22&v=346) |
[Kitty Kitty](https://xkcd.com/2916/#xt=0&yt=31&v=441) |
[Potato ](https://xkcd.com/2916/#xt=10&yt=80&v=1078) |
[?](https://xkcd.com/2916/#xt=0&yt=5&v=26) |
[I'll take you roundabout](https://xkcd.com/2916/#xt=5&yt=76&v=1027) |
[xkcd's biggest fan](https://xkcd.com/2916/#xt=11&yt=5&v=102) |
[teeter-totter love](https://xkcd.com/2916/#xt=3&yt=32&v=476) |
[Hands free 2 - replusive](https://xkcd.com/2916/#xt=10&yt=10&v=138) |
[the chute](https://xkcd.com/2916/#xt=2&yt=21&v=317) |
[there's an eclipse but you still have to work](https://xkcd.com/2916/#xt=7&yt=79&v=1066) |
[2](https://xkcd.com/2916/#xt=0&yt=21&v=306) |
[Twin Turbine](https://xkcd.com/2916/#xt=0&yt=56&v=770) |
[has anyone figured out how this game determines which machines to show publicly yet?](https://xkcd.com/2916/#xt=11&yt=13&v=211) |
[The factory](https://xkcd.com/2916/#xt=10&yt=76&v=1020) |
[Red Mountain](https://xkcd.com/2916/#xt=11&yt=80&v=1077) |
[Gravitic Sorter](https://xkcd.com/2916/#xt=5&yt=81&v=1088) |
[Stick :3](https://xkcd.com/2916/#xt=1&yt=54&v=749) |
[cannon vs. stochastic windtunnel](https://xkcd.com/2916/#xt=3&yt=35&v=520) |
[school skipping machine 2000](https://xkcd.com/2916/#xt=4&yt=47&v=665) |
[It just works](https://xkcd.com/2916/#xt=11&yt=89&v=1190) |
[Black Hole Parachute](https://xkcd.com/2916/#xt=9&yt=49&v=695) |
[tee hee](https://xkcd.com/2916/#xt=0&yt=26&v=337) |
[snow globe](https://xkcd.com/2916/#xt=11&yt=58&v=800) |
[goodsort](https://xkcd.com/2916/#xt=5&yt=51&v=715) |
[double check](https://xkcd.com/2916/#xt=2&yt=71&v=963) |
[The last arcade has closed forever](https://xkcd.com/2916/#xt=6&yt=73&v=991) |
[kitty korner](https://xkcd.com/2916/#xt=7&yt=73&v=992) |
[cats and wabits](https://xkcd.com/2916/#xt=11&yt=46&v=648) |
[the sword of judgement](https://xkcd.com/2916/#xt=9&yt=55&v=777) |
[green superhighway](https://xkcd.com/2916/#xt=5&yt=43&v=615) |
[What goes up](https://xkcd.com/2916/#xt=2&yt=18&v=271) |
[4-panel comic 2: The Cat](https://xkcd.com/2916/#xt=3&yt=93&v=1230) |
[crosswinds](https://xkcd.com/2916/#xt=6&yt=25&v=396) |
[black hole 2: electric boogaloo](https://xkcd.com/2916/#xt=1&yt=9&v=128) |
[Thirsty](https://xkcd.com/2916/#xt=2&yt=69&v=943) |
[railgun ran out of budget](https://xkcd.com/2916/#xt=8&yt=27&v=414) |
[Crazy 2](https://xkcd.com/2916/#xt=3&yt=34&v=507) |
[Lorentz's Catio](https://xkcd.com/2916/#xt=4&yt=31&v=463) |
[wILL THIS REALLY SORT, HONEY?](https://xkcd.com/2916/#xt=11&yt=40&v=581) |
[!important](https://xkcd.com/2916/#xt=9&yt=40&v=560) |
[planet](https://xkcd.com/2916/#xt=0&yt=69&v=945) |
[i'm A big fan](https://xkcd.com/2916/#xt=3&yt=10&v=201) |
[duality](https://xkcd.com/2916/#xt=9&yt=15&v=245) |
[SO you know the green ones? what if....](https://xkcd.com/2916/#xt=5&yt=90&v=1201) |
[I'll Stop Making Railguns when the railguns stop being the best solution to every engineering challenge](https://xkcd.com/2916/#xt=10&yt=83&v=1116) |
[swirl](https://xkcd.com/2916/#xt=1&yt=70&v=950) |
[It Just works](https://xkcd.com/2916/#xt=5&yt=1&v=28) |
[pinball... hexagon squirrel?!](https://xkcd.com/2916/#xt=6&yt=28&v=421) |
[Anxious blacksmith’s dreams](https://xkcd.com/2916/#xt=8&yt=16&v=304) |
[Stroll'in](https://xkcd.com/2916/#xt=9&yt=2&v=82) |
[Dueling Pneumatics](https://xkcd.com/2916/#xt=5&yt=62&v=854) |
[chaos II](https://xkcd.com/2916/#xt=9&yt=50&v=701) |
[Worst. Sorter. ever.](https://xkcd.com/2916/#xt=8&yt=40&v=578) |
[BONKland](https://xkcd.com/2916/#xt=8&yt=16&v=256) |
[Repulsors](https://xkcd.com/2916/#xt=7&yt=1&v=45) |
[Fancy_CAt](https://xkcd.com/2916/#xt=3&yt=54&v=746) |
[Windy Boards](https://xkcd.com/2916/#xt=5&yt=48&v=678) |
[Piper](https://xkcd.com/2916/#xt=9&yt=55&v=776) |
[Woodframe](https://xkcd.com/2916/#xt=4&yt=36&v=539) |
[Small hadron collider](https://xkcd.com/2916/#xt=9&yt=48&v=677) |
[meow](https://xkcd.com/2916/#xt=2&yt=64&v=883) |
[Boink-swoosh](https://xkcd.com/2916/#xt=8&yt=88&v=1173) |
[combinator separator](https://xkcd.com/2916/#xt=5&yt=72&v=976) |
[Just like clockwork](https://xkcd.com/2916/#xt=10&yt=67&v=919) |
[thread the needle](https://xkcd.com/2916/#xt=1&yt=5&v=47) |
[how many fans does a pillow fort need](https://xkcd.com/2916/#xt=1&yt=55&v=771) |
[It starts so calmly](https://xkcd.com/2916/#xt=3&yt=48&v=688) |
[gentle descent](https://xkcd.com/2916/#xt=9&yt=13&v=206) |
[Defiance Apparatus](https://xkcd.com/2916/#xt=7&yt=36&v=521) |
[We have a black hole at home... the black hole at home:](https://xkcd.com/2916/#xt=9&yt=58&v=802) |
[Drawbridge](https://xkcd.com/2916/#xt=0&yt=20&v=300) |
[Dual Wield ⚔️ for colour Correction 🔨](https://xkcd.com/2916/#xt=2&yt=68&v=934) |
[Makes Sense.](https://xkcd.com/2916/#xt=0&yt=89&v=1182) |
[Flush](https://xkcd.com/2916/#xt=9&yt=63&v=864) |
[dont mind the collisions](https://xkcd.com/2916/#xt=8&yt=20&v=289) |
[thank god there are enough blues for the cat](https://xkcd.com/2916/#xt=6&yt=55&v=759) |
[rabbits' 4-corners machine](https://xkcd.com/2916/#xt=11&yt=78&v=1026) |
[The Turtle Moves](https://xkcd.com/2916/#xt=6&yt=74&v=1006) |
[wash em up](https://xkcd.com/2916/#xt=6&yt=9&v=141) |
[Source Leak](https://xkcd.com/2916/#xt=2&yt=72&v=974) |
[H. Gravity Wells](https://xkcd.com/2916/#xt=2&yt=54&v=747) |
[Why do we have all these fans, anyway?](https://xkcd.com/2916/#xt=0&yt=83&v=1105) |
[we can lose them in the black hole!](https://xkcd.com/2916/#xt=0&yt=88&v=1181) |
[synchronized fans](https://xkcd.com/2916/#xt=5&yt=92&v=1233) |
[Classify](https://xkcd.com/2916/#xt=11&yt=41&v=599) |
[that's them sorted...](https://xkcd.com/2916/#xt=4&yt=86&v=1152) |
[Eclipse observation station](https://xkcd.com/2916/#xt=4&yt=38&v=555) |
[Sisyphus](https://xkcd.com/2916/#xt=3&yt=44&v=642) |
[sift four cups flour](https://xkcd.com/2916/#xt=2&yt=67&v=916) |
[Somewhat sorted](https://xkcd.com/2916/#xt=8&yt=64&v=877) |
[probably deterministic park](https://xkcd.com/2916/#xt=1&yt=86&v=1155) |
[breakout](https://xkcd.com/2916/#xt=2&yt=22&v=322) |
[Red sky at night, sailors delight](https://xkcd.com/2916/#xt=10&yt=54&v=758) |
[import antigravity](https://xkcd.com/2916/#xt=0&yt=48&v=671) |
[Trust Me it works](https://xkcd.com/2916/#xt=9&yt=20&v=314) |
[pool](https://xkcd.com/2916/#xt=7&yt=17&v=242) |
[sorter](https://xkcd.com/2916/#xt=6&yt=32&v=468) |
[bogosort](https://xkcd.com/2916/#xt=7&yt=31&v=453) |
[Sysiphean Task (Or, The Green Ball Go Up)](https://xkcd.com/2916/#xt=2&yt=48&v=684) |
[scientific progress goes](https://xkcd.com/2916/#xt=8&yt=59&v=815) |
[Deterministic pinball](https://xkcd.com/2916/#xt=4&yt=17&v=267) |
[Gyratory system](https://xkcd.com/2916/#xt=10&yt=74&v=1010) |
[which way do we go?](https://xkcd.com/2916/#xt=8&yt=45&v=656) |
[dangerous crossing](https://xkcd.com/2916/#xt=5&yt=77&v=1044) |
[Mass Attraction](https://xkcd.com/2916/#xt=2&yt=49&v=691) |
[We're done here](https://xkcd.com/2916/#xt=10&yt=82&v=1096) |
[They MiGht Be Sorted](https://xkcd.com/2916/#xt=9&yt=68&v=920) |
[yellow get multiple chances, just because](https://xkcd.com/2916/#xt=2&yt=84&v=1124) |
[I'm not a very good juggler](https://xkcd.com/2916/#xt=2&yt=74&v=998) |
[4 streams](https://xkcd.com/2916/#xt=9&yt=81&v=1094) |
[A royal throne for a king bun](https://xkcd.com/2916/#xt=6&yt=56&v=780) |
[slurp](https://xkcd.com/2916/#xt=9&yt=37&v=535) |
[Cat Bat pinball](https://xkcd.com/2916/#xt=0&yt=51&v=719) |
[Crossroads](https://xkcd.com/2916/#xt=7&yt=8&v=135) |
[Sierpinski](https://xkcd.com/2916/#xt=5&yt=53&v=724) |
[wood'n'wind](https://xkcd.com/2916/#xt=8&yt=51&v=720) |
[null](https://xkcd.com/2916/#xt=9&yt=61&v=847) |
[Basic Ball Bounce Brew](https://xkcd.com/2916/#xt=10&yt=41&v=598) |
[How pinball should be played](https://xkcd.com/2916/#xt=0&yt=30&v=436) |
[egg holder](https://xkcd.com/2916/#xt=11&yt=23&v=372) |
[The Kessle run](https://xkcd.com/2916/#xt=4&yt=11&v=172) |
[Sortenflugen](https://xkcd.com/2916/#xt=3&yt=45&v=644) |
[Leaky pipes](https://xkcd.com/2916/#xt=5&yt=6&v=95) |
[Bonk line](https://xkcd.com/2916/#xt=7&yt=3&v=69) |
[Float backup filters](https://xkcd.com/2916/#xt=11&yt=45&v=635) |
[Gravity-assisted bonkotron](https://xkcd.com/2916/#xt=6&yt=0&v=11) |
[### Multiball 2 ###](https://xkcd.com/2916/#xt=5&yt=38&v=554) |
[Combine and Separate](https://xkcd.com/2916/#xt=5&yt=74&v=1001) |
[disco party](https://xkcd.com/2916/#xt=1&yt=73&v=995) |
[As the walls crumble](https://xkcd.com/2916/#xt=3&yt=75&v=1014) |
[oxygen/nitrogen separator](https://xkcd.com/2916/#xt=6&yt=57&v=793) |
[make it rain](https://xkcd.com/2916/#xt=2&yt=11&v=149) |
[Particle accelerator](https://xkcd.com/2916/#xt=3&yt=86&v=1153) |
[medium-speed shredder](https://xkcd.com/2916/#xt=5&yt=58&v=806) |
[its like a laser except it isn't](https://xkcd.com/2916/#xt=2&yt=40&v=586) |
[i'd like to buy a vowel](https://xkcd.com/2916/#xt=4&yt=62&v=855) |
[relentlessly rectilinear](https://xkcd.com/2916/#xt=2&yt=33&v=491) |
[anything to keep production going](https://xkcd.com/2916/#xt=7&yt=32&v=482) |
[pipe dream](https://xkcd.com/2916/#xt=4&yt=3&v=49) |
[Everyone does their part](https://xkcd.com/2916/#xt=5&yt=41&v=592) |
[He's Bonkers](https://xkcd.com/2916/#xt=11&yt=30&v=516) |
[Electric Kittens](https://xkcd.com/2916/#xt=7&yt=82&v=1098) |
[Big Fan of the bouncy castle](https://xkcd.com/2916/#xt=7&yt=26&v=401) |
[inconvenient](https://xkcd.com/2916/#xt=0&yt=18&v=241) |
[load bearing cat](https://xkcd.com/2916/#xt=3&yt=47&v=668) |
[Where the wind Takes you](https://xkcd.com/2916/#xt=6&yt=2&v=50) |
[redacted antigravity](https://xkcd.com/2916/#xt=6&yt=54&v=753) |
[SS Probably Deterministic](https://xkcd.com/2916/#xt=11&yt=61&v=837) |
[POpcorn](https://xkcd.com/2916/#xt=10&yt=36&v=532) |
[LBC](https://xkcd.com/2916/#xt=9&yt=65&v=896) |
[thirsty](https://xkcd.com/2916/#xt=8&yt=23&v=375) |
[Brickout Blues](https://xkcd.com/2916/#xt=6&yt=80&v=1075) |
[attempting to pierce the bun field](https://xkcd.com/2916/#xt=11&yt=60&v=834) |
[particle accelerator (too fast edition)](https://xkcd.com/2916/#xt=0&yt=82&v=1104) |
[Tri-sorter with a cat!](https://xkcd.com/2916/#xt=9&yt=71&v=970) |
[accursed criss cross](https://xkcd.com/2916/#xt=5&yt=55&v=762) |
[needless](https://xkcd.com/2916/#xt=1&yt=66&v=906) |
[canals](https://xkcd.com/2916/#xt=10&yt=8&v=134) |
[Oil and Water bubble toy](https://xkcd.com/2916/#xt=0&yt=23&v=311) |
[The intestines](https://xkcd.com/2916/#xt=9&yt=4&v=80) |
[The jugglers](https://xkcd.com/2916/#xt=11&yt=0&v=40) |
[Chaos sorter](https://xkcd.com/2916/#xt=10&yt=74&v=1011) |
[crisscross](https://xkcd.com/2916/#xt=9&yt=21&v=354) |
[Contactless Payment](https://xkcd.com/2916/#xt=0&yt=18&v=260) |
[balls galore](https://xkcd.com/2916/#xt=3&yt=20&v=333) |
[Defying Phsyics](https://xkcd.com/2916/#xt=11&yt=15&v=276) |
[upside down](https://xkcd.com/2916/#xt=1&yt=67&v=915) |
[selecta](https://xkcd.com/2916/#xt=3&yt=73&v=988) |
[tiny](https://xkcd.com/2916/#xt=9&yt=19&v=282) |
[Eowyn will handle it](https://xkcd.com/2916/#xt=6&yt=37&v=530) |
[Red Boink, Blue FlIES](https://xkcd.com/2916/#xt=7&yt=5&v=91) |
[Plan for Failure](https://xkcd.com/2916/#xt=1&yt=60&v=827) |
[Filtration by Levitation](https://xkcd.com/2916/#xt=2&yt=44&v=622) |
[What do you mean, the tomatoes aren't even ripe? We didn't buy this tomato Sorter for nothing!](https://xkcd.com/2916/#xt=3&yt=40&v=567) |
[Double half pipe](https://xkcd.com/2916/#xt=10&yt=7&v=118) |
[Meow Mix](https://xkcd.com/2916/#xt=2&yt=88&v=1179) |
[The Optics Final](https://xkcd.com/2916/#xt=0&yt=45&v=625) |
[bonk and forth](https://xkcd.com/2916/#xt=1&yt=29&v=412) |
[cross the streams twice](https://xkcd.com/2916/#xt=4&yt=91&v=1211) |
[Blue is the warmest colour](https://xkcd.com/2916/#xt=8&yt=31&v=470) |
[Prism Science](https://xkcd.com/2916/#xt=10&yt=92&v=1227) |
[Amazing kittens](https://xkcd.com/2916/#xt=1&yt=90&v=1194) |
[crossover episode](https://xkcd.com/2916/#xt=10&yt=34&v=502) |
[down the rabbit hole](https://xkcd.com/2916/#xt=5&yt=45&v=639) |
[AutoWash](https://xkcd.com/2916/#xt=11&yt=16&v=293) |
[tempo control](https://xkcd.com/2916/#xt=4&yt=63&v=869) |
[Particle accelerator?](https://xkcd.com/2916/#xt=11&yt=72&v=983) |
[Skeet Shoot](https://xkcd.com/2916/#xt=3&yt=10&v=153) |
[3d stuff gives me a headache](https://xkcd.com/2916/#xt=11&yt=32&v=471) |
[the very accurate separator TM](https://xkcd.com/2916/#xt=3&yt=10&v=202) |
[you'll never take me alive!](https://xkcd.com/2916/#xt=0&yt=71&v=961) |
[probabilistic bounce house](https://xkcd.com/2916/#xt=3&yt=13&v=191) |
[accelerator](https://xkcd.com/2916/#xt=7&yt=48&v=681) |
[Wind sorter](https://xkcd.com/2916/#xt=3&yt=18&v=312) |
[gold rubeberg](https://xkcd.com/2916/#xt=5&yt=22&v=363) |
[the council advises against colliding](https://xkcd.com/2916/#xt=0&yt=18&v=247) |
[The smithy's Rest](https://xkcd.com/2916/#xt=1&yt=10&v=132) |
[don't forget to change the directions of your fans for summer!](https://xkcd.com/2916/#xt=0&yt=18&v=254) |
[#10438](https://xkcd.com/2916/#xt=7&yt=38&v=547) |
[store room](https://xkcd.com/2916/#xt=3&yt=36&v=534) |
[I am the Lorax, I speak for the trees](https://xkcd.com/2916/#xt=4&yt=77&v=1043) |
[THE AMBIENT VOID OF SELF-CONGRATULATORY BUT ULTIMATELY EMPTY RHETORIC](https://xkcd.com/2916/#xt=8&yt=3&v=76) |
[the filter](https://xkcd.com/2916/#xt=7&yt=21&v=349) |
[i think youre nuts](https://xkcd.com/2916/#xt=4&yt=12&v=192) |
[I have trapped him](https://xkcd.com/2916/#xt=3&yt=15&v=250) |
[I need to vent](https://xkcd.com/2916/#xt=3&yt=2&v=36) |
[leap of faith](https://xkcd.com/2916/#xt=9&yt=82&v=1095) |
[XKCD 303](https://xkcd.com/2916/#xt=1&yt=7&v=67) |
[loss](https://xkcd.com/2916/#xt=4&yt=15&v=261) |
[AIRSORT](https://xkcd.com/2916/#xt=5&yt=27&v=413) |
[The Nine Lives of Erwin Schrödinger](https://xkcd.com/2916/#xt=10&yt=53&v=744) |
[i feel buoyant about this one](https://xkcd.com/2916/#xt=4&yt=80&v=1080) |
[Schrödinger's wonderland](https://xkcd.com/2916/#xt=11&yt=33&v=486) |
[Filterrer](https://xkcd.com/2916/#xt=0&yt=18&v=239) |
[swordplay](https://xkcd.com/2916/#xt=4&yt=59&v=819) |
[Prism twirler](https://xkcd.com/2916/#xt=8&yt=7&v=113) |
[probably deterministic parade](https://xkcd.com/2916/#xt=3&yt=77&v=1045) |
[Brownian Motion](https://xkcd.com/2916/#xt=1&yt=20&v=281) |
[Sudo Buy me Some Playpen Balls](https://xkcd.com/2916/#xt=4&yt=39&v=575) |
[it's probably](https://xkcd.com/2916/#xt=8&yt=76&v=1040) |
[If I were a sculptor, but then again no.](https://xkcd.com/2916/#xt=8&yt=66&v=894) |
[swat](https://xkcd.com/2916/#xt=8&yt=85&v=1141) |
[hopefully only one green at a time](https://xkcd.com/2916/#xt=11&yt=82&v=1117) |
[The Betrayal...](https://xkcd.com/2916/#xt=1&yt=14&v=190) |
[THE cat-inator](https://xkcd.com/2916/#xt=0&yt=35&v=495) |
[Flippin' Magnets. How do they work?](https://xkcd.com/2916/#xt=11&yt=79&v=1068) |
[fewer bonks than expected](https://xkcd.com/2916/#xt=5&yt=86&v=1151) |
[who needs prisms anyway?](https://xkcd.com/2916/#xt=1&yt=89&v=1183) |
[Superfast crossing](https://xkcd.com/2916/#xt=8&yt=80&v=1081) |
[100% Deterministic](https://xkcd.com/2916/#xt=5&yt=36&v=540) |
[can you please lend a hand?](https://xkcd.com/2916/#xt=0&yt=66&v=905) |
[Too much KSP](https://xkcd.com/2916/#xt=5&yt=2&v=46) |
[BLUE Quality control by cat](https://xkcd.com/2916/#xt=1&yt=77&v=1038) |
[Pinball Bouncer](https://xkcd.com/2916/#xt=0&yt=1&v=5) |
[Squirrels are boring, trampolines are better](https://xkcd.com/2916/#xt=4&yt=53&v=739) |
[laziness ](https://xkcd.com/2916/#xt=11&yt=11&v=199) |
[Simple](https://xkcd.com/2916/#xt=9&yt=12&v=200) |
[Do a flip](https://xkcd.com/2916/#xt=8&yt=37&v=519) |
[the great filter](https://xkcd.com/2916/#xt=3&yt=1&v=31) |
[the altar](https://xkcd.com/2916/#xt=11&yt=83&v=1119) |
[krazy copter hats!](https://xkcd.com/2916/#xt=9&yt=53&v=743) |
[a bonk-determined tesla valve](https://xkcd.com/2916/#xt=0&yt=26&v=355) |
[Team Rocket is blasting off again](https://xkcd.com/2916/#xt=5&yt=24&v=380) |
[Malus Pummela](https://xkcd.com/2916/#xt=9&yt=25&v=379) |
[double loop](https://xkcd.com/2916/#xt=7&yt=15&v=214) |
[we're out of vermouth!](https://xkcd.com/2916/#xt=9&yt=38&v=550) |
[bonk holes were one of einstein's lesser-known predictions](https://xkcd.com/2916/#xt=1&yt=93&v=1229) |
[Safe from emails](https://xkcd.com/2916/#xt=6&yt=19&v=332) |
[test2](https://xkcd.com/2916/#xt=9&yt=19&v=286) |
[Klaus](https://xkcd.com/2916/#xt=9&yt=31&v=478) |
[improbable failure rate](https://xkcd.com/2916/#xt=11&yt=87&v=1169) |
[XKCD GLados Fight (Portal)](https://xkcd.com/2916/#xt=10&yt=65&v=901) |
[nerf the fans](https://xkcd.com/2916/#xt=2&yt=91&v=1210) |
[Maze runner](https://xkcd.com/2916/#xt=9&yt=69&v=924) |
[the bun cannon](https://xkcd.com/2916/#xt=7&yt=50&v=702) |
[Final boss](https://xkcd.com/2916/#xt=3&yt=65&v=889) |
[Nope](https://xkcd.com/2916/#xt=10&yt=21&v=359) |
[overcomplication is fun!](https://xkcd.com/2916/#xt=3&yt=64&v=880) |
[Bring forth the Holy Handgrenade!](https://xkcd.com/2916/#xt=0&yt=40&v=587) |
[Big Mixer](https://xkcd.com/2916/#xt=2&yt=7&v=101) |
[late to work](https://xkcd.com/2916/#xt=8&yt=67&v=897) |
[boing](https://xkcd.com/2916/#xt=8&yt=19&v=277) |
[Flying kitten](https://xkcd.com/2916/#xt=7&yt=56&v=783) |
[Void in reverse](https://xkcd.com/2916/#xt=0&yt=2&v=13) |
[Polyhammory](https://xkcd.com/2916/#xt=1&yt=59&v=822) |
[Traffic jam](https://xkcd.com/2916/#xt=1&yt=46&v=647) |
[The Core (2003, colorized)](https://xkcd.com/2916/#xt=0&yt=86&v=1156) |
[flughenvaghen](https://xkcd.com/2916/#xt=2&yt=3&v=34) |
[Mostly Harmless](https://xkcd.com/2916/#xt=4&yt=18&v=318) |
[Cat Sort](https://xkcd.com/2916/#xt=4&yt=30&v=466) |
[all floating sorts](https://xkcd.com/2916/#xt=10&yt=75&v=1018) |
[pillow fort](https://xkcd.com/2916/#xt=11&yt=88&v=1170) |
[pLarf](https://xkcd.com/2916/#xt=8&yt=26&v=402) |
[stop trying to hit me and hit me](https://xkcd.com/2916/#xt=9&yt=92&v=1218) |
[helvetinkone](https://xkcd.com/2916/#xt=1&yt=87&v=1158) |
[the sorting hat](https://xkcd.com/2916/#xt=9&yt=24&v=376) |
[Twirl and a Dunk](https://xkcd.com/2916/#xt=4&yt=72&v=975) |
[Ultimate Ballpit Showdown](https://xkcd.com/2916/#xt=2&yt=8&v=127) |
[Just Blue, No Garbage, Maybe](https://xkcd.com/2916/#xt=4&yt=64&v=879) |
[oof](https://xkcd.com/2916/#xt=4&yt=23&v=369) |
[trans rights](https://xkcd.com/2916/#xt=4&yt=14&v=249) |
[mechanical relay](https://xkcd.com/2916/#xt=2&yt=70&v=960) |
[Normal distribution](https://xkcd.com/2916/#xt=7&yt=27&v=423) |
[YelloGreenPerfect](https://xkcd.com/2916/#xt=10&yt=31&v=473) |
[Spooky action at a distance](https://xkcd.com/2916/#xt=7&yt=34&v=499) |
[The fun we could have had](https://xkcd.com/2916/#xt=0&yt=8&v=60) |
[Anvil cat slips the surly bonds of earth](https://xkcd.com/2916/#xt=11&yt=18&v=295) |
[The Trial of Wind](https://xkcd.com/2916/#xt=10&yt=47&v=675) |
[radioactive decay of yellow element](https://xkcd.com/2916/#xt=2&yt=65&v=893) |
[I seriously doubt this pillow fort is up to code](https://xkcd.com/2916/#xt=0&yt=47&v=654) |
[Injection moulding](https://xkcd.com/2916/#xt=8&yt=1&v=41) |
[grinds my gears](https://xkcd.com/2916/#xt=0&yt=79&v=1060) |
[cyclone](https://xkcd.com/2916/#xt=3&yt=14&v=228) |
[All Hail Hexagon squirrel](https://xkcd.com/2916/#xt=0&yt=7&v=55) |
[Glorious](https://xkcd.com/2916/#xt=9&yt=44&v=621) |
[Polynomial Time](https://xkcd.com/2916/#xt=6&yt=60&v=829) |
[tuned bricks](https://xkcd.com/2916/#xt=4&yt=47&v=690) |
[the airship](https://xkcd.com/2916/#xt=10&yt=13&v=233) |
[Kerplunkinator](https://xkcd.com/2916/#xt=1&yt=38&v=563) |
[sorting station](https://xkcd.com/2916/#xt=7&yt=53&v=741) |
[Blue Shall Not Pass](https://xkcd.com/2916/#xt=4&yt=41&v=591) |
[Fan power](https://xkcd.com/2916/#xt=4&yt=19&v=329) |
[no](https://xkcd.com/2916/#xt=6&yt=18&v=331) |
[junction 9000](https://xkcd.com/2916/#xt=4&yt=35&v=536) |
[They call it dunamancy](https://xkcd.com/2916/#xt=3&yt=38&v=565) |
[Bonk sort](https://xkcd.com/2916/#xt=7&yt=54&v=756) |
[pipe-works](https://xkcd.com/2916/#xt=5&yt=44&v=631) |
[Overflow drains](https://xkcd.com/2916/#xt=7&yt=86&v=1149) |
[Safe in our pillow fort](https://xkcd.com/2916/#xt=6&yt=34&v=498) |
[FA, A long long way to run](https://xkcd.com/2916/#xt=4&yt=60&v=831) |
[4-panel comic: sea-saw bun](https://xkcd.com/2916/#xt=9&yt=62&v=849) |
[The not so great filter](https://xkcd.com/2916/#xt=4&yt=54&v=755) |
[The siege](https://xkcd.com/2916/#xt=3&yt=78&v=1056) |
[Bounce Grouse](https://xkcd.com/2916/#xt=8&yt=5&v=86) |
[flutterpellets](https://xkcd.com/2916/#xt=6&yt=20&v=342) |
[under construction](https://xkcd.com/2916/#xt=10&yt=60&v=835) |
[Color Correction](https://xkcd.com/2916/#xt=6&yt=27&v=418) |
[just hoping someone didn't sort the input](https://xkcd.com/2916/#xt=7&yt=68&v=921) |
[Agitate and Evaporate](https://xkcd.com/2916/#xt=0&yt=59&v=823) |
[The Squirrel Overseer](https://xkcd.com/2916/#xt=10&yt=2&v=93) |
[I Don't Think This Is OSHA Compliant](https://xkcd.com/2916/#xt=8&yt=15&v=220) |
[Fishmolish](https://xkcd.com/2916/#xt=11&yt=69&v=949) |
[fractional distillation](https://xkcd.com/2916/#xt=5&yt=39&v=576) |
[Whose Idea was it to let the cats in here?](https://xkcd.com/2916/#xt=7&yt=35&v=514) |
[40-swat bulb](https://xkcd.com/2916/#xt=3&yt=33&v=490) |
[TIL why box fans exist](https://xkcd.com/2916/#xt=1&yt=51&v=721) |
[at its heart, the machine requires a gentle touch](https://xkcd.com/2916/#xt=6&yt=70&v=956) |
[null](https://xkcd.com/2916/#xt=2&yt=37&v=542) |
[Free floating](https://xkcd.com/2916/#xt=8&yt=10&v=156) |
[Basic Bouncer Funnel](https://xkcd.com/2916/#xt=10&yt=12&v=217) |
[Pinball whiskers](https://xkcd.com/2916/#xt=0&yt=65&v=887) |
[Filter 8](https://xkcd.com/2916/#xt=8&yt=69&v=947) |
[Probable failure v0.1](https://xkcd.com/2916/#xt=10&yt=21&v=360) |
[Only sort if you have to](https://xkcd.com/2916/#xt=6&yt=86&v=1150) |
[treadmill of life](https://xkcd.com/2916/#xt=11&yt=37&v=552) |
[Spin to win](https://xkcd.com/2916/#xt=2&yt=50&v=705) |
[somehow it works](https://xkcd.com/2916/#xt=3&yt=90&v=1206) |
[reasonable colour-sorter](https://xkcd.com/2916/#xt=6&yt=72&v=985) |
[emperor bun's wrath](https://xkcd.com/2916/#xt=6&yt=81&v=1089) |
[swish!](https://xkcd.com/2916/#xt=1&yt=40&v=583) |
[Chaos in a box](https://xkcd.com/2916/#xt=5&yt=13&v=227) |
[working model of hot gas](https://xkcd.com/2916/#xt=11&yt=91&v=1216) |
[circling the drain](https://xkcd.com/2916/#xt=7&yt=62&v=857) |
[rgb](https://xkcd.com/2916/#xt=9&yt=46&v=658) |
[To Boink or Not To Boink](https://xkcd.com/2916/#xt=1&yt=12&v=165) |
[Not a transistor](https://xkcd.com/2916/#xt=8&yt=20&v=291) |
[closed source](https://xkcd.com/2916/#xt=10&yt=57&v=789) |
[Helicopter Assistance](https://xkcd.com/2916/#xt=1&yt=39&v=569) |
[Balanced](https://xkcd.com/2916/#xt=2&yt=53&v=737) |
[bonk industries](https://xkcd.com/2916/#xt=0&yt=18&v=238) |
[Double Rainbow](https://xkcd.com/2916/#xt=10&yt=5&v=99) |
[autocollider](https://xkcd.com/2916/#xt=2&yt=9&v=130) |
[Gravity assist](https://xkcd.com/2916/#xt=1&yt=22&v=308) |
[ANOTHER LAW](https://xkcd.com/2916/#xt=11&yt=71&v=986) |
[good enough](https://xkcd.com/2916/#xt=10&yt=16&v=280) |
[Ball engine](https://xkcd.com/2916/#xt=7&yt=45&v=651) |
[cat power](https://xkcd.com/2916/#xt=0&yt=37&v=531) |
[The gears that power the tubes](https://xkcd.com/2916/#xt=6&yt=53&v=740) |
[The Bonk Mech](https://xkcd.com/2916/#xt=9&yt=7&v=115) |
[Rotatory press](https://xkcd.com/2916/#xt=6&yt=30&v=446) |
[I Don't think that's regulation fencing](https://xkcd.com/2916/#xt=11&yt=48&v=676) |
[Oops! All BonkS!](https://xkcd.com/2916/#xt=9&yt=9&v=216) |
[Half Normal](https://xkcd.com/2916/#xt=5&yt=65&v=892) |
[gravity feed](https://xkcd.com/2916/#xt=7&yt=4&v=78) |
[Resistor v87](https://xkcd.com/2916/#xt=5&yt=13&v=223) |
[Dual-Bladed](https://xkcd.com/2916/#xt=9&yt=64&v=874) |
[hammertime](https://xkcd.com/2916/#xt=3&yt=4&v=44) |
[Training the new guy](https://xkcd.com/2916/#xt=10&yt=33&v=494) |
[The Fanspitter contraption](https://xkcd.com/2916/#xt=1&yt=18&v=264) |
[Up N Around launcher](https://xkcd.com/2916/#xt=8&yt=33&v=488) |
[OnlyFans](https://xkcd.com/2916/#xt=3&yt=0&v=7) |
[Fan-Tastic?](https://xkcd.com/2916/#xt=7&yt=27&v=417) |
[The Mistakeinator](https://xkcd.com/2916/#xt=11&yt=8&v=145) |
[cats yay](https://xkcd.com/2916/#xt=10&yt=89&v=1189) |
[Don't even worry about it](https://xkcd.com/2916/#xt=9&yt=59&v=814) |
[Rainbow Pachinko](https://xkcd.com/2916/#xt=9&yt=52&v=730) |
[maximum speed](https://xkcd.com/2916/#xt=7&yt=57&v=792) |
[Triforce Rules](https://xkcd.com/2916/#xt=11&yt=9&v=151) |
[Loop De Loop of Henle](https://xkcd.com/2916/#xt=5&yt=68&v=936) |
[bonkers](https://xkcd.com/2916/#xt=2&yt=79&v=1061) |
[Let's see how well this works on the big one](https://xkcd.com/2916/#xt=3&yt=52&v=727) |
[if at first you don't succeed...](https://xkcd.com/2916/#xt=8&yt=17&v=258) |
[bouncy](https://xkcd.com/2916/#xt=2&yt=1&v=25) |
[Bonko sort](https://xkcd.com/2916/#xt=3&yt=10&v=207) |
[Does my hare look okay?](https://xkcd.com/2916/#xt=0&yt=91&v=1208) |
[Don't Settle For Simple](https://xkcd.com/2916/#xt=5&yt=32&v=474) |
[99% accurate sorting environment](https://xkcd.com/2916/#xt=2&yt=45&v=643) |
[The Great Attractor](https://xkcd.com/2916/#xt=5&yt=23&v=367) |
[Hop Skip and a Jump](https://xkcd.com/2916/#xt=6&yt=48&v=679) |
[This should be able to re-route some wrong-colored inputs](https://xkcd.com/2916/#xt=6&yt=67&v=929) |
[inclined planes](https://xkcd.com/2916/#xt=1&yt=17&v=203) |
[Potential Energy for my Potential Friends, Kinetic Energy for my Real Friends ](https://xkcd.com/2916/#xt=7&yt=67&v=917) |
[cyclotron radiation](https://xkcd.com/2916/#xt=11&yt=26&v=405) |
[Looks so](https://xkcd.com/2916/#xt=2&yt=62&v=860) |
[space oddity](https://xkcd.com/2916/#xt=3&yt=10&v=158) |
[I miss LineRider](https://xkcd.com/2916/#xt=3&yt=17&v=285) |
[a center point that isnt centered](https://xkcd.com/2916/#xt=9&yt=54&v=757) |
[Maxwell's Daemon](https://xkcd.com/2916/#xt=4&yt=84&v=1123) |
[Cross Purposes](https://xkcd.com/2916/#xt=9&yt=2&v=83) |
[really simple machine](https://xkcd.com/2916/#xt=6&yt=14&v=188) |
[recirculator](https://xkcd.com/2916/#xt=1&yt=74&v=997) |
[Black Hole fan](https://xkcd.com/2916/#xt=0&yt=4&v=20) |
[cross](https://xkcd.com/2916/#xt=11&yt=22&v=361) |
[Easter MONDAY at IKEA](https://xkcd.com/2916/#xt=9&yt=39&v=558) |
[Measure once, Sort Twice](https://xkcd.com/2916/#xt=8&yt=68&v=898) |
[Order vs chaos](https://xkcd.com/2916/#xt=7&yt=44&v=637) |
[sortery](https://xkcd.com/2916/#xt=2&yt=61&v=840) |
[an actual honest attempt to sort the balls](https://xkcd.com/2916/#xt=5&yt=12&v=209) |
[faultrap](https://xkcd.com/2916/#xt=2&yt=42&v=602) |
[I need to stop why cant i stop](https://xkcd.com/2916/#xt=10&yt=14&v=248) |
[quarantine](https://xkcd.com/2916/#xt=9&yt=10&v=168) |
[Pressure separator](https://xkcd.com/2916/#xt=8&yt=84&v=1132) |
[Safety First 🛡](https://xkcd.com/2916/#xt=10&yt=73&v=1005) |
[The Jetpack squirrels lair](https://xkcd.com/2916/#xt=3&yt=5&v=52) |
[makeshift Particle accelerator](https://xkcd.com/2916/#xt=11&yt=3&v=62) |
[whooshbonk](https://xkcd.com/2916/#xt=8&yt=19&v=288) |
[Trust me, I know what I'm doing!](https://xkcd.com/2916/#xt=3&yt=63&v=868) |
[Extremely adequate pinball](https://xkcd.com/2916/#xt=0&yt=87&v=1157) |
[Ich bin ein Berliner](https://xkcd.com/2916/#xt=11&yt=54&v=748) |
[Cogwheel Clockworks](https://xkcd.com/2916/#xt=11&yt=6&v=87) |
[Why Mess with Perfection?](https://xkcd.com/2916/#xt=1&yt=62&v=858) |
[530 560nM sorting](https://xkcd.com/2916/#xt=4&yt=4&v=53) |
[Repulsed](https://xkcd.com/2916/#xt=0&yt=3&v=15) |
[Turbo](https://xkcd.com/2916/#xt=2&yt=63&v=867) |
[blow-hard-help](https://xkcd.com/2916/#xt=5&yt=13&v=224) |
[Unite and divide](https://xkcd.com/2916/#xt=7&yt=80&v=1076) |
[loops](https://xkcd.com/2916/#xt=5&yt=42&v=605) |
[Forge](https://xkcd.com/2916/#xt=0&yt=29&v=409) |
[Still not sure how Prisms work](https://xkcd.com/2916/#xt=10&yt=26&v=403) |
[Use the forcefields](https://xkcd.com/2916/#xt=4&yt=1&v=21) |
[highly unsafe](https://xkcd.com/2916/#xt=1&yt=43&v=623) |
[return of the spider](https://xkcd.com/2916/#xt=7&yt=74&v=1002) |
[Open-minded sauron](https://xkcd.com/2916/#xt=3&yt=70&v=953) |
[lunar lander?](https://xkcd.com/2916/#xt=2&yt=27&v=408) |
[Overly Complicated work of art](https://xkcd.com/2916/#xt=1&yt=13&v=177) |
[scintillae](https://xkcd.com/2916/#xt=5&yt=13&v=229) |
[waterwheel](https://xkcd.com/2916/#xt=3&yt=61&v=843) |
[Egg Drop Experiment](https://xkcd.com/2916/#xt=4&yt=16&v=266) |
[crossing guard](https://xkcd.com/2916/#xt=5&yt=52&v=723) |
[6-way intersection](https://xkcd.com/2916/#xt=2&yt=82&v=1102) |
[Well we Save a Bundle By Using the Red Stream to Drive a Turbine](https://xkcd.com/2916/#xt=3&yt=80&v=1074) |
[Liquid Metal Playground](https://xkcd.com/2916/#xt=8&yt=46&v=659) |
[Windsort and the squirrel guard](https://xkcd.com/2916/#xt=8&yt=12&v=189) |
[Triple Trouble](https://xkcd.com/2916/#xt=5&yt=26&v=399) |
[Now with Water Hammer Arrestor](https://xkcd.com/2916/#xt=11&yt=92&v=1217) |
[magic cup](https://xkcd.com/2916/#xt=4&yt=81&v=1087) |
[octosep](https://xkcd.com/2916/#xt=4&yt=44&v=630) |
[Shooting Stars](https://xkcd.com/2916/#xt=6&yt=59&v=817) |
[I lost a bonk, do you have it?](https://xkcd.com/2916/#xt=4&yt=76&v=1033) |
[submission denied](https://xkcd.com/2916/#xt=4&yt=83&v=1109) |
[Apple Pie Shower](https://xkcd.com/2916/#xt=2&yt=58&v=809) |
[totally worth 30 min of my time](https://xkcd.com/2916/#xt=6&yt=66&v=909) |
[unsteady stack](https://xkcd.com/2916/#xt=6&yt=7&v=110) |
[At last!!](https://xkcd.com/2916/#xt=8&yt=55&v=782) |
[party](https://xkcd.com/2916/#xt=4&yt=61&v=842) |
[flickshot](https://xkcd.com/2916/#xt=9&yt=35&v=518) |
[CERn](https://xkcd.com/2916/#xt=11&yt=51&v=700) |
[Spherical Harmonics](https://xkcd.com/2916/#xt=2&yt=78&v=1057) |
[it works](https://xkcd.com/2916/#xt=5&yt=16&v=272) |
[The tower](https://xkcd.com/2916/#xt=9&yt=12&v=196) |
[Wheels of fortune](https://xkcd.com/2916/#xt=5&yt=75&v=1017) |
[Butterflies In the Stomache](https://xkcd.com/2916/#xt=3&yt=37&v=544) |
[Flow](https://xkcd.com/2916/#xt=10&yt=28&v=448) |
[bouncesort](https://xkcd.com/2916/#xt=7&yt=46&v=660) |
[guided whoosh ](https://xkcd.com/2916/#xt=5&yt=49&v=696) |
[The most crucial part of the machine](https://xkcd.com/2916/#xt=11&yt=52&v=732) |
[Oscillation circulation](https://xkcd.com/2916/#xt=10&yt=64&v=873) |
[Diabolical Simplicity](https://xkcd.com/2916/#xt=6&yt=22&v=351) |
[Uncontrolled Launch?](https://xkcd.com/2916/#xt=5&yt=63&v=870) |
[wind tunnels](https://xkcd.com/2916/#xt=2&yt=66&v=904) |
[Air conditioning unit](https://xkcd.com/2916/#xt=2&yt=13&v=187) |
[culling the greens from the chaff](https://xkcd.com/2916/#xt=11&yt=64&v=861) |
[two factor sortification](https://xkcd.com/2916/#xt=1&yt=28&v=382) |
[*Almost* enough room](https://xkcd.com/2916/#xt=0&yt=58&v=811) |
[Berghain](https://xkcd.com/2916/#xt=1&yt=76&v=1029) |
[why? good question, i'm not sure either](https://xkcd.com/2916/#xt=1&yt=35&v=497) |
[One Brick wonder](https://xkcd.com/2916/#xt=11&yt=14&v=262) |
[9](https://xkcd.com/2916/#xt=9&yt=57&v=790) |
[Will it sort?](https://xkcd.com/2916/#xt=11&yt=73&v=994) |
[Hijinks Ensue](https://xkcd.com/2916/#xt=6&yt=64&v=876) |
[arcane ballpit magicks](https://xkcd.com/2916/#xt=6&yt=13&v=183) |
[slidesnfans](https://xkcd.com/2916/#xt=5&yt=54&v=754) |
[Harder Than it looks](https://xkcd.com/2916/#xt=2&yt=28&v=433) |
[Multiphasic air filter](https://xkcd.com/2916/#xt=10&yt=62&v=851) |
[Quality assurance](https://xkcd.com/2916/#xt=6&yt=41&v=594) |
[A Fan of Kinematics](https://xkcd.com/2916/#xt=4&yt=26&v=411) |
[Centrifugal Force Is Real (In A Rotating Frame Of Reference)](https://xkcd.com/2916/#xt=9&yt=86&v=1147) |
[null](https://xkcd.com/2916/#xt=0&yt=65&v=888) |
[blowfish](https://xkcd.com/2916/#xt=1&yt=1&v=19) |
[MIx and unmixer](https://xkcd.com/2916/#xt=6&yt=51&v=714) |
[meowamid outside the bonker forge](https://xkcd.com/2916/#xt=5&yt=46&v=652) |
[flycatcher](https://xkcd.com/2916/#xt=2&yt=5&v=51) |
[Citsinimreted Ylbaborp](https://xkcd.com/2916/#xt=5&yt=27&v=415) |
[Double helix](https://xkcd.com/2916/#xt=0&yt=70&v=946) |
[sorting errors get the squirrel pit](https://xkcd.com/2916/#xt=6&yt=46&v=666) |
[a touchy topic](https://xkcd.com/2916/#xt=2&yt=10&v=147) |
[doohickey'); DROP TABLE machines;--](https://xkcd.com/2916/#xt=2&yt=47&v=669) |
[Physics off](https://xkcd.com/2916/#xt=5&yt=4&v=63) |
[the sword-split stochastic bonker](https://xkcd.com/2916/#xt=1&yt=31&v=424) |
[Wombleton 3](https://xkcd.com/2916/#xt=5&yt=71&v=966) |
[ohno](https://xkcd.com/2916/#xt=3&yt=79&v=1064) |
[lax Lullaby](https://xkcd.com/2916/#xt=10&yt=39&v=573) |
[wagon wheel](https://xkcd.com/2916/#xt=4&yt=89&v=1192) |
[merge and split](https://xkcd.com/2916/#xt=3&yt=67&v=927) |
[trans entertainment machine aka "they're helping!"](https://xkcd.com/2916/#xt=5&yt=47&v=667) |
[Weeee](https://xkcd.com/2916/#xt=5&yt=91&v=1202) |
[physical vs aerial](https://xkcd.com/2916/#xt=9&yt=72&v=978) |
[The Taco Bell Experience](https://xkcd.com/2916/#xt=8&yt=10&v=159) |
[lawless roundabout](https://xkcd.com/2916/#xt=10&yt=11&v=194) |
[spin to win!](https://xkcd.com/2916/#xt=6&yt=24&v=385) |
[aw man](https://xkcd.com/2916/#xt=8&yt=74&v=1003) |
[scaffolding](https://xkcd.com/2916/#xt=3&yt=42&v=603) |
[Drink's on the house](https://xkcd.com/2916/#xt=8&yt=30&v=469) |
[inefficient yet sufficient](https://xkcd.com/2916/#xt=2&yt=20&v=313) |
[tree house](https://xkcd.com/2916/#xt=2&yt=38&v=564) |
[backyard particle accelerator](https://xkcd.com/2916/#xt=9&yt=5&v=92) |
[Dude! I told you to stop letting your cat on the table!](https://xkcd.com/2916/#xt=11&yt=36&v=524) |
[the squirrel armada](https://xkcd.com/2916/#xt=6&yt=17&v=218) |
[Roundabout and starightforward](https://xkcd.com/2916/#xt=8&yt=42&v=609) |
[swatsort](https://xkcd.com/2916/#xt=8&yt=52&v=729) |
[curvaceous curves](https://xkcd.com/2916/#xt=7&yt=75&v=1008) |
[artisanal perfect filter](https://xkcd.com/2916/#xt=4&yt=73&v=989) |
[Error-correcting Sword sort](https://xkcd.com/2916/#xt=6&yt=58&v=805) |
[Peas in pipes](https://xkcd.com/2916/#xt=11&yt=19&v=296) |
[Please do not the cat](https://xkcd.com/2916/#xt=8&yt=47&v=674) |
[Fan wars ii: last stand of the hammer buns](https://xkcd.com/2916/#xt=9&yt=14&v=235) |
[woodhammer 40000](https://xkcd.com/2916/#xt=5&yt=13&v=222) |
[you love bouncing balls don't you](https://xkcd.com/2916/#xt=2&yt=29&v=444) |
[more speed, fewer collisions](https://xkcd.com/2916/#xt=6&yt=11&v=150) |
[sway](https://xkcd.com/2916/#xt=9&yt=3&v=81) |
[Awful sorter #900: Fanservice](https://xkcd.com/2916/#xt=7&yt=90&v=1196) |
[saggy switchback](https://xkcd.com/2916/#xt=11&yt=30&v=439) |
[Hold it Right there](https://xkcd.com/2916/#xt=1&yt=55&v=768) |
[Bounciness testing](https://xkcd.com/2916/#xt=1&yt=36&v=538) |
[Broken roller coaster](https://xkcd.com/2916/#xt=1&yt=92&v=1222) |
[1.. 2.. 3.. crunch](https://xkcd.com/2916/#xt=4&yt=24&v=384) |
[the horror](https://xkcd.com/2916/#xt=8&yt=18&v=259) |
[5$ budget pinball](https://xkcd.com/2916/#xt=5&yt=10&v=166) |
[BONK](https://xkcd.com/2916/#xt=10&yt=4&v=85) |
[would Maxwell be proud?](https://xkcd.com/2916/#xt=1&yt=48&v=686) |
[With No due respect to Gravity](https://xkcd.com/2916/#xt=4&yt=48&v=673) |
[How did the Squirrel get that?](https://xkcd.com/2916/#xt=0&yt=16&v=180) |
[the unbearable lightness of being yellow](https://xkcd.com/2916/#xt=0&yt=6&v=43) |
[Rock Me Mama Like a Brick House](https://xkcd.com/2916/#xt=3&yt=92&v=1225) |
[Agile Development](https://xkcd.com/2916/#xt=8&yt=70&v=951) |
[choose your own adventure](https://xkcd.com/2916/#xt=4&yt=75&v=1016) |
[Prism Pachinko](https://xkcd.com/2916/#xt=0&yt=38&v=562) |
[don't worry; they're trained professionals](https://xkcd.com/2916/#xt=1&yt=65&v=900) |
[Probable Determinism: The Ride](https://xkcd.com/2916/#xt=4&yt=7&v=107) |
[Led Zeppelin Meets ACDC and Fans](https://xkcd.com/2916/#xt=4&yt=5&v=57) |
[completely unrelated events (right)](https://xkcd.com/2916/#xt=0&yt=22&v=307) |
[Airways](https://xkcd.com/2916/#xt=7&yt=40&v=574) |
[If I had more space, I would've made a smaller machine](https://xkcd.com/2916/#xt=10&yt=38&v=556) |
[batter up!](https://xkcd.com/2916/#xt=0&yt=76&v=1030) |
[A-Mazed](https://xkcd.com/2916/#xt=4&yt=45&v=640) |
[platformer](https://xkcd.com/2916/#xt=9&yt=32&v=483) |
[RGB AirBounce Sorter](https://xkcd.com/2916/#xt=3&yt=57&v=799) |
[Undoing](https://xkcd.com/2916/#xt=11&yt=31&v=459) |
[Why do the reds get to have all the fun?](https://xkcd.com/2916/#xt=6&yt=45&v=650) |
[mass spectrometry and bun wizardry](https://xkcd.com/2916/#xt=6&yt=69&v=939) |
[Quantum Computer](https://xkcd.com/2916/#xt=0&yt=49&v=672) |
[so fresh and so clean](https://xkcd.com/2916/#xt=6&yt=65&v=890) |
[Bogosort mk2](https://xkcd.com/2916/#xt=9&yt=29&v=452) |
[Powered by fans](https://xkcd.com/2916/#xt=7&yt=65&v=891) |
[a little basic](https://xkcd.com/2916/#xt=2&yt=19&v=301) |
[ramp](https://xkcd.com/2916/#xt=6&yt=40&v=584) |
[the water pipes](https://xkcd.com/2916/#xt=2&yt=75&v=1015) |
[Goldberg Catcher](https://xkcd.com/2916/#xt=8&yt=28&v=430) |
[Merge and sort](https://xkcd.com/2916/#xt=7&yt=88&v=1174) |
[nine lives](https://xkcd.com/2916/#xt=1&yt=78&v=1058) |
[s is for... safety?](https://xkcd.com/2916/#xt=4&yt=55&v=766) |
[keepin' it cool](https://xkcd.com/2916/#xt=3&yt=58&v=808) |
[taking the scenic route](https://xkcd.com/2916/#xt=11&yt=65&v=902) |
[Barroom billiards](https://xkcd.com/2916/#xt=9&yt=23&v=373) |
[the fan guy](https://xkcd.com/2916/#xt=1&yt=63&v=882) |
[hark! the wizard hath cast a spell of momentum cancellation!](https://xkcd.com/2916/#xt=1&yt=34&v=496) |
[breaking news!](https://xkcd.com/2916/#xt=10&yt=87&v=1168) |
[Easypeasylemonsqueezy](https://xkcd.com/2916/#xt=6&yt=76&v=1034) |
[zoom](https://xkcd.com/2916/#xt=0&yt=78&v=1049) |
[clockwork lemons](https://xkcd.com/2916/#xt=3&yt=72&v=981) |
[Another One Bites The Dust](https://xkcd.com/2916/#xt=1&yt=71&v=962) |
[nobonk](https://xkcd.com/2916/#xt=3&yt=21&v=334) |
[mass_Separation_maze](https://xkcd.com/2916/#xt=1&yt=37&v=541) |
[Quis bonkodiet ipsos bonkodes?](https://xkcd.com/2916/#xt=9&yt=88&v=1172) |
[Secrets](https://xkcd.com/2916/#xt=2&yt=17&v=236) |
[weelz within weelz](https://xkcd.com/2916/#xt=7&yt=81&v=1090) |
[Good Thing I'm Not COlorblind](https://xkcd.com/2916/#xt=9&yt=16&v=273) |
[Interesting... Umbrella](https://xkcd.com/2916/#xt=0&yt=34&v=493) |
[Some of the Kinetic energy comes from bonks](https://xkcd.com/2916/#xt=8&yt=34&v=500) |
[Four Bounce Technique](https://xkcd.com/2916/#xt=6&yt=88&v=1175) |
[y = -cos(2x)](https://xkcd.com/2916/#xt=5&yt=56&v=779) |
[oh behave](https://xkcd.com/2916/#xt=4&yt=43&v=629) |
[Many a Boink](https://xkcd.com/2916/#xt=8&yt=8&v=124) |
[They'll get there eventually](https://xkcd.com/2916/#xt=5&yt=8&v=160) |
[byg-sort](https://xkcd.com/2916/#xt=3&yt=76&v=1032) |
[eeeeeeeeeeeee](https://xkcd.com/2916/#xt=3&yt=82&v=1100) |
[Space Cadet](https://xkcd.com/2916/#xt=1&yt=16&v=176) |
[pillow power](https://xkcd.com/2916/#xt=0&yt=64&v=884) |
[Telekinesy is real](https://xkcd.com/2916/#xt=1&yt=68&v=932) |
[flight of the bumblebees](https://xkcd.com/2916/#xt=5&yt=78&v=1055) |
[CROSSOVER FANFIC](https://xkcd.com/2916/#xt=6&yt=5&v=77) |
[No Funnel Allowed](https://xkcd.com/2916/#xt=5&yt=13&v=226) |
[aqueducts](https://xkcd.com/2916/#xt=11&yt=36&v=523) |
[I feel like the loop the loop  was unnecessary but made it more interesting](https://xkcd.com/2916/#xt=2&yt=52&v=725) |
[squirrel defender](https://xkcd.com/2916/#xt=11&yt=4&v=66) |
[precarious](https://xkcd.com/2916/#xt=10&yt=85&v=1143) |
[null](https://xkcd.com/2916/#xt=10&yt=32&v=479) |
[hail ho hole](https://xkcd.com/2916/#xt=2&yt=56&v=778) |
[push and pull](https://xkcd.com/2916/#xt=7&yt=5&v=88) |
[SLOw down](https://xkcd.com/2916/#xt=6&yt=29&v=425) |
[Turbine](https://xkcd.com/2916/#xt=1&yt=61&v=841) |
[Take This](https://xkcd.com/2916/#xt=2&yt=4&v=42) |
[Blacksmith's Lament](https://xkcd.com/2916/#xt=0&yt=18&v=237) |
[old cabin](https://xkcd.com/2916/#xt=10&yt=23&v=378) |
[Doublesort](https://xkcd.com/2916/#xt=9&yt=83&v=1115) |
[Black hole plinko](https://xkcd.com/2916/#xt=10&yt=42&v=608) |
[Clockwork ClusterF***](https://xkcd.com/2916/#xt=5&yt=11&v=173) |
[Good-enough pipeworks](https://xkcd.com/2916/#xt=3&yt=12&v=186) |
[Object Identification machine](https://xkcd.com/2916/#xt=0&yt=72&v=972) |
[am i doing this right?](https://xkcd.com/2916/#xt=5&yt=18&v=328) |
[hit](https://xkcd.com/2916/#xt=11&yt=1&v=23) |
[KAPOW](https://xkcd.com/2916/#xt=9&yt=6&v=97) |
[pattern recognition](https://xkcd.com/2916/#xt=2&yt=25&v=366) |
[Several things happening at once](https://xkcd.com/2916/#xt=10&yt=35&v=522) |
[Mind over Matter](https://xkcd.com/2916/#xt=10&yt=55&v=773) |
[What's Kinetic Energy Got To do (Got To Do) With It](https://xkcd.com/2916/#xt=3&yt=23&v=350) |
[The Crazy intersection](https://xkcd.com/2916/#xt=8&yt=22&v=362) |
[I'm bad at names ](https://xkcd.com/2916/#xt=6&yt=87&v=1163) |
[OK, hear me out: what if we *DON'T* sort them?](https://xkcd.com/2916/#xt=2&yt=92&v=1226) |
[....I trust you.](https://xkcd.com/2916/#xt=4&yt=56&v=765) |
[The magic of yellow](https://xkcd.com/2916/#xt=11&yt=55&v=774) |
[the kitty highway :3](https://xkcd.com/2916/#xt=5&yt=35&v=529) |
[Strictly speaking, the loop-de-loop was probably unnecessary](https://xkcd.com/2916/#xt=3&yt=43&v=616) |
[fanomenal accuracy](https://xkcd.com/2916/#xt=6&yt=43&v=626) |
[THEY WATCH](https://xkcd.com/2916/#xt=7&yt=10&v=140) |
[three stage filter](https://xkcd.com/2916/#xt=11&yt=75&v=1021) |
[Pachinko](https://xkcd.com/2916/#xt=10&yt=3&v=79) |
[don't look for symbolism, i just like to see the balls float](https://xkcd.com/2916/#xt=0&yt=84&v=1120) |
[Raindrops and sunshine](https://xkcd.com/2916/#xt=6&yt=71&v=967) |
[pin ball](https://xkcd.com/2916/#xt=2&yt=43&v=617) |
[Squirrel's Industrial Revolution](https://xkcd.com/2916/#xt=1&yt=30&v=422) |
[TILT](https://xkcd.com/2916/#xt=2&yt=70&v=954) |
[Mass spectrometer](https://xkcd.com/2916/#xt=9&yt=26&v=404) |
[BUBBLES](https://xkcd.com/2916/#xt=10&yt=72&v=979) |
[Gentle and Hectic](https://xkcd.com/2916/#xt=3&yt=87&v=1160) |
[siege on the seas](https://xkcd.com/2916/#xt=2&yt=31&v=462) |
[Squirrel cage centrifuge](https://xkcd.com/2916/#xt=8&yt=49&v=693) |
[double crossing streams](https://xkcd.com/2916/#xt=7&yt=69&v=938) |
[Cat Tree](https://xkcd.com/2916/#xt=0&yt=62&v=859) |
[Apathy and Excitement](https://xkcd.com/2916/#xt=3&yt=88&v=1178) |
[among us](https://xkcd.com/2916/#xt=10&yt=0&v=37) |
[The Shortest Distance From Point A To Point B](https://xkcd.com/2916/#xt=0&yt=23&v=310) |
[i overdid the props kinda](https://xkcd.com/2916/#xt=7&yt=19&v=263) |
[pipes](https://xkcd.com/2916/#xt=8&yt=54&v=760) |
[Set Sail towards Adventure!](https://xkcd.com/2916/#xt=3&yt=39&v=566) |
[Livin' on the edge](https://xkcd.com/2916/#xt=8&yt=9&v=133) |
[Spiral](https://xkcd.com/2916/#xt=0&yt=27&v=368) |
[unessacarily complex yet effective](https://xkcd.com/2916/#xt=3&yt=95&v=1265) |
[I can't believe Mr. Mittens still prefers to do things manually.](https://xkcd.com/2916/#xt=5&yt=94&v=1248) |
[Halo](https://xkcd.com/2916/#xt=0&yt=95&v=1258) |
[Don't Boop The Snoot](https://xkcd.com/2916/#xt=11&yt=94&v=1242) |
[red vs blue](https://xkcd.com/2916/#xt=5&yt=95&v=1261) |
[hydraulic shock absorber for errant red particles](https://xkcd.com/2916/#xt=9&yt=94&v=1244) |
[charge!](https://xkcd.com/2916/#xt=2&yt=95&v=1259) |
[Ahh, Nature!](https://xkcd.com/2916/#xt=6&yt=95&v=1255) |
[Hex](https://xkcd.com/2916/#xt=6&yt=93&v=1238) |
[turbosort](https://xkcd.com/2916/#xt=2&yt=93&v=1236) |
[plumbing](https://xkcd.com/2916/#xt=3&yt=94&v=1250) |
[you'd think it'd be easier to get green balls to move](https://xkcd.com/2916/#xt=8&yt=93&v=1240) |
[squirrel projector](https://xkcd.com/2916/#xt=8&yt=94&v=1245) |
[kaleidoscope](https://xkcd.com/2916/#xt=10&yt=94&v=1243) |
[help i can't keep this up for much longer](https://xkcd.com/2916/#xt=9&yt=93&v=1235) |
[iF (color==BLue)](https://xkcd.com/2916/#xt=6&yt=94&v=1247) |
[you and me, and kitty makes three](https://xkcd.com/2916/#xt=7&yt=95&v=1262) |
[skip, bounce, and slide](https://xkcd.com/2916/#xt=10&yt=93&v=1241) |
[Antigravity](https://xkcd.com/2916/#xt=4&yt=94&v=1249) |
[TREBUCHET](https://xkcd.com/2916/#xt=1&yt=95&v=1254) |
[Hell is a place on earth](https://xkcd.com/2916/#xt=7&yt=93&v=1239) |
[banana splits at the black hole laundrette](https://xkcd.com/2916/#xt=7&yt=94&v=1246) |
[definitely a maybe](https://xkcd.com/2916/#xt=10&yt=95&v=1264) |
[sort it out](https://xkcd.com/2916/#xt=4&yt=95&v=1260) |
[Robert'); DROP TABLE Students;--](https://xkcd.com/2916/#xt=9&yt=95&v=1263) |
[bogosort](https://xkcd.com/2916/#xt=0&yt=94&v=1253) |
[puhoy](https://xkcd.com/2916/#xt=8&yt=95&v=1257) |
[cannons](https://xkcd.com/2916/#xt=2&yt=94&v=1251) |
[Bounce filters are unreliable](https://xkcd.com/2916/#xt=11&yt=95&v=1256) |
[round the back way](https://xkcd.com/2916/#xt=11&yt=93&v=1234) |
[Helm of determination](https://xkcd.com/2916/#xt=1&yt=94&v=1252) |
[Mohi](https://xkcd.com/2916/#xt=5&yt=93&v=1237) |
[bonk](https://xkcd.com/2916/#xt=4&yt=96&v=1270) |
[Wimdy](https://xkcd.com/2916/#xt=8&yt=97&v=1281) |
[Don't tap the glass](https://xkcd.com/2916/#xt=5&yt=96&v=1272) |
[Scientific progress goes "boink"](https://xkcd.com/2916/#xt=6&yt=97&v=1282) |
[magnetic pathway](https://xkcd.com/2916/#xt=8&yt=96&v=1274) |
[ ](https://xkcd.com/2916/#xt=10&yt=97&v=1279) |
[kaleidoscope](https://xkcd.com/2916/#xt=11&yt=96&v=1277) |
[watch and learn kitten army!!](https://xkcd.com/2916/#xt=10&yt=96&v=1276) |
[space elevator](https://xkcd.com/2916/#xt=0&yt=96&v=1266) |
[Float like a butterfly; sink like a brick](https://xkcd.com/2916/#xt=3&yt=96&v=1269) |
[Floating Operation](https://xkcd.com/2916/#xt=1&yt=96&v=1267) |
[The particle accelerator better than all the rest ](https://xkcd.com/2916/#xt=9&yt=96&v=1275) |
[chaos](https://xkcd.com/2916/#xt=2&yt=96&v=1268) |
[please stop holding meetings in the fan rooms, the squirrel can still see all of them](https://xkcd.com/2916/#xt=11&yt=97&v=1278) |
["I don't Think The Rabbit should Be That Close to that thing...."](https://xkcd.com/2916/#xt=6&yt=96&v=1271) |
[that one blue marble](https://xkcd.com/2916/#xt=9&yt=97&v=1280) |
[sensible and affordable transportation for balls](https://xkcd.com/2916/#xt=7&yt=96&v=1273) |
[recycle, reuse, rebound, redirect, regret](https://xkcd.com/2916/#xt=10&yt=98&v=1302) |
[It is almost too easy to separate Green and Yellow](https://xkcd.com/2916/#xt=8&yt=98&v=1299) |
[Behold my Psychic Powers](https://xkcd.com/2916/#xt=4&yt=98&v=1295) |
[Furr Fight](https://xkcd.com/2916/#xt=4&yt=97&v=1286) |
[bounce](https://xkcd.com/2916/#xt=11&yt=98&v=1300) |
[Auto-sorting pillows](https://xkcd.com/2916/#xt=2&yt=98&v=1293) |
[Color inkjet](https://xkcd.com/2916/#xt=7&yt=97&v=1284) |
[Bubblesort](https://xkcd.com/2916/#xt=5&yt=99&v=1303) |
[Don't Touch the Hammer!](https://xkcd.com/2916/#xt=4&yt=97&v=1283) |
[Form Follows Function](https://xkcd.com/2916/#xt=0&yt=98&v=1291) |
[Спасибо нет](https://xkcd.com/2916/#xt=7&yt=98&v=1298) |
[Whoops](https://xkcd.com/2916/#xt=1&yt=98&v=1292) |
[...and here is the museum's newest exhibit: the staff of infinite magnitism ](https://xkcd.com/2916/#xt=1&yt=97&v=1288) |
[When a green knocks you off course, you can always try again!](https://xkcd.com/2916/#xt=2&yt=97&v=1290) |
[:)](https://xkcd.com/2916/#xt=6&yt=98&v=1297) |
[the s.s. bunsmuggler](https://xkcd.com/2916/#xt=5&yt=97&v=1285) |
[Separator](https://xkcd.com/2916/#xt=9&yt=98&v=1301) |
[It works except when it doesn't](https://xkcd.com/2916/#xt=3&yt=98&v=1294) |
[follow the arrows](https://xkcd.com/2916/#xt=0&yt=97&v=1287) |
[Cat-tic-ball](https://xkcd.com/2916/#xt=3&yt=97&v=1289) |
[If I do enough of these one will get in](https://xkcd.com/2916/#xt=5&yt=98&v=1296) |
[a series of unfortunate bounces](https://xkcd.com/2916/#xt=7&yt=99&v=1310) |
[Unexpected Behavior](https://xkcd.com/2916/#xt=1&yt=99&v=1308) |
[Kitty makes sure](https://xkcd.com/2916/#xt=3&yt=99&v=1305) |
[why are you mad, I got you a cat tree](https://xkcd.com/2916/#xt=0&yt=99&v=1307) |
[If at first you don't succeed - send the ball round to try again](https://xkcd.com/2916/#xt=2&yt=99&v=1306) |
[Once in a while, the cat is permitted to mess things up, as a treat](https://xkcd.com/2916/#xt=9&yt=99&v=1312) |
[The cats are tired try again later](https://xkcd.com/2916/#xt=6&yt=99&v=1309) |
[Could I have done it simpler? Probably. DId I? No, why would I do that?](https://xkcd.com/2916/#xt=11&yt=99&v=1314) |
[contraptionator](https://xkcd.com/2916/#xt=8&yt=99&v=1311) |
[LOOK MA, NO FANS (SPARE BUNNIES)](https://xkcd.com/2916/#xt=10&yt=99&v=1313) |
[the height of human progress](https://xkcd.com/2916/#xt=4&yt=99&v=1304) |
[Clean Up on Aisle λ](https://xkcd.com/2916/#xt=2&yt=100&v=1323) |
[⚠️ lawsuit pending ⚠️](https://xkcd.com/2916/#xt=4&yt=100&v=1315) |
[Fans work both ways](https://xkcd.com/2916/#xt=2&yt=102&v=1348) |
[yellow plays twice. just like in chess.](https://xkcd.com/2916/#xt=1&yt=102&v=1338) |
[four way sort](https://xkcd.com/2916/#xt=8&yt=100&v=1319) |
[things](https://xkcd.com/2916/#xt=10&yt=100&v=1317) |
[Redundant x3 w/recycle](https://xkcd.com/2916/#xt=8&yt=102&v=1344) |
[meticulous](https://xkcd.com/2916/#xt=9&yt=102&v=1345) |
[what's wrong honey, you haven't touched your greens](https://xkcd.com/2916/#xt=7&yt=100&v=1320) |
[Wall walking](https://xkcd.com/2916/#xt=8&yt=101&v=1335) |
[Moleculer Sieve](https://xkcd.com/2916/#xt=0&yt=101&v=1328) |
[it's cats all the way down](https://xkcd.com/2916/#xt=2&yt=101&v=1329) |
[put it together and let it sort itself out](https://xkcd.com/2916/#xt=0&yt=100&v=1325) |
[They keep hitting me in the head!](https://xkcd.com/2916/#xt=10&yt=102&v=1347) |
[singin' and dancing in the rain](https://xkcd.com/2916/#xt=4&yt=101&v=1331) |
[Beware the chaotic stick of doom](https://xkcd.com/2916/#xt=5&yt=100&v=1326) |
[comi2 285: wikipedian protester](https://xkcd.com/2916/#xt=11&yt=101&v=1337) |
[Awful sorter #631: Build a bounce sorter, they said. It'll be fun, they said.](https://xkcd.com/2916/#xt=7&yt=101&v=1334) |
[Australian Cat Tower](https://xkcd.com/2916/#xt=11&yt=100&v=1316) |
[Fun With AntiGravity](https://xkcd.com/2916/#xt=6&yt=100&v=1321) |
[sword sorter](https://xkcd.com/2916/#xt=5&yt=101&v=1332) |
[x-TREME ball pit](https://xkcd.com/2916/#xt=10&yt=101&v=1346) |
[cmon, let the cats have some fun](https://xkcd.com/2916/#xt=1&yt=101&v=1327) |
[bouncy fans](https://xkcd.com/2916/#xt=6&yt=102&v=1341) |
[This is where we'll install the processing area for the other types of balls if we get any](https://xkcd.com/2916/#xt=9&yt=101&v=1336) |
[Whee!!!](https://xkcd.com/2916/#xt=8&yt=102&v=1343) |
[mix 'em well](https://xkcd.com/2916/#xt=3&yt=100&v=1322) |
[The order of the sword-riding cats](https://xkcd.com/2916/#xt=3&yt=101&v=1330) |
[Contactless Delivery](https://xkcd.com/2916/#xt=6&yt=101&v=1333) |
[nothing suspicious is going on here](https://xkcd.com/2916/#xt=9&yt=100&v=1318) |
[protect your data with the new airgap! (air co is not responsible for any damage caused by relativistic particles](https://xkcd.com/2916/#xt=4&yt=102&v=1339) |
[arm the cat-annon!](https://xkcd.com/2916/#xt=7&yt=102&v=1342) |
[why are you dividing them into two streams?](https://xkcd.com/2916/#xt=5&yt=102&v=1340) |
[Katzen arbeiten für grün](https://xkcd.com/2916/#xt=1&yt=100&v=1324) |
[It's hard to accelerate Greens](https://xkcd.com/2916/#xt=3&yt=102&v=1349) |
[quivering whiskers](https://xkcd.com/2916/#xt=11&yt=102&v=1350) |
[Classic bread and butter gravity sort -P](https://xkcd.com/2916/#xt=0&yt=102&v=1351) |
[XKCD 82 - Frame](https://xkcd.com/2916/#xt=7&yt=103&v=1353) |
[Why do I do this?](https://xkcd.com/2916/#xt=6&yt=103&v=1354) |
[Mass Spectrometry](https://xkcd.com/2916/#xt=4&yt=103&v=1355) |
[Hey, guys, I have a cool idea for a machine!](https://xkcd.com/2916/#xt=8&yt=103&v=1354) |
[Weight Sort with bonus cat](https://xkcd.com/2916/#xt=3&yt=103&v=1357) |
[point of inflection](https://xkcd.com/2916/#xt=5&yt=103&v=1357) |
[Always Validate user input](https://xkcd.com/2916/#xt=1&yt=103&v=1359) |
[Brickwork](https://xkcd.com/2916/#xt=0&yt=103&v=1369) |
[harvesting the lemon tree](https://xkcd.com/2916/#xt=2&yt=103&v=1358) |
[The Bracket (now do it with all the contraptions!)](https://xkcd.com/2916/#xt=9&yt=103&v=1364) |
[Whirli-Twirly-Machine](https://xkcd.com/2916/#xt=10&yt=103&v=1368) |
[The Vortex](https://xkcd.com/2916/#xt=1&yt=104&v=1367) |
[Marvelous Queen](https://xkcd.com/2916/#xt=11&yt=103&v=1366) |
[You Spin Me Right Round](https://xkcd.com/2916/#xt=0&yt=104&v=1365) |
[I wish there were curves](https://xkcd.com/2916/#xt=2&yt=104&v=1369) |
[4 for the price of 1!](https://xkcd.com/2916/#xt=3&yt=104&v=1368) |
[They're not Hammers, They're Mallets](https://xkcd.com/2916/#xt=5&yt=104&v=1374) |
[The odd physics](https://xkcd.com/2916/#xt=4&yt=104&v=1373) |
[Pipe-a-tron 9000](https://xkcd.com/2916/#xt=7&yt=104&v=1375) |
[All kinds O'  Things](https://xkcd.com/2916/#xt=6&yt=104&v=1372) |
[threading the needle (aka how do i sort four different colors)](https://xkcd.com/2916/#xt=8&yt=104&v=1376) |
[Multisort](https://xkcd.com/2916/#xt=9&yt=104&v=1379) |
[Up and Down](https://xkcd.com/2916/#xt=10&yt=104&v=1374) |
[Inventory](https://xkcd.com/2916/#xt=11&yt=104&v=1375) |
[Nondeterministic Drive](https://xkcd.com/2916/#xt=0&yt=105&v=1377) |
[fight](https://xkcd.com/2916/#xt=1&yt=105&v=1378) |
[Saints](https://xkcd.com/2916/#xt=2&yt=105&v=1381) |
[organic](https://xkcd.com/2916/#xt=3&yt=105&v=1379) |
[erratic and unfocused](https://xkcd.com/2916/#xt=5&yt=105&v=1382) |
[4 in 4 out](https://xkcd.com/2916/#xt=4&yt=105&v=1380) |
[Railgun](https://xkcd.com/2916/#xt=6&yt=105&v=1383) |
[speedy and slowpoke](https://xkcd.com/2916/#xt=8&yt=105&v=1385) |
[bouncy castle](https://xkcd.com/2916/#xt=7&yt=105&v=1384) |
[overshot vs undershot](https://xkcd.com/2916/#xt=9&yt=105&v=1388) |
[Modern blue/green particle abatement technology](https://xkcd.com/2916/#xt=10&yt=105&v=1386) |
[klack,klack,klack](https://xkcd.com/2916/#xt=11&yt=105&v=1387) |
[you must be this massive to ride](https://xkcd.com/2916/#xt=10&yt=106&v=1389) |
[fan levitation training day - use what you learned to overcome the sword-wielding bun at the end](https://xkcd.com/2916/#xt=9&yt=106&v=1390) |
[spline testing](https://xkcd.com/2916/#xt=11&yt=106&v=1388) |
[Filling up the squares so we can see how it ends](https://xkcd.com/2916/#xt=6&yt=106&v=1393) |
[This Machine Kills Sleep](https://xkcd.com/2916/#xt=8&yt=106&v=1391) |
[Deceleration filter](https://xkcd.com/2916/#xt=5&yt=106&v=1394) |
[Lever to exit](https://xkcd.com/2916/#xt=4&yt=106&v=1395) |
[the tree](https://xkcd.com/2916/#xt=7&yt=106&v=1392) |
[The secret party room in the depths of the machine](https://xkcd.com/2916/#xt=3&yt=106&v=1396) |
[Corporate Art](https://xkcd.com/2916/#xt=2&yt=106&v=1397) |
[Hofstadterially Confusing](https://xkcd.com/2916/#xt=1&yt=106&v=1398) |
[teeth](https://xkcd.com/2916/#xt=0&yt=106&v=1399) |
[i could have just left it](https://xkcd.com/2916/#xt=0&yt=107&v=1402) |
[Big and small bounce filter](https://xkcd.com/2916/#xt=4&yt=107&v=1401) |
[resorted](https://xkcd.com/2916/#xt=3&yt=107&v=1402) |
[y-B sorter with traps](https://xkcd.com/2916/#xt=1&yt=107&v=1406) |
[Cushioned Blowsort](https://xkcd.com/2916/#xt=2&yt=107&v=1409) |
[anyone here order the buns?](https://xkcd.com/2916/#xt=5&yt=107&v=1408) |
[look! if you don't pay for Blue-testing, you don't get to complain when blues go up the ramp with the reds.](https://xkcd.com/2916/#xt=6&yt=107&v=1407) |
[A normal amount of spinning things](https://xkcd.com/2916/#xt=9&yt=107&v=1409) |
[spin cycle](https://xkcd.com/2916/#xt=7&yt=107&v=1410) |
[bump and sort](https://xkcd.com/2916/#xt=8&yt=107&v=1411) |
[unless you are A sysadmin](https://xkcd.com/2916/#xt=10&yt=107&v=1411) |
[a little momentum helps](https://xkcd.com/2916/#xt=11&yt=107&v=1411) |
[Eyes On Me O_O](https://xkcd.com/2916/#xt=1&yt=108&v=1422) |
[The Bunny Went Down to the Crossroad at Midnight](https://xkcd.com/2916/#xt=4&yt=108&v=1417) |
[a particularly obtuse needle to thread](https://xkcd.com/2916/#xt=2&yt=108&v=1415) |
[a delicate balance](https://xkcd.com/2916/#xt=0&yt=108&v=1416) |
[the floor is lava](https://xkcd.com/2916/#xt=3&yt=108&v=1420) |
[It sorts!](https://xkcd.com/2916/#xt=5&yt=108&v=1418) |
[this is what successful automation looks like](https://xkcd.com/2916/#xt=7&yt=108&v=1423) |
[Shaman dance](https://xkcd.com/2916/#xt=6&yt=108&v=1421) |
[backspin](https://xkcd.com/2916/#xt=8&yt=108&v=1422) |
[mix & match](https://xkcd.com/2916/#xt=9&yt=108&v=1423) |
[Slow Clockwork Factory](https://xkcd.com/2916/#xt=10&yt=108&v=1422) |
[Nutritional Ecology of the Ruminant](https://xkcd.com/2916/#xt=11&yt=108&v=1423) |
[24-05-11 the wonderful world of kinetic energy](https://xkcd.com/2916/#xt=8&yt=109&v=1427) |
[The girl with kaleidoscope eyes](https://xkcd.com/2916/#xt=6&yt=109&v=1429) |
[Laminar Flow](https://xkcd.com/2916/#xt=7&yt=109&v=1428) |
[Reactor Pit](https://xkcd.com/2916/#xt=10&yt=109&v=1425) |
[pay no attention to the greens behind the "probably Deterministic signs](https://xkcd.com/2916/#xt=9&yt=109&v=1426) |
[RAINBOW ](https://xkcd.com/2916/#xt=11&yt=109&v=1424) |
[100% fan-free all-wheel greenwashed machine](https://xkcd.com/2916/#xt=1&yt=109&v=1434) |
[air resistance is not negligable](https://xkcd.com/2916/#xt=4&yt=109&v=1431) |
[big bounce and little bounce](https://xkcd.com/2916/#xt=0&yt=109&v=1435) |
[Need MOre Bricks, Bunny](https://xkcd.com/2916/#xt=2&yt=109&v=1433) |
[Gravity Tower](https://xkcd.com/2916/#xt=5&yt=109&v=1440) |
[freewheeling](https://xkcd.com/2916/#xt=3&yt=109&v=1432) |
[airplane](https://xkcd.com/2916/#xt=0&yt=110&v=1437) |
[The innocuous horsey](https://xkcd.com/2916/#xt=1&yt=110&v=1441) |
[Quicky](https://xkcd.com/2916/#xt=2&yt=110&v=1439) |
[Look in to my eyes](https://xkcd.com/2916/#xt=4&yt=110&v=1441) |
[Cat House](https://xkcd.com/2916/#xt=3&yt=110&v=1440) |
[Under Construction](https://xkcd.com/2916/#xt=5&yt=110&v=1448) |
[dependency](https://xkcd.com/2916/#xt=6&yt=110&v=1450) |
[GIVE PEAS A CHANCE](https://xkcd.com/2916/#xt=7&yt=110&v=1446) |
[cool cats and kittens](https://xkcd.com/2916/#xt=8&yt=110&v=1447) |
[the thinganator 3000](https://xkcd.com/2916/#xt=9&yt=110&v=1445) |
[tristate area inertia sorter](https://xkcd.com/2916/#xt=10&yt=110&v=1449) |
[This is the easy way](https://xkcd.com/2916/#xt=11&yt=110&v=1451) |
[Refraction Plinko](https://xkcd.com/2916/#xt=3&yt=111&v=1450) |
[shapes](https://xkcd.com/2916/#xt=5&yt=111&v=1448) |
[The Dark Lord builds on shaky foundations](https://xkcd.com/2916/#xt=0&yt=111&v=1454) |
[Non-Relativistic Baseball](https://xkcd.com/2916/#xt=1&yt=111&v=1453) |
[podium finish](https://xkcd.com/2916/#xt=6&yt=111&v=1449) |
[fruit sorter........................only lemons get through; apples cherries and blueberries are rejected.](https://xkcd.com/2916/#xt=4&yt=111&v=1451) |
[The Fiballnacci Geekuence](https://xkcd.com/2916/#xt=2&yt=111&v=1452) |
[Banzai Run](https://xkcd.com/2916/#xt=7&yt=111&v=1455) |
[will it filter out blues and yellows? How should I know?](https://xkcd.com/2916/#xt=8&yt=111&v=1456) |
[Tabs vs Spaces](https://xkcd.com/2916/#xt=9&yt=111&v=1458) |
[live by the sword, sort by the sword](https://xkcd.com/2916/#xt=10&yt=111&v=1459) |
[just another brick in the wall](https://xkcd.com/2916/#xt=11&yt=111&v=1459) |
[regression to the mean](https://xkcd.com/2916/#xt=0&yt=112&v=1468) |
[Nut Room](https://xkcd.com/2916/#xt=1&yt=112&v=1463) |
[turbosmash overkill 9^∞](https://xkcd.com/2916/#xt=2&yt=112&v=1462) |
[Traffic report: A kitty is building a pillow fort in the middle of a busy intersection; expect delays](https://xkcd.com/2916/#xt=3&yt=112&v=1465) |
[probably as fast as it gets](https://xkcd.com/2916/#xt=4&yt=112&v=1466) |
[weeeeeeeeeeee](https://xkcd.com/2916/#xt=7&yt=112&v=1471) |
[this works better than bonkers](https://xkcd.com/2916/#xt=5&yt=112&v=1467) |
[liminal space](https://xkcd.com/2916/#xt=6&yt=112&v=1470) |
[Wheel-Of-fortune](https://xkcd.com/2916/#xt=8&yt=112&v=1469) |
[red levitator](https://xkcd.com/2916/#xt=10&yt=112&v=1470) |
[DC traffic](https://xkcd.com/2916/#xt=9&yt=112&v=1471) |
[swat away](https://xkcd.com/2916/#xt=11&yt=112&v=1472) |
[Score in treble](https://xkcd.com/2916/#xt=1&yt=113&v=1472) |
["I dunno man, it kinds feels like animal cruelty."](https://xkcd.com/2916/#xt=0&yt=113&v=1479) |
[It's all about the bounce, 'bout the bounce, no joke](https://xkcd.com/2916/#xt=2&yt=113&v=1478) |
[leap of faith](https://xkcd.com/2916/#xt=3&yt=113&v=1479) |
[BouyancySorter](https://xkcd.com/2916/#xt=4&yt=113&v=1480) |
[anomalous area](https://xkcd.com/2916/#xt=5&yt=113&v=1482) |
[Mix, Sort, done](https://xkcd.com/2916/#xt=6&yt=113&v=1483) |
[I should be asleep but instead im here making this](https://xkcd.com/2916/#xt=8&yt=113&v=1484) |
[take the more scenic route and enjoy the wildlife](https://xkcd.com/2916/#xt=7&yt=113&v=1481) |
[friction-assisted wind separator with safety cats on duty cycles](https://xkcd.com/2916/#xt=9&yt=113&v=1482) |
[a room with a view](https://xkcd.com/2916/#xt=10&yt=113&v=1483) |
[hovering flux separator](https://xkcd.com/2916/#xt=1&yt=114&v=1488) |
[shapes 2](https://xkcd.com/2916/#xt=0&yt=114&v=1486) |
[jumpman](https://xkcd.com/2916/#xt=11&yt=113&v=1484) |
[PRIME MINISTER](https://xkcd.com/2916/#xt=2&yt=114&v=1490) |
[Not because it's easy; because it's hard](https://xkcd.com/2916/#xt=3&yt=114&v=1489) |
[pillow snake](https://xkcd.com/2916/#xt=4&yt=114&v=1491) |
[measure twice, cut once](https://xkcd.com/2916/#xt=5&yt=114&v=1492) |
[Killer Buns](https://xkcd.com/2916/#xt=6&yt=114&v=1490) |
[Yellow-Green sorting with no fans](https://xkcd.com/2916/#xt=7&yt=114&v=1491) |
[Double Sorter R-G R-Y](https://xkcd.com/2916/#xt=8&yt=114&v=1493) |
[Uphill Battle](https://xkcd.com/2916/#xt=9&yt=114&v=1494) |
[serpent channel](https://xkcd.com/2916/#xt=10&yt=114&v=1497) |
[elevator's out](https://xkcd.com/2916/#xt=0&yt=115&v=1499) |
[Green may pass go.  Everyone else gets the bonk.](https://xkcd.com/2916/#xt=11&yt=114&v=1495) |
[iconic triumvirate](https://xkcd.com/2916/#xt=2&yt=115&v=1500) |
[bounce sorter](https://xkcd.com/2916/#xt=1&yt=115&v=1498) |
[Follow: Curve vs White rabbit](https://xkcd.com/2916/#xt=3&yt=115&v=1499) |
[trash sorter](https://xkcd.com/2916/#xt=4&yt=115&v=1501) |
[Soft Cell](https://xkcd.com/2916/#xt=5&yt=115&v=1504) |
[Confused Ornaments](https://xkcd.com/2916/#xt=6&yt=115&v=1502) |
[green pease shooter](https://xkcd.com/2916/#xt=7&yt=115&v=1508) |
[ANOTHER FANSORT](https://xkcd.com/2916/#xt=8&yt=115&v=1505) |
[Red Filter Yellow Filter But Just Throwing Blue Uphill](https://xkcd.com/2916/#xt=9&yt=115&v=1506) |
[three colors one sorting mechanism](https://xkcd.com/2916/#xt=10&yt=115&v=1509) |
[straight forward](https://xkcd.com/2916/#xt=11&yt=115&v=1507) |
[A Scurry of Squirrels](https://xkcd.com/2916/#xt=0&yt=116&v=1508) |
[What!?](https://xkcd.com/2916/#xt=1&yt=116&v=1510) |
[Weeee](https://xkcd.com/2916/#xt=2&yt=116&v=1512) |
[The Great (Bunny) Escape (Clause)](https://xkcd.com/2916/#xt=3&yt=116&v=1511) |
[Bunny Scoffs At Your Gravity](https://xkcd.com/2916/#xt=4&yt=116&v=1515) |
[weelz](https://xkcd.com/2916/#xt=5&yt=116&v=1513) |
[le petit prince](https://xkcd.com/2916/#xt=6&yt=116&v=1516) |
[I just wanted to use every item thing at least once](https://xkcd.com/2916/#xt=7&yt=116&v=1515) |
[ricochet](https://xkcd.com/2916/#xt=8&yt=116&v=1518) |
[All around and back again](https://xkcd.com/2916/#xt=9&yt=116&v=1517) |
[triumvirate](https://xkcd.com/2916/#xt=10&yt=116&v=1519) |
[Temple Of bonk](https://xkcd.com/2916/#xt=11&yt=116&v=1521) |
[ski jump](https://xkcd.com/2916/#xt=11&yt=117&v=1520) |
[Around the anvils!](https://xkcd.com/2916/#xt=9&yt=117&v=1521) |
[I don't know why you're upset, this was the simplest solution I could find](https://xkcd.com/2916/#xt=1&yt=117&v=1528) |
[Attack of the Angle Brackets](https://xkcd.com/2916/#xt=7&yt=117&v=1526) |
[minister of primes](https://xkcd.com/2916/#xt=0&yt=117&v=1525) |
[amazeballs](https://xkcd.com/2916/#xt=10&yt=117&v=1524) |
[Cat Sort](https://xkcd.com/2916/#xt=3&yt=117&v=1531) |
[THE ONE THAT BARELY HOLDS TOGETHER](https://xkcd.com/2916/#xt=4&yt=117&v=1529) |
[a machine with to many cats and also some prisms for fun and because they look cool](https://xkcd.com/2916/#xt=2&yt=117&v=1532) |
[Apple sorter](https://xkcd.com/2916/#xt=6&yt=117&v=1527) |
[are you sure you are yellow?](https://xkcd.com/2916/#xt=5&yt=117&v=1528) |
[this shouldn't work](https://xkcd.com/2916/#xt=8&yt=117&v=1526) |
[triple merge and split](https://xkcd.com/2916/#xt=4&yt=117&v=1533) |
[Divide by almost two](https://xkcd.com/2916/#xt=0&yt=118&v=1533) |
[yellow-boson collider and check for new particles](https://xkcd.com/2916/#xt=1&yt=118&v=1542) |
[on a knife edge](https://xkcd.com/2916/#xt=4&yt=118&v=1541) |
[look, if we don't use the entire budget then we won't have it to use next year](https://xkcd.com/2916/#xt=3&yt=118&v=1543) |
[yet another boring sorter](https://xkcd.com/2916/#xt=5&yt=118&v=1536) |
[why won't anyone let me use this lovely hammer](https://xkcd.com/2916/#xt=2&yt=118&v=1544) |
[Missing a cat](https://xkcd.com/2916/#xt=6&yt=118&v=1539) |
[strange planet: Conveying spheroids into receptacles](https://xkcd.com/2916/#xt=7&yt=118&v=1540) |
[Look at the stars](https://xkcd.com/2916/#xt=8&yt=118&v=1542) |
[the maelstrom has you](https://xkcd.com/2916/#xt=10&yt=118&v=1543) |
[Catmachine](https://xkcd.com/2916/#xt=9&yt=118&v=1541) |
[HarrXXXV](https://xkcd.com/2916/#xt=11&yt=118&v=1544) |
[design by committee v.0.1.28](https://xkcd.com/2916/#xt=0&yt=119&v=1547) |
[Missorted Balls get sent to the VOID](https://xkcd.com/2916/#xt=9&yt=119&v=1549) |
[the secret behind the bun-in-the-hat trick](https://xkcd.com/2916/#xt=1&yt=119&v=1546) |
[Blue green meet and greet](https://xkcd.com/2916/#xt=10&yt=119&v=1549) |
[rainbow road](https://xkcd.com/2916/#xt=11&yt=119&v=1547) |
[Feline Assistance](https://xkcd.com/2916/#xt=2&yt=119&v=1560) |
[fast & slow](https://xkcd.com/2916/#xt=3&yt=119&v=1553) |
[shooting fish in a barrel](https://xkcd.com/2916/#xt=4&yt=119&v=1558) |
[strong headwinds](https://xkcd.com/2916/#xt=6&yt=119&v=1560) |
[Wheels and speed.](https://xkcd.com/2916/#xt=5&yt=119&v=1554) |
[the wheel in the sky keeps on turnin](https://xkcd.com/2916/#xt=8&yt=119&v=1559) |
[so why are we out this time?](https://xkcd.com/2916/#xt=7&yt=119&v=1561) |
[those greens hit the cat too hard.](https://xkcd.com/2916/#xt=6&yt=119&v=1556) |
[Really Proud of Kitty](https://xkcd.com/2916/#xt=5&yt=119&v=1553) |
[mcdonalds ball pit sort](https://xkcd.com/2916/#xt=0&yt=120&v=1560) |
[nothing but fans](https://xkcd.com/2916/#xt=1&yt=120&v=1562) |
[very credible machine](https://xkcd.com/2916/#xt=2&yt=120&v=1564) |
[You didn't Rotate anything and it's *STILL* complex](https://xkcd.com/2916/#xt=3&yt=120&v=1569) |
[inward spiral](https://xkcd.com/2916/#xt=4&yt=120&v=1567) |
[Bouncesort II](https://xkcd.com/2916/#xt=5&yt=120&v=1570) |
[right isn't better](https://xkcd.com/2916/#xt=6&yt=120&v=1566) |
[Meh](https://xkcd.com/2916/#xt=7&yt=120&v=1569) |
[one part elegant, one part manic](https://xkcd.com/2916/#xt=8&yt=120&v=1571) |
[it could have been done with no items, but...](https://xkcd.com/2916/#xt=10&yt=120&v=1570) |
[Feeding the bonkfish by the shipwreck](https://xkcd.com/2916/#xt=9&yt=120&v=1573) |
[oversimplified](https://xkcd.com/2916/#xt=11&yt=120&v=1572) |
[Ugh](https://xkcd.com/2916/#xt=8&yt=121&v=1574) |
[bouncesort with error correction and straggler management](https://xkcd.com/2916/#xt=7&yt=121&v=1575) |
[the festival with a man who is on fire (tm)](https://xkcd.com/2916/#xt=5&yt=121&v=1576) |
[zap](https://xkcd.com/2916/#xt=9&yt=121&v=1573) |
[chaos stick](https://xkcd.com/2916/#xt=11&yt=121&v=1572) |
[Why are you talking about a "cult"? we just worship that relativistic, deterministic, sword-wielding being over there.](https://xkcd.com/2916/#xt=4&yt=121&v=1577) |
[Our machine uses 100% solar powered fans!](https://xkcd.com/2916/#xt=1&yt=121&v=1580) |
[The woodland wars](https://xkcd.com/2916/#xt=0&yt=121&v=1579) |
[does three bounce-filters constitute a plethora? Sure, it's a plethora of bounce-filters.](https://xkcd.com/2916/#xt=6&yt=121&v=1582) |
[fan-assisted bonklift, curved slow drop, cat for safety](https://xkcd.com/2916/#xt=3&yt=121&v=1581) |
[Accusort with cat traps and automatic unclogging](https://xkcd.com/2916/#xt=2&yt=121&v=1583) |
[Frictional Losses](https://xkcd.com/2916/#xt=10&yt=121&v=1583) |
[Under-engineered](https://xkcd.com/2916/#xt=1&yt=122&v=1594) |
[can(n)onical device](https://xkcd.com/2916/#xt=0&yt=122&v=1587) |
[This was a lot of work](https://xkcd.com/2916/#xt=2&yt=122&v=1586) |
[Simple machine ](https://xkcd.com/2916/#xt=3&yt=122&v=1588) |
[Check out my only fans!](https://xkcd.com/2916/#xt=4&yt=122&v=1590) |
[about as deterministic as i can get it sort](https://xkcd.com/2916/#xt=6&yt=122&v=1592) |
[XKCD #356: "Nerd Sniping" ("On this infinite grid of ideal one-ohm resistors...")](https://xkcd.com/2916/#xt=7&yt=122&v=1595) |
[Pinfall](https://xkcd.com/2916/#xt=5&yt=122&v=1593) |
[More datapoints needed for accurate red and yellow filtration](https://xkcd.com/2916/#xt=11&yt=122&v=1591) |
[Kittlesticks](https://xkcd.com/2916/#xt=9&yt=122&v=1594) |
[Maxwell's hell](https://xkcd.com/2916/#xt=10&yt=122&v=1592) |
[this game is a lot harder with anti-gravity](https://xkcd.com/2916/#xt=1&yt=123&v=1595) |
[pareidolia](https://xkcd.com/2916/#xt=8&yt=122&v=1597) |
[the whoopsie doodle](https://xkcd.com/2916/#xt=3&yt=123&v=1601) |
[the cat thinks she does everything, as usual](https://xkcd.com/2916/#xt=9&yt=123&v=1598) |
[We sure this is deterministic?](https://xkcd.com/2916/#xt=5&yt=123&v=1600) |
[Upstairs apartment has a leak in the bathroom roof](https://xkcd.com/2916/#xt=8&yt=123&v=1599) |
[the mandelbonk set](https://xkcd.com/2916/#xt=11&yt=123&v=1597) |
[SUnshine](https://xkcd.com/2916/#xt=0&yt=123&v=1603) |
[yellow by gravity and blue by the force](https://xkcd.com/2916/#xt=2&yt=123&v=1605) |
[multiplication of prime numbers under a foggy sky](https://xkcd.com/2916/#xt=6&yt=123&v=1606) |
[ 'surely there's an easier way to hold the anvil here?' ](https://xkcd.com/2916/#xt=4&yt=123&v=1607) |
[Batching mulitway green-sorting bouncervator wander-a-tronic bibble-o-matic](https://xkcd.com/2916/#xt=7&yt=123&v=1604) |
[did i forget anything?](https://xkcd.com/2916/#xt=10&yt=123&v=1606) |
[wind tunnel](https://xkcd.com/2916/#xt=0&yt=124&v=1611) |
[The Mostly Workinator 9000](https://xkcd.com/2916/#xt=1&yt=124&v=1609) |
[wHIRLPOOL](https://xkcd.com/2916/#xt=3&yt=124&v=1619) |
[Flipperkast](https://xkcd.com/2916/#xt=2&yt=124&v=1610) |
[Honestly the cats just cause problems.](https://xkcd.com/2916/#xt=4&yt=124&v=1613) |
[Don't Ask Why this Works](https://xkcd.com/2916/#xt=5&yt=124&v=1618) |
[The long way around. It's also chaotic. Look out!](https://xkcd.com/2916/#xt=6&yt=124&v=1615) |
[Pin Point Precision permits proper processing preventing panic and pain](https://xkcd.com/2916/#xt=7&yt=124&v=1616) |
[Bun Takes the High Road and Bun Takes the Low Road](https://xkcd.com/2916/#xt=11&yt=124&v=1617) |
[stray ball circulator](https://xkcd.com/2916/#xt=0&yt=125&v=1619) |
[Observation deck](https://xkcd.com/2916/#xt=1&yt=125&v=1618) |
[wielding the sword of inconsequential justice](https://xkcd.com/2916/#xt=2&yt=125&v=1620) |
[b-g-g filter that really didn't want to work](https://xkcd.com/2916/#xt=8&yt=124&v=1624) |
[Terrible factory](https://xkcd.com/2916/#xt=4&yt=125&v=1621) |
[horrible crossing](https://xkcd.com/2916/#xt=3&yt=125&v=1620) |
[the bun tree](https://xkcd.com/2916/#xt=5&yt=125&v=1623) |
[dual channel mode](https://xkcd.com/2916/#xt=9&yt=124&v=1625) |
[Friday afternoon machine](https://xkcd.com/2916/#xt=10&yt=124&v=1625) |
[uncomplicated bounce sort](https://xkcd.com/2916/#xt=7&yt=125&v=1629) |
[Unnecessary Corners](https://xkcd.com/2916/#xt=6&yt=125&v=1634) |
[The Dark Path](https://xkcd.com/2916/#xt=8&yt=125&v=1630) |
[I wonder what's going on down there](https://xkcd.com/2916/#xt=9&yt=125&v=1631) |
[Infinitely cool](https://xkcd.com/2916/#xt=10&yt=125&v=1633) |
[DR. Meow's Frendly Annihilator](https://xkcd.com/2916/#xt=11&yt=125&v=1635) |
[red rocket](https://xkcd.com/2916/#xt=0&yt=126&v=1636) |
[when the paths don't cross but you like sorters](https://xkcd.com/2916/#xt=8&yt=126&v=1637) |
[Pick a sword](https://xkcd.com/2916/#xt=11&yt=126&v=1634) |
[dodging the bonks](https://xkcd.com/2916/#xt=11&yt=125&v=1631) |
[the first Pride was a riot](https://xkcd.com/2916/#xt=10&yt=126&v=1635) |
[I probably should have fueld up before taking off.](https://xkcd.com/2916/#xt=9&yt=126&v=1636) |
[the last stand](https://xkcd.com/2916/#xt=2&yt=126&v=1640) |
[Tangled (2010) At Last I ](https://xkcd.com/2916/#xt=2&yt=126&v=1639) |
[Roller Coaster](https://xkcd.com/2916/#xt=1&yt=126&v=1638) |
[Who's that?](https://xkcd.com/2916/#xt=3&yt=126&v=1644) |
[three and a half](https://xkcd.com/2916/#xt=4&yt=126&v=1645) |
[HOw to navigate a British roundabout](https://xkcd.com/2916/#xt=5&yt=126&v=1649) |
[Or we could take the scenic route...](https://xkcd.com/2916/#xt=6&yt=126&v=1644) |
[bouncesort IV - Color Coded](https://xkcd.com/2916/#xt=7&yt=126&v=1646) |
[speculative error de-propagationator](https://xkcd.com/2916/#xt=9&yt=127&v=1649) |
[Minecraft ](https://xkcd.com/2916/#xt=11&yt=127&v=1647) |
[Six Flags](https://xkcd.com/2916/#xt=10&yt=127&v=1648) |
["Breakout" is a stupid game (#347)](https://xkcd.com/2916/#xt=11&yt=127&v=1646) |
[detour](https://xkcd.com/2916/#xt=0&yt=127&v=1650) |
