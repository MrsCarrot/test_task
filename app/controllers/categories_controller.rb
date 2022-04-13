class CategoriesController < ApplicationController
    
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_category, only: [ :show, :edit, :update, :destroy ]
    
    def index
        @categories = Category.all
    end
    def show
        #@category = Category.find(params[:id])
    end
    def new
        @category = Category.new
    end
    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to @category
        else
            render :new
        end
    end
    def edit
        #@category = Category.find(params[:id])
    end
    def update
        #@category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to @category
        else
            render :edit
        end 
    end
    def destroy
       # binding.pry
        #@category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end

    private
    def set_category
        #binding.pry
        @category = Category.find(params[:id])
    end
    def category_params
        params.require(:category).permit(:title, :body, :image)
    end
end