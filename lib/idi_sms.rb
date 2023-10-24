# frozen_string_literal: true

require 'net/http'
require 'json'
require 'yaml'

module IdiSms
  class SmsSender
    def initialize(environment = :development)
      config = load_config(environment)
      @api_url = config['api_url']
      @secret_key = config['secret_key']
    end

    def send_sms(phone_no, sms_text, sms_language)
      response = send_sms_request(phone_no, sms_text, sms_language)
      process_response(response)
    end

    private

    def load_config(environment)
      config_file = File.expand_path('config/idi_sms.yml')
      YAML.load_file(config_file)[environment.to_s]
    end

    def send_sms_request(phone_no, sms_text, sms_language)
      url = URI.parse(@api_url)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request['Content-Type'] = 'application/json'
      request.body = {
        sec_key: @secret_key,
        phone_no: phone_no,
        sms_text: sms_text,
        sms_language: sms_language
      }.to_json

      http.request(request)
    end

    def process_response(response)
      if response.code == '200'
        response_body = JSON.parse(response.body)
        response_body['status'] == 'success' ? 'SMS sent successfully.' : "Error: #{response_body['message']}"
      else
        'Failed to send SMS.'
      end
    end
  end
end
