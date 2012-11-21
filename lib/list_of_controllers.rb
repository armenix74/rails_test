module Utilities

  
def self.list_of_controller  
  
 conts_and_meths = []
  controllers = Dir.new("#{RAILS_ROOT}/app/controllers").entries
  controllers.each do |controller|
    if controller =~ /_controller/ and not controller.index("\.swp")
then
      cont = controller.camelize.gsub(".rb","")
      meths = (eval("#{cont}.new.methods") -
ApplicationController.methods - Object.methods -
ApplicationController.new.methods).sort
      conts_and_meths << [cont, meths]
    end    
end


end