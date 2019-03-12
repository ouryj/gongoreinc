class User < ApplicationRecord
  has_one_attached :profile
  has_many :posts 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         DISTRICT = ['select-district/village', 'Popodara', 'Gongore-Aideh', 'Gongore-centre', 'Poukou', 'Kourou']
         GENDER = ['select-gender','Male', 'Female']
end
