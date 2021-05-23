class User < ApplicationRecord
  require 'csv'

  validates :email, :phone_number, uniqueness: true

  def self.call file_path

    CSV.foreach(file_path, headers: true) do |csv|
      user = User.new csv.to_hash
      user.save if user.valid?
    end

  end
end
