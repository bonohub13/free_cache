# free\_cache
## Free your cache when your memory is used to a certain level

- - -

## ::::: Documentation :::::
### How to use
- Initial run<br/>
Give <i>setup.bash</i> execution permission<br/>
<b>```chmod +x setup.sh```</b><br/>
Run <i>setup.bash</i> to initialize<br/>
<b>```$ ./setup.sh```</b><br/>
edit crontab as the following<br/>
<b>```minute hour date-of-month month day-of-week . /root/free_cache.bash```</b><br/>
example0) Run every hour:<br/>
<b>```0 * * * * . /root/free_cache.bash```</b><br/>
example1) Run every hour and set the trigger to 2GB (minimal is 1GB)<br/>
<b>```0 * * * * . /root/free_cache.bash 2000000000```</b><br/>
- Manual<br/>
Run ```crontab -e``` with root user privileges (or with sudo)<br/>
<b>```# crontab -e```<b><br/>

- - -

## ::::: Updates :::::
- September 2, 2020
    - Initialized repository
    - Added <b>devel</b> branch
    - Added:
        - free_cache.bash
        - setup.sh
    - Merged with devel branch