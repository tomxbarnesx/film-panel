class CoursesController < ApplicationController
    def index
        @courses = Course.all
        # method: get
        # action: index
        # template: courses/index.html.erb
    end

    def show
        @course = Course.find(params[:id])
    # method: get
    # action: index
    # template: courses/show.html.erb
    end

    def new
        @course = Course.new
    # method: get
    # action: index
    # template: courses/new.html.erb
    end

    def edit
        @course = Course.find(params[:id])
    # method: get
    # action: index
    # template: courses/edit.html.erb
    end

    def create
        @course = Course.new(course_params)
 
        if @course.save
            redirect_to @course
        else
            render 'new'
        end
    end
   
    def update
        @course = Course.find(params[:id])
 
        if @course.update(coursee_params)
            redirect_to @course
        else
            render 'edit'
        end
    end
    
    private
        def profile_params
        params.require(:profile).permit(:first_name, :last_name, :email, :birthdate, :profileable_type)
        end
end
