# letsencrypt-autorenew
Bash script for auto renew let's encrypt ssl certificates

As you may know all certificates are for 3 months.
So you need to renew them everery three monthes. Ouch

Here a way to automate it.

1) Edit script
vi /PathToLetsencrypt/letsencrypt/cron.sh

2) Configure LETSENCRYPT variable with your path for letsencrypt-auto script:
LETSENCRYPT="/path/to/letsencrypt-auto"

3) Don't forget to make it executable
chmod +x /PathToLetsencrypt/letsencrypt/cron.sh

4) Cron exemple: 15 Jan, 15 April, 15 July, 15 Oct 

"* * 15 4,7,10,1 * /PathToLetsencrypt/letsencrypt/cron.sh >> /var/log/letsencrypt/cron.log"

