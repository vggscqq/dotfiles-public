# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
 


function fish_prompt
  set_color green
  printf '%s'(whoami)
  set_color normal
  printf '@'
  set_color magenta
  printf '%s'(cat /proc/sys/kernel/hostname)
  
  #set_color yellow
  #printf '%s'(echo ' [')(cat /sys/class/power_supply/BAT1/capacity)(echo "] ")


  set last_status $status

  set_color $fish_color_cwd
  printf '%s'(prompt_pwd)
  set_color normal

  printf '%s' (__fish_git_prompt)
  echo -n "> "
  set_color normal
end
