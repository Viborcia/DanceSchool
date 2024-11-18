class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :enrolled_courses, 
  class_name: 'Course',
  join_table: 'courses_users'
  has_and_belongs_to_many :lessons
  has_many :taught_courses, 
           class_name: 'Course',
           foreign_key: 'instructor_id'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum gender: [:woman, :man]
         enum role: [:student, :teacher, :admin]
         after_initialize :set_default_role, :if => :new_record?
         def set_default_role
          self.role ||= :student
         end 
end
