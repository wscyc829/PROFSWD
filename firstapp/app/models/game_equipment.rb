class GameEquipment < ActiveRecord::Base
	belongs_to :user

	def total_weight
		if weight.present? && quantity.present?
			weight * quantity
		else
			nil
		end
	end

	def self.search(search)
  	  where("name like ?", "%#{search}%").to_a
    end

end
