# Sorted::Mongoid

Adds Mongoid support to [sorted](https://github.com/mynameisrufus/sorted). Allows you to sort large (Mongoid) datasets over many pages, without losing state.

## Installation

Add this line to your application's Gemfile:

    gem 'sorted-mongoid'

And then execute:

    $ bundle

## Usage

Just like sorted, hopefully! Include it in your Gemfile and all your Mongoid models should have the `sorted` method, eg:

```ruby
@users = User.sorted(params[:sort], "email ASC").page(params[:page])
```

Use SQL ordering keywords, even though we're not in SQLLand anymore.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
