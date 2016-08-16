class Api::V1::ProductsController < ApplicationController
  # before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    products = Product.all
    render json: { products: products,status: 200 }
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

   # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
      if @product.save
        render json: { product: @product, status: 201 }
      else
        render json: {errors:  @product.errors, status: 422 }
      end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    if @product.update(product_params)
      render json: { product: @product, status: 202 }
      else
       render json: { errors: @product.errors, status: 422 }
      end
    end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
      render json { head :no_content }
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
