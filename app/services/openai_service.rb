# app/services/openai_service.rb
require "openai"

class OpenaiService
  attr_reader :client, :prompt

  def initialize(prompt)
    @client = OpenAI::Client.new
    @prompt = prompt
  end

  def call
    # message = chat.messages.create(role: "assistant", content: "")
    # message.broadcast_created
    # OpenAI::Client.new.chat(
    #   parameters: {
    #     model: "gpt-3.5-turbo",
    #     messages: Message.for_openai(chat.messages),
    #     temperature: 0.1,
    #     stream: stream_proc(message: message)
    #   }
    # )
    response = client.chat(
      parameters: {
          model: "gpt-3.5-turbo", # Required.
          messages: [{ role: "user", content: prompt }], # Required.
          temperature: 0.6,
          stream: false
      })
    return response["choices"][0]["message"]["content"]
  end

  # def stream_proc(message:)
  #   proc do |chunk, _bytesize|
  #     new_content = chunk.dig("choices", 0, "delta", "content")
  #     message.update(content: message.content + new_content) if new_content
  #   end
  # end
  # {
  #   title: currentTitle,
  #   role: "user".
  #   content: value
  # },
  # {
  #   title: currentTitle,
  #   role: response["role"]
  #   content: response["choices"][0]["message"]["content"]
  # }
end
