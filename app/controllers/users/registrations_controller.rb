class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
    @user.build_personal_information
  end

  def new2
  end

  def new2_2
  end

  def new3
  end

  def new4
    @credit_card = Credit_card.new
  end

  def new5
  end

  private 
  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation 
    )
  end
  def personal_informations
    params.require(:personal_information).permit(
      :last_name, 
      :first_name, 
      :last_name_k, 
      :first_name_k
    )
  end

end
