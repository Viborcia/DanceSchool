class Course < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :lessons, dependent: :destroy
    after_create :create_lessons
    
    private

    def create_lessons
      number_of_lessons.times do |i|
        lessons.create!(name: "Lekcja #{i + 1}", date: start_date + 7*i.days)
      end
    end
end
