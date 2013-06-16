# Cleanliness

I love cursing as much as the next @sshole, but as an application developer sometimes you need to keep the conversation clean. Bad words, hate speech, general nastiness can have negative consequences.  Whether it be usernames or comments, sometimes it helps to limit the offensiveness of the general population. Preventing the more sensitive portion of your user base from being inadvertently offended.

The *cleanliness* gem provides two functions:

#### "String".clean
  
"string".clean will clean an ugly string, by replace ugly words with a more tame, and oftentimes humorous counterpart.
  
#### cleanliness validation

To automatically clean a field in your rails application, you can use the clean validator:

    validates :username, presence: true, *cleanliness: true*

## Installation

Add this line to your application's Gemfile:

    gem 'cleanliness'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cleanliness

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
