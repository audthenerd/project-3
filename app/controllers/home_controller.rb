class HomeController < ApplicationController
  before_action :authenticate_usercust!, :authenticate_usercust! , :check_user

  def check_user
    if current_user.role == "customer"
    redirect_to url('http://google.com')
  end
  end


def index
    render plain: 'Main Home'
  end
end