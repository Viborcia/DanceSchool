class SessionsController < Devise::SessionsController
    # Możesz nadpisać metody z Devise tutaj, jeśli potrzebujesz
  
    # Przykład: Nadpisanie metody after_sign_in_path_for
    def after_sign_in_path_for(resource)
      if current_user.student?
        student_path
      elsif current_user.teacher?
        teacher_path
      elsif current_user.admin?
        admin_path
      else
        root_path
      end
    end
  
    # Możesz także dodać inne metody, jeśli są potrzebne
  end