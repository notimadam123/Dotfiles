if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
function fish_mode_prompt; end

set -x fish_greeting ""

abbr cp 'cp -iv'
abbr mv 'mv -iv'
abbr rm 'rm -vI'
abbr rsync 'rsync -vrPlu'
abbr md 'mkdir -pv'


abbr g 'git'
abbr ga 'git add'
abbr gaa 'git add -A'
abbr gcm 'git commit -m'
abbr gp 'git push'

abbr yt "yt-dlp --embed-metadata -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
abbr yta 'yt -x -f bestaudio/best'
abbr ffmpeg 'ffmpeg -hide_banner'

abbr ls 'eza'
abbr ll 'eza -l'
abbr grep 'rg'
abbr cat 'bat'
abbr cd 'z'

abbr ka 'killall'
abbr p 'sudo pacman'
abbr pi 'sudo pacman -S'
abbr pa 'paru'
abbr pas 'paru -S'

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

zoxide init fish | source

