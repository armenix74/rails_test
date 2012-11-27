
class HomeController < ApplicationController
  include Utilities
  layout false
  
  
  def index
    @controller_list = Hash.new
    @controller_list = Utilities.list_of_controller
   
  end

end

