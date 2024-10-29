json.extract! course, :id, :name, :description, :number_of_place, :start_date, :created_at, :updated_at
json.url course_url(course, format: :json)
