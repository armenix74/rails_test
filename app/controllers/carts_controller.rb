class CartsController < ApplicationController  
include ShoppingService
  
  def add_to_cart
            
    @cart = current_cart
    @product = Product.find(params[:id])
   
   
    ShoppingService.add_to_cart(@cart, @product)

=begin
    if (@cart.cart_items.count == 0)
      @cart.cart_items << CartItem.create(:product_id =>@product.id, :quantity => 1)
    else      
      current_item = @cart.cart_items.find_by_product_id(@product.id)
      logger.debug "---> add_to_cart@ current_item: #{current_item.inspect}"
      if current_item  
        logger.debug "---> add_to_cart@ CART ITEM già trovato"
        current_item.quantity +=1
        current_item.save!
        
      else
        logger.debug "---> add_to_cart@ CART ITEM NON TROVATO, lo aggiungo"
        @cart.cart_items << CartItem.create(:product_id =>@product.id, :quantity => 1)
      end        
    end    
    
=end
     
    redirect_to(products_path, :notice => 'Cart was successfully update.')  
     
    
  end  
   
  
  
  def clear
    
    
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  # GET /carts
  # GET /carts.xml
  def index
    @carts = Cart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carts }
    end
  end

  # GET /carts/1
  # GET /carts/1.xml
  def show
    @cart = Cart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cart }
    end
  end

  # GET /carts/new
  # GET /carts/new.xml
  def new
    @cart = Cart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cart }
    end
  end

  # GET /carts/1/edit
  def edit
    @cart = Cart.find(params[:id])
  end

  # POST /carts
  # POST /carts.xml
  def create
    @cart = Cart.new(params[:cart])

    respond_to do |format|
      if @cart.save
        format.html { redirect_to(@cart, :notice => 'Cart was successfully created.') }
        format.xml  { render :xml => @cart, :status => :created, :location => @cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carts/1
  # PUT /carts/1.xml
  def update
    @cart = Cart.find(params[:id])

    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to(@cart, :notice => 'Cart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.xml
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
end
