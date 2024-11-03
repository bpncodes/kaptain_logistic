ActiveAdmin.register Product do
  permit_params :name, :description, :quantity_in_stock, :weight, :dimensions, :category, :price, :supplier

  class Product < ApplicationRecord
  # Other model code...

  def self.ransackable_attributes(auth_object = nil)
    %w[name description quantity_in_stock weight dimensions category price supplier]
  end
end

  
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :quantity_in_stock
    column :weight
    column :dimensions
    column :category
    column :price
    column :supplier
    actions
  end

  filter :name
  filter :category
  filter :price
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :quantity_in_stock
      f.input :weight
      f.input :dimensions
      f.input :category
      f.input :price
      f.input :supplier
    end
    f.actions
  end

end