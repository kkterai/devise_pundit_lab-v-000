class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,:validatable
  #:recoverable, :rememberable, :trackable,


  has_many :notes
  has_many :viewers
  has_many :readable, through: :viewers, source: :note

  enum role: [:user, :moderator, :admin]
end
