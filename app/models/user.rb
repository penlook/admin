class User < ActiveRecord::Base
	validates :user, :presence => true
	validates :alias, :presence => true
end