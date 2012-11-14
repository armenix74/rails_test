require 'profile_service'


class UserController < ApplicationController
  
  def index
    @users = ProfileService.getAllUsers
  end

end
