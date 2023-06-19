
# Getting Started with Swagger Petstore

## Introduction

This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

Find out more about Swagger: [http://swagger.io](http://swagger.io)

## Install the Package

Install the gem from the command line:

```ruby
gem install repo-test-sdk -v 2.3.6
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'repo-test-sdk', '2.3.6'
```

For additional gem details, see the [RubyGems page for the repo-test-sdk gem](https://rubygems.org/gems/repo-test-sdk/versions/2.3.6).

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | Environment | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `password` | `String` |  |

The API client can be initialized as follows:

```ruby
client = SwaggerPetstore::Client.new(
  password: 'Password',
  environment: Environment::PRODUCTION
)
```

## Authorization

This API uses `Custom Authentication`.

## List of APIs

* [Pet](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/controllers/pet.md)
* [Store](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/controllers/store.md)
* [User](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/controllers/user.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/ruby/tree/2.3.6/doc/http-request.md)

