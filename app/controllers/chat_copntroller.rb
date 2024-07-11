class ChatController < ApplicationController
  def new
  end

  def create
    openai_service = OpenaiService.new(ENV['OPENAI_API_KEY'])
    @response = openai_service.ask_question(params[:question])
    render :new
  end
end
