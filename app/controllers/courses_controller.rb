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
 
        if @course.update(course_params)
            redirect_to @course
        else
            render 'edit'
        end
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
     
        redirect_to courses_path
    end
    
    private
        def course_params
            params.require(:course).permit(:name, :total_hours, :description)
        end
end
