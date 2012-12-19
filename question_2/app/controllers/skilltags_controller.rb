# coding: utf-8
class SkilltagsController < ApplicationController
  def show
    @skilltag = Skilltag.find_by_name! params[:name]
  end

  # POST /users/:user_id/skilltags
  def create
    @user = User.find params[:user_id]
    @skilltag = Skilltag.where(name: params[:skilltag][:name]).first_or_initialize

    return redirect_to @user, notice: "すでに登録済みです" if @user.skilltags.include? @skilltag

    notice = "#{@skilltag.name}を登録できませんでした"
    if @user.skilltags << @skilltag
      notice = "#{@skilltag.name}を登録しました"
    end

    redirect_to @user, notice: notice
  end
end
