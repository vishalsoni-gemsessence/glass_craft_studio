class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "[DEV] #{message.subject} | To: #{message.to}"
    message.to ['dev-support@36etcetera.com']
    message.cc ['billy@36etcetera.com']
  end
end
