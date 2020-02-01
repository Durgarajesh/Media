class ShowsController < ApplicationController

    def index
        @shows = Show.includes(:channel)
    end

    def search
        if params[:search].blank?
            redirect_to root_path
        else
            search_params = params[:search].downcase
            @shows = Show.joins(:channel).search(search_params)
        end
    end

    def update
        show = Show.find(params[:id])
        if show.update_attributes(is_fav: params[:is_fav])
            render json: { success: true, is_fav: show.is_fav }
        end
    end
end
