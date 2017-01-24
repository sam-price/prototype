class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Storext.model

  store_attributes :settings do
  	user_setup Boolean, default:false
  	user_public Boolean, default:true
  	exercise_frequency String
  	exercise_tod String
  	exercise_preference String
  end
end
