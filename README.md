# Hanami::Octicons

A custom helper method around GitHub's [Octicons](https://github.com/primer/octicons) that would be useful in [Hanami](http://hanamirb.org/) projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hanami-octicons'
```

And then execute:

    $ bundle

As final step, we need to include the module in all the views.
```ruby
# apps/web/application.rb

module Web
  class Application < Hanami::Application
    configure do
      # ...

      view.prepare do
        # ...
        include Hanami::Octicons::Helper
        # ...
      end
    end
  end
end
```

See [View's Share Code](http://hanamirb.org/guides/1.1/views/share-code/) section for low level details on Hanami guides website.

## Usage

```ruby
<%= octicon(:book) %>
<%= octicon(:book, height: 32, fill: "currentcolor", class: "mr-3") %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mbobin/hanami-octicons. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hanami::Octicons project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mbobin/hanami-octicons/blob/master/CODE_OF_CONDUCT.md).
