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

If you're just here to search for published submissions, have a look at
[incrediblexkcd.csv](/incrediblexkcd.csv) - 
it contains the ids, permalinks, submission dates (in UTC timezone), and titles
of all blueprints that have been published on
[xkcd.com](https://xkcd.com/2916).

Otherwise feel free to run the script
[getincrediblexkcd.sh](/getincrediblexkcd.sh)
yourself. It takes me about 15mins
to run for the first 934 machines. You can stop it at any time by just pressing
`CTRL-C` to send a SIGINT and it *should* exit gracefully. When you run the
script again you can use the argument `--reset` to delete all data and start
from scratch, or otherwise it should nominally pick up where it left off. That
said, the slowest part of the script is scanning through the files rather than
downloading the raw data so it's not a whole lot faster - it still takes
me 12mins to scan through the 934 machines without downloading anything. No
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
