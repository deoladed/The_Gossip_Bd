class User < ApplicationRecord
	belongs_to :city
	has_many :potins, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
	has_many :private_messsage
	# has_many :join_table_mp_users
  # has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage", through: :join_table_mp_users # SOURCE
  # has_many :users, through: :received_messages
end
