class UserMailer < ApplicationMailer
    default from: 'Minimise Maintenance Team'
 
  
  def maintenance_confirmation(order, location)
    @order = order
    @location = location
    @onumber = formatted_number(@order.id)
    @recipients = "#{@order.email}, maintenance@minimiseusa.com, sean.ewais@minimiseusa.com, alexandra.isaac@minimiseusa.com, bbharned@me.com"
    delivery_options = { address: 'smtp.gmail.com',
                         port: 587,
                         user_name: 'maintenance@minimiseusa.com',
                         password: password,
                         authentication: 'plain',
                         enable_starttls_auto: true
                          }
    mail(to: @recipients, from: 'Minimise - HCPS', subject: 'Maintenance Request Confirmation', delivery_method_options: delivery_options)
  end

  def contact_message(contact)
    @contact = contact
    @recipients = "info@minimiseusa.com"
    delivery_options = { address: 'smtp.gmail.com',
                         port: 587,
                         user_name: 'maintenance@minimiseusa.com',
                         password: password,
                         authentication: 'plain',
                         enable_starttls_auto: true
                          }
    mail(to: @recipients, from: 'Minimise Contact Form', subject: 'Minimise Contact Form', delivery_method_options: delivery_options)
  end


  
  private
      def password
        password = "maintenanceusa"
       end

      def formatted_number(int)
        format '%04d', int
      end
end