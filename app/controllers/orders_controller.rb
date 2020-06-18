class OrdersController < ApplicationController
    def index
        @orders = Order.all 
        render json: @orders 
    end
 
    def create
        # @user = User.find(params[:user])
        # newOrder = @user.orders.create
        @newOrder = Order.create(user_id: params[:user])

        ItemOrder.create(item_id: params[:item][:id], order_id: @newOrder.id )

        # ItemOrder.create(item_ids: item_id, order: newOrder)
        render json: @newOrder, include: "item_order.item"
    end 

    
    def destroy
        @find_item = Item.find(params[:id])
            @find_item.item_order.each do |item| 
             item.order.destroy
            end 
            render json: 201
     end 
    

end 
  

