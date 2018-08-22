class ProfilesController < ApplicationController
    def index
        @profiles = Profile.all
        # method: get
        # template: profiles/index.html.erb
    end

    def show
        @profile = Profile.find(params[:id])
        # method: get
        # action: index
        # template: profiles/show.html.erb
    end

    def new
        @profile = Profile.new
    # method: get
    # action: index
    # template: profiles/new.html.erb
        @profile_options = [["Student",1],["Instructor",2], ["Admin", 3]]
    end

    def edit
        @profile = Profile.find(params[:id])
        # template: profiles/edit.html.erb
    end

    def create
        @profile = Profile.new(profile_params)
 
        if @profile.save
            redirect_to @profile
        else
            render 'new'
        end
    end
   
    def update
        @profile = Profile.find(params[:id])
 
        if @profile.update(profile_params)
            redirect_to @profile
        else
            render 'edit'
        end
    end
    
    private
        def profile_params
        params.require(:profile).permit(:first_name, :last_name, :email, :birthdate, :profileable_type)
        end

end
