require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "is valid" do
      @product = Product.new
      @cat = Category.new
      @cat.name = 'Test'
      @product.name = 'Test' # control check
      @product.price_cents = 12311
      @product.quantity = 3
      @product.category = @cat
      expect(@product.valid?).to be true
    end

    it "name presence" do
      @product = Product.new
      @product.name = nil # control check
      @product.valid?
      expect(@product.errors[:name]).to  include("can't be blank")

      @product.name = 'test' # legitimate check
      @product.valid? 
      expect(@product.errors[:name]).not_to  include("can't be blank")
    end

    it "price_cents presence" do
      @product = Product.new
      @product.price_cents = nil # control check
      @product.valid?
      expect(@product.errors[:price_cents]).to  include("is not a number")

      @product.price_cents = 12311 # legitimate check
      @product.valid? 
      expect(@product.errors[:price_cents]).not_to  include("can't be blank")
    end

    it "quantity" do
      @product = Product.new
      @product.quantity = nil # control check
      @product.valid?
      expect(@product.errors[:quantity]).to  include("can't be blank")

      @product.quantity = 3 # legitimate check
      @product.valid? 
      expect(@product.errors[:quantity]).not_to  include("can't be blank")
    end

    it "has category_id" do
      @cat = Category.new
      @product = Product.new
      @product.category = nil # control check
      @product.valid?
      expect(@product.errors[:category]).to  include("can't be blank")

      @product.category = @cat # legitimate check
      @product.valid? 
      expect(@product.errors[:category]).not_to  include("can't be blank")
    end
  end
end