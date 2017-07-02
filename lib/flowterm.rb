require 'curses'
require 'optparse'
require "flowterm/version"

class Flowterm
  def initialize(argv, input)
    @sleep = 1 / 25.0

    opt = OptionParser.new
    opt.on('--speed=speed') { |v| @sleep = 1 / v.to_f }
    opt.parse!(argv)
    @str = input.read
  end

  def run
    Curses.init_screen
    begin
      Curses.cols.times do |idx|
        render(@str, -idx)
        sleep @sleep
      end
    ensure
      Curses.close_screen
    end
  end

  def render(str, col_offset)
    col = Curses.cols - str.each_line.max_by(&:size).size + col_offset
    line = (Curses.lines - str.each_line.count) / 2

    Curses.clear
    str.each_line.with_index do |str_line, index|
      Curses.setpos(line + index, [col, 0].max)
      str_line = str_line[-col..-1] || '' if col < 0
      Curses.addstr(str_line)
    end
    Curses.refresh
  end
end
