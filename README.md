# Flowterm

String flows in a terminal.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flowterm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flowterm

## Basic Usage

```bash
# "meow" flows in the terminal.
$ echo meow | flowterm

# "meow"(ASCII Art) flows in the terminal.
$ banner meow | flowterm

$ flowterm --help
Usage: flowterm [options]
        --speed=speed
        --[no-]trap
```

![basic-usage-animation](https://user-images.githubusercontent.com/4361134/27766824-dbc14eda-5f19-11e7-9b74-6f7c679bde82.gif)

## Advanced Usage

If you use zsh, you can run a command by this command when you typo the command.

```zsh
# .zshrc
command_not_found_handler()
{
  banner "$*" | flowterm
  echo "command not found: $*"
  return 127
}
```


![command-not-found-usage](https://user-images.githubusercontent.com/4361134/27766826-04215de8-5f1a-11e7-88dd-95b829581b69.gif)

License
-------

These codes are licensed under CC0.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)
