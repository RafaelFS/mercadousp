class SellerMailer < ActionMailer::Base
  default from: "mercadousp@praticas.com"
  def sold_email(product)
    @sale = product
    @url  = 'http://example.com/login'
    mail(to: @sale.email, subject: 'Welcome to My Awesome Site')
  end
end
