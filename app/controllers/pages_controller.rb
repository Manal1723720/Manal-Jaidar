class PagesController < ApplicationController
    def index
        @wundarten = Wundart.all
        #@article = Article.order('created_at DESC')
        @wundes = Wunde.all
    end
    def wunddoku
        @wundarten = Wundart.all
    end
    def new
        @wundes = Wunde.new
    end
    def edit
        @wundes = Wunde.find(params[:id])
      end
end
