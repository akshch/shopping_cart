module ProductsHelper

  def product_image(product)
    product.image.presence ||  "tomato.jpg"
  end

  def get_product_description(product)
    product.description.presence || 'Lorem Ipsum is simply dummy text of the printing and type setting industry.'
  end
end
