class TestimonialsController < ApplicationController
  include SessionsHelper

  before_filter :is_admin, except: [:index]

  def index
    @testimonials = Testimonial.all
  end
  def new
    @testimonial = Testimonial.new
  end
  def create
    @testimonial = Testimonial.new params[:testimonial]
    if @testimonial.save
      flash[:success] = 'Testimonial Created'
      redirect_to manage_testimonials_path
    else
      render :new
    end
  end
  def edit
    @testimonial = Testimonial.find params[:id]
  end
  def update
    @testimonial = Testimonial.find params[:id]
    if @testimonial.update_attributes params[:testimonial]
      flash[:success] = 'Testimonial Updated'
      redirect_to manage_testimonials_path
    else
      render :edit
    end
  end
  def manage
    @testimonials = Testimonial.all
  end
  def destroy
    Testimonial.destroy params[:id]
    flash[:success] = 'Testimonial destroyed'
    redirect_to manage_testimonials_path
  end

  private
    def is_admin
      redirect_to signin_path, error: "You are not authorized to do this" unless is_admin?
    end
end
