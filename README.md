.bash
=====

My bash configuration, features include:
 * minimalist prompt
 * git repo/branch awareness
 * logical script organisation
 * machine specific script loading

Setup
-----

 1. Clone code
> git clone https://github.com/leighton/.bash.git ~/.bash

 2. Backup .bashrc and source .bash 

> mv ~/.bashrc ~/.bashrc.bkp
> cat > ~/.bashrc
> source ~/.bash/init.bash

 3. Personalise your local configuration

First determine your machine name

> hostname -s

Then create your own host configuration

> cat > ~/.bash/local/<your_machine_name>.bash
> export PROMPT_SYMBOL=♥


