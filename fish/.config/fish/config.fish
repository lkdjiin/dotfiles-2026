# function auto-ls-after-cd --on-variable PWD
#   if status is-interactive
#     timeout 1s ls -lh --time-style=long-iso --color=auto
#   end
# end

function make-custom-greeting
  set RED $(printf '\033[38;5;196m')
  set ORANGE $(printf '\033[38;5;202m')
  set GREEN $(printf '\033[38;5;082m')
  set TEAL $(printf '\033[1;36m')
  set BLUE $(printf '\033[38;5;021m')
  # set PURPLE $(printf '\033[38;5;093m')
  # set PINK $(printf '\033[38;5;163m')
  set RESET $(printf '\033[0m')

  set message " === 🐟 Hey ! 🐟 ===  🐠 Hey ! 🐠 === 🐳 Hey ! 🐳 ==="

  switch (random 1 4)
    case 1
      set -g custom_greeting \n "$RED" $message "$RESET" \n
    case 2
      set -g custom_greeting \n "$ORANGE" $message "$RESET" \n
    case 3
      set -g custom_greeting \n "$TEAL" $message "$RESET" \n
    case 4
      set -g custom_greeting \n "$GREEN" $message "$RESET" \n
    case 5
      set -g custom_greeting \n "$BLUE" $message "$RESET" \n
  end
end

function display-welcome-banner
  set img (random choice ~/.config/fish/images/*.jpg)
  chafa --format=symbols -w 9 $img
end

if status is-interactive
  # Commands to run in interactive sessions can go here
  # make-custom-greeting
  display-welcome-banner
  set -g fish_greeting $custom_greeting
  abbr --add tra translate
  abbr --add bxr 'bundle exec rspec'
  alias cat="batcat"
  alias mkdir="mkdir -v"
  alias cp="cp -v"
  alias mv="mv -v"
  alias rm="rm -v"
  alias m="wheat"
end

# Added by `rbenv init` on ven. 28 mars 2025 08:46:38 CET
status --is-interactive; and ~/.rbenv/bin/rbenv init - --no-rehash fish | source

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/xavier/.lmstudio/bin
# End of LM Studio CLI section


# opencode
fish_add_path /home/xavier/.opencode/bin

# Configure batcat theme
set -x BAT_THEME (cat ~/.config/bat/theme)
