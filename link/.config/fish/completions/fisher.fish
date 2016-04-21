complete -xc fisher -s h -l help -d "Show usage help"
complete -xc fisher -s q -l quiet -d "Enable quiet mode"
complete -xc fisher -s v -l version -d "Show version information"
complete -xc fisher -n "__fish_use_subcommand" -a install -d "Install plugins  /  i"
complete -xc fisher -n "__fish_use_subcommand" -a update -d "Update itself and plugins  /  u"
complete -xc fisher -n "__fish_use_subcommand" -a rm -d "Remove plugins  /  r"
complete -xc fisher -n "__fish_use_subcommand" -a ls -d "List plugins  /  l"
complete -xc fisher -n "__fish_use_subcommand" -a help -d "Show help  /  h"