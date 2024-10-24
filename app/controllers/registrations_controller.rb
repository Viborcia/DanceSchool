class RegistrationsController < Devise::RegistrationsController
    
    def update
        logger.debug "Current user: #{current_user.inspect}"
      super do |resource|
        # Sprawdzamy, czy występują błędy walidacji
        if resource.errors.empty?
          flash[:notice] = "Profil został pomyślnie zaktualizowany."
          # Zakończ akcję, gdy nie ma błędów
          return redirect_to request.referer || root_path
        end
      end
  
      # W przypadku błędów walidacji renderujemy widok edycji
      render :edit
    end
  end
  