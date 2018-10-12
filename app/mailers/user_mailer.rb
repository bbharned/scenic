class UserMailer < ApplicationMailer
    default from: 'Minimise Maintenance Team'
 
  
  def maintenance_confirmation(order, location)
    @order = order
    @location = location
    delivery_options = { address: 'smtp.gmail.com',
                         port: 587,
                         user_name: 'maintenance@minimiseusa.com',
                         password: password,
                         authentication: 'plain',
                         enable_starttls_auto: true
                          }
    mail(to: @order.email, from: 'Minimise - HCPS', subject: 'Maintenance Request Confirmation', delivery_method_options: delivery_options)
  end

  def contact_message(contact)
    @contact = contact
    delivery_options = { address: 'smtp.gmail.com',
                         port: 587,
                         user_name: 'maintenance@minimiseusa.com',
                         password: password,
                         authentication: 'plain',
                         enable_starttls_auto: true
                          }
    mail(to: 'bbharned@me.com', from: 'Minimise Contact Form', subject: 'Minimise Contact Form', delivery_method_options: delivery_options)
  end


  
  private
      def password
        password = "maintenanceuser"
      end
end