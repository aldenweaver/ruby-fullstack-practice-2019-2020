class Heroine < ApplicationRecord
    has_many :powers, through: :heroine_powers

    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true

    def get_powers
        @powers = HeroinePowers.find(params[:id])
    end
end
