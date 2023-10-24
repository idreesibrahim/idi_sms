# idi_sms Gem

## Overview

The `idi_sms` gem is a Ruby library that simplifies the process of sending SMS messages using the 8070 short code SMS-Gateway API. This gem is specifically designed for integration with the PITB Dengue Tracking System, allowing you to send SMS messages efficiently and seamlessly.

## Installation

To use the `idi_sms` gem in your project, follow these steps:

1. Add the gem to your project's Gemfile:

   ```ruby
   gem 'idi_sms'

Run bundle install to install the gem and its dependencies.

2. Run Command to generate yml file for setting key:
   
   ```ruby
   $ rails generate idi_sms:config

it will create a file on config/idi_sms.yml

3. Set your api_url and secret_key as per your envionrment
      1. api_url: https://gatewayurl.sms
      2. secret_key: your_secret_key
## Usage

```ruby
Require the gem in your Ruby code:
require 'idi_sms'

sms_sender = IdiSms::SmsSender.new


Customize your SMS details, including the phone number, SMS text, and SMS language:

phone_no = 'xxxxxxxxxx'(allow number only)
sms_text = 'This gem created by idi'
sms_language = 'english'


Send an SMS using the send_sms method and handle the response:


result = sms_sender.send_sms(phone_no, sms_text, sms_language)
puts result

```
## Response
SUCCESS Response:
```ruby

  {
    "status": "success",
    "message": "sent to SMS Provider for broadcast."
  }
```
Error Response:
```ruby
  {
    "status": "error",
    "message": "Phone Number is Missing"
  }

  {
    "status": "error",
    "message": "SMS text is missing"
  }

  {
    "status": "error",
    "message": "Phone Number should contains only digits & length equals to 11."
  }

  {
    "status": false,
    "error": "Invalid API Key."
  }
```
## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

The idi_sms gem is released under the MIT License. See the LICENSE file for details.

Contact
If you have any questions or encounter issues with the idi_sms gem, feel free to contact idrees.ibrahim009@gmail.com.


In the provided text, I added instructions for generating an API key and setting environment variables. Please customize it further with the actual URLs, environment variable names, and any additional details specific to your gem.
