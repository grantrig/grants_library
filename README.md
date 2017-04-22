# GrantsLibrary


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grants_library'

## Terminal Notification Interface

This library makes it easy to setup notifications on Mac.

### Requirements

terminal-notifier Must be installed and working

### Usage
```ruby
gem 'grants_library'

require 'grants_library'

GrantsLibrary::TerminalNotifier.notify "This is a test message"

#Plays the default system sound
GrantsLibrary::TerminalNotifier.notify :sound, "This is a test message"
```