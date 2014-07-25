class UserMailer < ActionMailer::Base
  default from: "www.rog_drummer@hotmail.com"

  def  visit_created(location)
  	@location = location
  	mail( to: 'rjb_infynyte@hotmail.com',
  	subject: "Test email from rails, New visit created in Location #{location.name}")
  end
end
