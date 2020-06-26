class InterviewsController < ApplicationController

    def index
        @interviews = Interview.all
    end

    def show
        @interview = Interview.find(params[:id])
    end

    def new
        
    end

    def create
        byebug
    end

end
