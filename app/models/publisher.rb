class Publisher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, 
  #        :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  validates :phone_no, presence: true, length: {is: 11}
  validates :address, presence: true

  devise :database_authenticatable,  :confirmable,
         :recoverable, :rememberable, :validatable

  has_many :articles


  mount_uploader :avatar, AvatarUploader



end
