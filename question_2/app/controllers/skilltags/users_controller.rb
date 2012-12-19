# coding: utf-8
class Skilltags::UsersController < ApplicationController
  def index
    @skilltag = Skilltag.find_by_name! params[:name]
    @users = @skilltag.users.all
  end
end
