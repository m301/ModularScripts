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
To install you can use one liner given below, It will install scripts in `~/.mscripts`.

 
`curl https://raw.githubusercontent.com/m301/ModularScripts/master/install.sh | bash -s ~/.mscripts`



Subcommand autocompletion
-----------------------------
If you want your custom script to support autocompletion, Simply echo possible commands list if first argument is `shortlist`.

NOTE: For autocompletion your script should have extension `.sh` or `.bash`.
Example:
```bash
if [ $1 = 'shortlist' ]; then 
    echo "command1 command2 command3"
    exit 0 
fi

# One liner
if [ $1 = 'shortlist' ]; then echo "command1 command2 command3"; exit 0; fi;
```