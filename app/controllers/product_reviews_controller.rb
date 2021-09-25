class ProductReviewsController < ApplicationController
  before_action :set_product_review, only: %i[ show edit update destroy ]
  before_action :set_product

  # GET /product_reviews or /product_reviews.json
  def index
    @product_review = @product.product_reviews
  end

  # GET /product_reviews/1 or /product_reviews/1.json
  def show
  end

  # GET /product_reviews/new
  def new
    @product_review = @product.product_reviews.build
  end

  # GET /product_reviews/1/edit
  def edit
  end

  # POST /product_reviews or /product_reviews.json
  def create
    @product_review = @product.product_reviews.build(product_review_params)

    respond_to do |format|
      if @product_review.save
        format.html { redirect_to products_path(@product), notice: "Product review was successfully created." }
        format.json { render :show, status: :created, location: @product_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_reviews/1 or /product_reviews/1.json
  def update
    respond_to do |format|
      if @product_review.update(product_review_params)
        format.html { redirect_to product_path(@product), notice: "Product review was successfully updated." }
        format.json { render :show, status: :ok, location: @product_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_reviews/1 or /product_reviews/1.json
  def destroy
    @product_review.destroy
    respond_to do |format|
      format.html { redirect_to product_reviews_url, notice: "Product review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_product
      @product = Product.find(params[:product_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_product_review
      @product_review = @product.product_reviews.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_review_params
      params.require(:product_review).permit(:rating, :description, :product_id)
    end
end
