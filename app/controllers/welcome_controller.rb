class WelcomeController < ApplicationController
  def index
    flash[:alert] = "晚安！该睡了！"
    flash[:warning] = "这是 warning 的信息"
  end
end
