module ProductsHelper

  def product_image(product)
    product.image.presence ||  "tomato.jpg"
  end
end
