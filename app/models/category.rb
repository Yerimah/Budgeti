class Category < ApplicationRecord
    belongs_to :user
    has_many :payments

    validates :name, presence: true
    validates :icon, presence: true

    def total_payments
        total = 0
        payments.each do |p|
           total = total + p.amount.to_i  
        end
        total 
    end
end
