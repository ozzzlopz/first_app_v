class Appuser < ActiveRecord::Base

  validates :name, presence: true, length:{minimum:3,maximum:40}
  validates :first_last_name, presence: true, length:{minimum:3,maximum:40}
  validates :second_last_name, presence: true, length:{minimum:3,maximum:40}
  validates :lada, presence: true, length:{minimum:3,maximum:40}
  validates :phone, presence: true, length:{minimum:3,maximum:40}
  validates :email, presence: true, length:{minimum:3,maximum:40}
  validates :model, presence: true, length:{minimum:3,maximum:40}
  validates :serial_number, presence: true, length:{minimum:3,maximum:40}
  
end
