class GamesController < ApplicationController
	def inventory
	  @name_search = params[:name_search]
	  @equipments = GameEquipment.search(@name_search);
	end
	
	def new_game_equipment
	end
	
	def create_game_equipment
	  values = params.permit(:name, :quantity, :weight)
	  GameEquipment.create(values)
	  redirect_to action: :inventory
	end

	def delete_game_equipment
		@equipment_id = params[:equipment_id]
		GameEquipment.find(@equipment_id).destroy
    	redirect_to action: :inventory
	end

	def new_user
	end

	def create_new_user
	  @user_name = params[:user_name]
	  @username = params[:username]
	  @password = params[:password]
	  @password_confirm = params[:password_confirm]

	  User.create_user(@user, @username, @password, @password_confirm)
	  redirect_to action: :new_user
	end
end
