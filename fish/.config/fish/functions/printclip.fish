function printclip --wraps='maim -s | xclip -selection clipboard -t image/png' --description 'alias printclip maim -s | xclip -selection clipboard -t image/png'
    maim -s | xclip -selection clipboard -t image/png $argv
end
