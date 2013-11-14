class SellerMailer < ActionMailer::Base
  default from: "mercadousp@praticas.com"
  def sold_email(product, buyer_email, buyer_name)
    @sale = product
    @url  = 'http://example.com/login'
    mail(to: @sale.user.email, subject: 'Um usuário manifestou interesse em sua oferta:' + @sale.title )
  end
end
