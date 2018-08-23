class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
        # method: get
        # action: index
        # template: cohorts/index.html.erb
    end

    def show
        @cohort = Cohort.find(params[:id])
        # method: get
        # action: index
        # template: users/show.html.erb
    end

    def new
        @cohort = Cohort.new
        # method: get
        # action: index
        # template: users/new.html.erb
    end

    def edit
        @cohort = Cohort.find(params[:id])
        # method: get
        # action: index
        # template: users/edit.html.erb
    end

    def create
        @cohort = Cohort.new(cohort_params)

        if @cohort.save
            redirect_to @cohort
        else
            render 'new'
        end
    end

    def update
        @cohort = Cohort.find(params[:id])

        if @cohort.update(cohort_params)
            redirect_to @cohort
        else
            render 'edit'
        end
    end

    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy

        redirect_to cohort_path
    end

    private 
        def cohort_params
            params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
        end
end
