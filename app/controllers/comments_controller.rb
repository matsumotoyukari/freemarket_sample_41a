class CommentsController < ApplicationController
  before_action :set_product


  def create
    @comment = @product.comments.new(params_comment)
    if @comment.save
      redirect_to product_path(@product)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product)
  end

  private
  def params_comment
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

end
