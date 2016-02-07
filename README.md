# AtomRailsDebugger

atom_rails_debugger allows you to debug Rails applications from inside Atom.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'byebug'
gem 'atom_rails_debugger'
```

And then execute:

    $ bundle

Then include byebug core at the top of your `application_controller.rb`:

```
require 'byebug/core'
```

Finally, you need to include the gem in your `ApplicationController`. Place this line at the top of your `ApplicationController` class:

```
include AtomRailsDebugger
```

## Troubleshooting

If you have any problems, please ensure that you have the latest version of `byebug` installed. If you have any problems then try checking out master

```
gem 'byebug, github: 'deivid-rodriguez/byebug'
```

## Usage

Checkout the Atom plugin!


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/atom_rails_debugger.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
