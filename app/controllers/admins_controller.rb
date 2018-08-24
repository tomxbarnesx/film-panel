class AdminsController < ApplicationController
    def index
        @admins = Admin.all
        # method: get
        # template: admins/index.html.erb
    end

    def show
        @admin = Admin.find(params[:id])
        # method: get
        # action: index
        # template: admins/show.html.erb
    end

    def new
        @admin = Admin.new
    # method: get
    # action: index
    # template: admins/new.html.erb
    end

    def edit
        @admin = Admin.find(params[:id])
        # template: admins/edit.html.erb
    end

    def create
        @admin = Admin.new(admin_params)
        @admin.build_profile(profile_params)

        # @admin.build_profile(first_name: params[:profile][:first_name])

        if @admin.save
            redirect_to @admin
        else
            render 'new'
        end
    end
    
    def update
        @admin = Admin.find(params[:id])
    
        if @admin.update(admin_params) && @admin.profile.update(profile_params)
            redirect_to @admin
        else
            render 'edit'
        end
    end

    def destroy
        @admin = Admin.find(params[:id])
        @admin.destroy
     
        redirect_to admins_path
    end

    private
        def admin_params
        params.require(:admin).permit(:salary, :edu)
        end
    
        def profile_params
            params.require(:profile).permit(:first_name, :last_name, :photo_url, :birthdate, :email, :password)
        end
end
