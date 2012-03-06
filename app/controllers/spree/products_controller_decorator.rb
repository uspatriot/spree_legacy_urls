Spree::ProductsController.class_eval do
  

  # Looks for products with matching lagacy_url and 301's if possible.
  def attempt_301_redirect(*args)
    
    slug = params[:id]
    
    # Many lagacy links will have .html attached
    if params[:format]
      slug = slug + '.' + params[:format]
    end
    
    @redir = Spree::Product.find_by_legacy_url(slug)
    if @redir
      redirect_to @redir, :status => :moved_permanently
      return
    else
      render_404
      return
    end
  end
  
  # Override Product.show method to allow for 301 redirects
  def show
    @product = Spree::Product.find_by_permalink(params[:id])
  
    # This override of the show method just replaces the following line:
    #
    #     return unless @product # line 17?
    #
    # with the following if block.
    if !@product
      attempt_301_redirect(params)
      return
    end
    # Resume original method code...
    
    @variants = Spree::Variant.active.includes([:option_values, :images]).where(:product_id => @product.id)
    @product_properties = ProductProperty.includes(:property).where(:product_id => @product.id)
    
    referer = request.env['HTTP_REFERER']
    
    if referer && referer.match(HTTP_REFERER_REGEXP)
      @taxon = Taxon.find_by_permalink($1)
    end
    
    respond_with(@product)
  end

  
  
end