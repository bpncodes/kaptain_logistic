class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :description, :quantity_in_stock, :weight, :dimensions, :category, :price, :supplier)
    end

end
