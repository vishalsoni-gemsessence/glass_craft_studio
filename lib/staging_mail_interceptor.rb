class StagingMailInterceptor
  def self.delivering_email(message)
    message.to ['dev-support@36etcetera.com']
    message.cc ['billy@36etcetera.com']
  end
end
