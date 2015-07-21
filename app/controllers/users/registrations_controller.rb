class Users::RegistrationsController < Devise::RegistrationController

  def create
    super do |resource|
      if params[:plan]
        resources.plan_id =params[:plan]
        if resource.plan_id ==2
          resourcs.save_with_payment
        else
          resource.save
        end
      end
    end
  end
end
