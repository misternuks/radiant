class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def gpt
    @service = OpenaiService.new(params["super_url"]).call
    raise
  end
end
