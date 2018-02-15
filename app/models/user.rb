class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :rorschachTests
  has_many :patients, through: :rorschachTests
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true
end