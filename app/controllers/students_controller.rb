class StudentsController < ApplicationController
    def index
        @students = Student.all
        # method: get
        # template: profiles/index.html.erb
    end

    def show
        @student = Student.find(params[:id])
        @enrollment = Enrollment.find(params[:id])
        # method: get
        # action: index
        # template: profiles/show.html.erb
    end

    def new
        @student = Student.new
    # method: get
    # action: index
    # template: profiles/new.html.erb
    end

    def edit
        @student = Student.find(params[:id])
        # template: profiles/edit.html.erb
    end

    def create
        @student = Student.new(student_params)
        @student.build_profile(profile_params)

        # @student.build_profile(first_name: params[:profile][:first_name])

        if @student.save
            redirect_to @student
        else
            render 'new'
        end
    end
   
    def update
        @student = Student.find(params[:id])
 
        if @student.update(student_params) && @student.profile.update(profile_params)
            redirect_to @student
        else
            render 'edit'
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
     
        redirect_to students_path
    end
    
    private
        def student_params
        params.require(:student).permit(:background)
        end

        def profile_params
        params.require(:profile).permit(:first_name, :last_name, :photo_url, :birthdate, :email, :password)
        end

end