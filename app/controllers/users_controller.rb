class UsersController < ApplicationController 

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
   


  # def index 
  #   render json: User.all
  # end
   


  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end
  # def items_index 
  #   user = User.find(params[:user_id])
  #   items = user.items 
  #   return render json: items, include: :user
  # end

  # def item 
  #   item = Item.find(params[:id])
  #   render json: item, incliude: :user
  # end

  private

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end




end
