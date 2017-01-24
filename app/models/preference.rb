class Preference < ApplicationRecord
	belongs_to :user

	validates_uniqueness_of :name, :scope => :user_id

	private
	def preference_params
		params.require(:preference).permit(:name, :value)
	end

end
