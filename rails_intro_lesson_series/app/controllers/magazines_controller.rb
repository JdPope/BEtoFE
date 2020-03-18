class MagazinesController < ApplicationController
    def index
        magazines = Magazine.find_mags(params[:category])
        render json: magazines, include: [:articles]
    end

    def show
      magazine = Magazine.find(params[:id])
      render json: magazine
    end
end
