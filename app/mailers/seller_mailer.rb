class SellerMailer < ActionMailer::Base
  default from: "mercadousp@praticas.com"
  def sold_email(product, email, name)
    @sale = product
    @url  = 'http://example.com/login'
    @buyer_email = email
    @buyer_name = name
    mail(to: @sale.user.email, subject: 'Um usuário manifestou interesse em sua oferta:' + @sale.title )
  end
end
