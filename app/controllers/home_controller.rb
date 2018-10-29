class HomeController < ApplicationController
  # before_action :authenticate_usercust! , :check_user

  # def check_user
  #   if current_userrest?
  #   redirect_to url('http://google.com')
  # elsif current_usercust?
  #   redirect_to url('http://google.com')
  #   end
  # end


def index
    render plain: 'Main Home'
  end
end