class FormController < ApplicationController
  def input
  end

  def output
    @select = params[:select]
    @text_field  = params[:text_field]
    @text_area = params[:text_area]
    @check_box = params[:check_box]
    @radio_button = params[:radio_button]
  end
end
