set fish_greeting

set -Ux MOZ_ENABLE_WAYLAND "1"
set -Ux GDK_BACKEND "wayland"
set -Ux QT_QPA_PLATFORM "wayland-egl"
set -Ux SDL_VIDEODRIVER "wayland"
set -Ux CLUTTER_BACKEND "wayland"
set -Ux XDG_SESSION_TYPE "wayland"

set -Ux VISUAL "nvim"
set -Ux EDITOR "nvim"
