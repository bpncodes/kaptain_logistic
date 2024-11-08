require 'vonage'

class VonageSmsService
  def initialize(phone_number, otp_code)
    @phone_number = phone_number
    @otp_code = otp_code
  end

  def send_sms
    client = Vonage::Client.new(
      api_key: ENV['VONAGE_API_KEY'],
      api_secret: ENV['VONAGE_API_SECRET']
    )

    response = client.sms.send(
      to: @phone_number,
      from: '6728339323',
      text: "Your OTP code is: #{@otp_code}"
    )

  end
end