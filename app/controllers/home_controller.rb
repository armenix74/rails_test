class HomeController < ApplicationController
  #include Utilities
  layout false
  def index
    #@conts_and_meths = []

    controller_file = Array.new
    @controller_list = Hash.new
    Dir["app/controllers/*.rb"].each do |file|
      @controller_list[file] = file.split('/').last.sub!("_controller.rb","")
    #controller_list.push(file.split('/').last.sub!("_controller.rb",""))
    end
    
    puts @controller_list.inspect

  end

end