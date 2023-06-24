module ProductsHelper

  def product_image(product)
    product.image.presence ||  "tomato.jpg"
  end

  def get_product_description(product)
    product.description.presence || 'Some quick example text to build on the card title and make up the bulk of the cards content.'
  end
end
