Hello World 
--------------------

This project is a small collection of few bash hacks which can be used to make life easier for BASH user. 

You can easily add any script directory and make it handy to use. It also features "dynamic autocompletion" of commands and subcommands list. 


Basics
--------------------
It isn't a "good to go" project, you might need to make changes in scripts to make them fit for you. 

1. Initially - You should keep stuff in `~/Playground/scripts` (Suggestions are welcomed.)
2. Copy or link the `.bash_aliases` to `~/.bash_aliases`, Source `.bashrc` by `source ~/.bashrc`
   OR
    add `source ~/Playground/.bash_aliases` in `.bashrc`
       
3. Add any script with extension `.bash` or `.sh` in `scripts`.
4. You can execute script by `mscript $script_name_without_ext` or `ms $script_name_without_ext`

Example: `ms robo`
