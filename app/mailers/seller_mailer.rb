class SellerMailer < ActionMailer::Base
  default from: "mercadousp@praticas.com"
  def sold_email(product, email, name)
    @sale = product
    @url  = 'http://example.com/login'
    @buyer_email = email
    @buyer_name = name
    mail(to: @sale.email, subject: 'O usuário' + @buyer_name +'manifestou interesse em sua oferta:' + @sale.title )
  end
end
