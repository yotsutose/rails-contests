class PagesController < ApplicationController
  def index
    @message = ''
    if user_signed_in? then
      @message = '現在はログインしている状態です。'
    else
      @message = 'ログインしていません。'
    end
  end
end
