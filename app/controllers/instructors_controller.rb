class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
        # method: get
        # template: profiles/index.html.erb
    end

    def show
        @instructor = Instructor.find(params[:id])
        # method: get
        # action: index
        # template: profiles/show.html.erb
    end

    def new
        @instructor = Instructor.new
    # method: get
    # action: index
    # template: profiles/new.html.erb
    end

    def edit
        @instructor = Instructor.find(params[:id])
        # template: profiles/edit.html.erb
    end

    def create
        @instructor = Instructor.new(instructor_params)
        @instructor.build_profile(profile_params)

        if @instructor.save
            redirect_to @instructor
        else
            render 'new'
        end
    end

    def update
        @instructor = Instructor.find(params[:id])
 
        if @instructor.update(instructor_params) && @instructor.profile.update(profile_params)
            redirect_to @instructor
        else
            render 'edit'
        end
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
     
        redirect_to instructors_path
    end
    
    
    private
        def instructor_params
        params.require(:instructor).permit(:salary, :edu)
        end

        def profile_params
        params.require(:profile).permit(:first_name, :last_name, :photo_url, :birthdate, :email, :password)
        end
end
