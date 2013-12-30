class AccountController < Devise::RegistrationsController
  def edit
  	@user = current_user
  end

  def update
  	supper
  end

  def create
  	build_resource(sign_up_params)
  	resource.account = params[resource_name][:account]
  	resource.email = params[resource_name][:email]
        resource.role_id = 1
  	respond_to do |format|
      		if resource.save
        			format.html { redirect_to root_path }
        			format.json { render action: 'show', status: :created, location: resource }
      		else
      			clean_up_passwords resource
        			format.html { render action: 'new' }
        			format.json { render json: resource.errors, status: :unprocessable_entity }
      		end
    	end
  end

  def  destroy

  	resource.soft_delete
  	sign_out_and_redirect("/")
  	set_flash_message :notice, :destroyed
  end
end
