class MainController < ApplicationController
  def main_stage
  end
  def instructors
    @instructors=User.where(role: 1)
  end
end
