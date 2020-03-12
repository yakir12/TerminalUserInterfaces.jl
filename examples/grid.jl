using TUI
using Random

function main()
    TUI.initialize()
    y, x = TUI.locate_cursor()

    count = 1
    t = TUI.Terminal()

    TUI.clear_screen()
    TUI.hide_cursor()

    while true

        w, h = TUI.terminal_size()

        p = TUI.Grid(
            block = TUI.Block(title = "Bar Chart"),
            data = [
                    1 2 3
                    4 5 6
                    7 8 9
                   ],
            cell_height = 6,
            cell_width = 6,
        )

        r = TUI.Rect(x, y, w, h)

        TUI.draw(p, r)

        TUI.flush(t)

        c = Char(read(stdin, 1)[])

        if c == 'j'
            count += 1
        elseif c == 'k'
            count -= 1
        elseif c == 'q'
            break
        end

        if count < 1
            count = 1
        end

    end

    TUI.cleanup()

end


main()
