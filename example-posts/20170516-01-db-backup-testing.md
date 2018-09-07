Database backups need testing
====================
Type: link
Link: https://marco.org/2017/02/01/db-backup-testing
Image: -----
Description: Pentingnya melakukan testing bagi backup basis data. 
Published: 2017-05-16 08:08am
Publish-now

I linked here because it's new for me.

>Untested backup methods that turn out to be missing or broken are *extremely* common. I can’t fault them much because it’s a very easy mistake to make: most backups, by nature, never need to be restored from, so you never realize if something changes and they stop working… until it’s too late.
>
>The solution is to frequently and automatically test backups […].
>
>[…]
>
>Automated backup testing isn’t difficult — it’s one simple shell script, called by cron every night, piping its results to mail. If you can run a server, you can do this.
>
>The second part is the trick, though: it’d be too easy to start paying less attention to those daily emails over time, and if they stopped arriving, I may not notice for a while.

Perlu dicoba. Dan mungkin cukup *worthy* untuk menjadi modul dalam Overcrack. 
