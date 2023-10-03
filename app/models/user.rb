class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

  enum :role, [:normal, :admin]

  has_many :notices, dependent: :destroy #elimina en cascada las noticias que depende del usuario 
 # has_many :comentarios, dependent: :destroy #elimina en cascada los comentarios que depende del usuario

end
