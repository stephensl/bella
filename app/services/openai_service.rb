# app/services/openai_service.rb
require 'net/http'
require 'json'

class OpenaiService
  BASE_URL = 'https://api.openai.com/v1/engines/davinci-codex/completions'

  def initialize(api_key)
    @api_key = api_key
  end

  def ask_question(question)
    uri = URI(BASE_URL)
    request = Net::HTTP::Post.new(uri)
    request['Content-Type'] = 'application/json'
    request['Authorization'] = "Bearer #{@api_key}"
    request.body = {
      prompt: question,
      max_tokens: 150
    }.to_json

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
      http.request(request)
    end

    JSON.parse(response.body)
  end
end
