class ScoresController < ApplicationController
    def index
        @scores = Score.order 'updated_at DESC'
    end

    def show
        @score = Score.find params[:id]
    end

    def new
        @score = Score.new
    end

    def create
        @score = Score.new score_params

        if @score.save
            redirect_to score_path(@score.id)
        else
            render :new
        end
    end

    private
        def score_params
            params.require(:score).permit(:name, :score_a, :score_b, :score_c)
        end
end