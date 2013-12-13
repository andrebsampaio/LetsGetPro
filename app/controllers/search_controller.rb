class SearchController < ApplicationController
  def index
    @sUsers = User.where("name LIKE ? ", "%#{params[:index]}%")
    @sCompanies = Company.where("name LIKE ? ", "%#{params[:index]}%")
    end
  end