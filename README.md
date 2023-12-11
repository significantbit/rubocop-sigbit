# Rubocop::Sigbit
> Common lint rules for Ruby projects

## Installation

Add this line to your application's Gemfile:

```ruby
# Common rubocop rules
gem 'rubocop-sigbit', git: "https://github.com/significantbit/rubocop-sigbit.git"
```

And then execute:

    $ bundle install

Add to the top of your `.rubocop.yml`:

```yml
inherit_gem:
  rubocop-sigbit: .rubocop.yml
```