class Feedback
  include ActiveModel::Model
  # attr_accessor :title, :body
  attr_accessor :select, :text_field, :text_area, :check_box, :radio_button

  # validates :title, :body, presence: true
  # validates :select, :text_field, :text_area, :check_box, :radio_button, presence: true
  #
  # def save
  #   return false if invalid?
  #   AdminMailer.feedback(params[:title], params[:body]).deliver_later
  #   true
  # end
end

class FormObjectController < ApplicationController
  def input
    @feedback = Feedback.new
  end

  def output
    # @select = params[:select]
    # @text_field  = params[:text_field]
    # @text_area = params[:text_area]
    # @check_box = params[:check_box]
    # @radio_button = params[:radio_button]
    @feedback = Feedback.new(feedback_params)
  end

  private

  def feedback_params
    # params.require(:feedback).permit(:title, :body)
    params.require(:feedback).permit(:select, :text_field, :text_area, :check_box, :radio_button)
  end
end
