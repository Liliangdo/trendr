class User < ApplicationRecord
  has_attachment :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
