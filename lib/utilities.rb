module Utilities
  def Utilities.list_of_controller

    controller_list = Hash.new
    Dir["app/controllers/*.rb"].each do |file|
      controller_list[file] = file.split('/').last.sub!("_controller.rb","")
    end
    
    return controller_list.to_hash

  end
end
