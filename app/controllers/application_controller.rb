class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # def after_sign_in_path_for(resource)
    # params[:next] || super
  # end
#   
  def logged_user
    session[:user_id] = User.last.id unless session.has_key? :user_id    
    return  session[:user_id]
  end
  
  
  # find or build a Cart object for the current user
  def current_cart
    logger.debug "---> current_cart@logged_user: #{logged_user}"
    logger.debug "---> current_cart@session[:user_id]: #{session[:user_id]}"
    
    if (session[:cart_id])
      c = Cart.find(session[:cart_id])   
      c.user_id = logged_user
      session[:cart_id] = c.id
      
    else
      c = Cart.create
      c.user_id = logged_user
      session[:cart_id] = c.id
    end    
    return c
    
  rescue ActiveRecord::RecordNotFound
    c = Cart.create
    c.user_id = logged_user
    session[:cart_id] = c.id      
    return c
  end
end
