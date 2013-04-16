module TestimonialsHelper
  def get_random_testimonial
    Testimonial.published.sample
  end
end
