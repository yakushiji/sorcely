class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :email, presence: true , uniqueness: {case_sensitive: false}
  validates :password, presence: true
end
