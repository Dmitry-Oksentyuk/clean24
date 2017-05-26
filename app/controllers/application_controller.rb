class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # настройка для работы девайза при правке профиля юзера
  before_action :configure_permitted_parameters, if: :devise_controller?

  # хелпер метод, доступный во вьюхах
  helper_method :current_user_can_edit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :phone_user) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :phone_user, :password,
                                                                   :current_password, :password, :password_confirmation) }

  end

  # показывает может ли текущий залогиненный юзер править эту модель
  # обновили метод - теперь на вход м. принимать order, или другие "дочерние" объекты
  def current_user_can_edit?(model)
    user_signed_in? &&
      (model.user == current_user || # если у модели есть юзер и он залогиненный
        # пробуем у модели взять .event и если он есть, проверяем его юзера
        (model.try(:event).present? && model.event.user == current_user))
  end

end