class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    before_save { self.email = email.downcase }
    before_save { self.role ||= :standard }

    enum role: [:standard, :premium, :admin]
    
    has_many :wikis, dependent: :destroy
    has_many :collaborations
    has_many :shared_wikis, through: :collaborations, source: :wiki
end
