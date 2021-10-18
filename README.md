# Omniauth::Outreach

This is a completed and tested Outreach strategy using Omniauth Oauth2 and connecting to Outreach's v2 API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-outreach', git: 'https://github.com/kevinneub/omniauth-outreach'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install https://github.com/kevinneub/omniauth-outreach

## Usage with Devise

config.omniauth :outreach, <CLIENT_ID>, <CLIENT_SECRET>,
  {
    response_type: 'code',
    scope: ''
  }

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kevinneub/omniauth-outreach.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

