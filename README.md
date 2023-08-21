# SubstackParser
This gem is to help parse [Substack](https://substack.com/) exports.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'substack_parser'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install substack_parser

## Usage
To parse the export:
```ruby
parser = SubstackParser.new("path/to/substack_export")
```

Substack provides data for mailing lists, posts, post visits, and posts mailed.

### Mailing List
```ruby
parser.mailing_list # List of mailing lists

[
    {
        "email"=>"dummy_email1@example.com",
        "active_subscription"=>"FALSE",
        "expiry"=>nil,
        "plan"=>"other",
        "email_disabled"=>"FALSE"
         "digest_enabled"=>"FALSE",
        "created_at"=>"2022-11-15T07:55:22.660Z"
    }, .....
]



```
### Post List
```ruby
parser.post_list # List of posts

[
    {
        "post_id"=>1,
        "post_date"=>"2023-06-22T04:58:05.613Z",
        "is_published"=>"TRUE",
        "email_sent_at"=>"2023-06-22T04:58:05.675Z",
        "inbox_sent_at"=>"2023-06-22T04:58:05.675Z",
        "type"=>"newsletter",
        "audience"=>"only_paid",
        "title"=>"One",
        "subtitle"=>"Lorem ipsum dolor",
        "podcast_url"=>nil,
        "content"=>"<p>Lorem ipsum dolor ........</p>"
    }, ....
]

```
### Read List

```ruby
parser.read_list #To get all the read list

[
    {
        "post_id"=>"1",
        "timestamp"=>"2023-01-05T10:36:08.164Z",
        "email"=>"dummy_email1@gmail.com",
        "post_type"=>"newsletter",
        "post_audience"=>"founding",
        "active_subscription"=>"TRUE",
        "country"=>nil,
        "city"=>nil,
        "region"=>nil,
        "device_type"=>nil,
        "client_os"=>nil,
        "client_type"=>nil,
        "user_agent"=>"Mozilla/5.0"
    }
]

parser.get_read_list_for_post(post_id) #To get read list a post
```

### Post Email List
```ruby

parser.emails_sent_list #To get all the post emails that were sent

[
    {
        "post_id"=>"1",
        "timestamp"=>"2023-01-05T10:35:15.735Z",
        "email"=>"dummy_email1@gmail.com",
        "post_type"=>"newsletter",
        "post_audience"=>"founding",
        "active_subscription"=>"FALSE"
    } ......
]


parser.get_emails_sent_list_for_post(post_id) #To get emails sent for a post

```



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/betacraft/substack_parser.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
