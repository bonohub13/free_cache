# free\_cache
## Free your cache when your memory is used to a certain level

- - -

## ::::: Documentation :::::
### How to use
Add executable permission to <i>free_cache.bash</i><br/>
Run crontab as root or with sudo<br/>
```# crontab -e```<br/>
edit crontab as the following<br/>
```minute hour date-of-month month day-of-week . /root/free_cache.bash```<br/>
example0) Run every hour:<br/>
```0 * * * * . /root/free_cache.bash```<br/>
example1) Run every hour and set the trigger to 2GB (minimal is 1GB)<br/>
```0 * * * * . /root/free_cache.bash 2000000000```<br/>

- - -

## ::::: Updates :::::
- September 2, 2020
    - Initialized repository
    - Added <b>devel</b> branch
    - Added:
        - free_cache.bash
        - setup.sh
    - Merged with devel branch