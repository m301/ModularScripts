Hello World 
--------------------

This project is a small collection of few bash hacks which can be used to make life easier for BASH user. 

You can easily add any script directory and make it handy to use. It also features "dynamic autocompletion" of commands and subcommands list. 


Basics
--------------------
It isn't a "good to go" project, you might need to make changes in scripts to make them fit for you. 

0. Clone the project in a directory.
2. Copy or link the `bash_aliases.sh` to `~/.bash_aliases`, Source `.bashrc` by `source ~/.bashrc`
   OR
    add `source ~/bash_aliases.sh` in `.bashrc`
       
3. Add any script with extension `.bash` or `.sh` in `custom`.
4. You can execute script by `mscript $script_name_without_ext` or `ms $script_name_without_ext`


Example: `ms robo`



One liner ?
-------------------
`curl https://raw.githubusercontent.com/m301/ModularScripts/master/install.sh | bash -s ~/.mscripts`