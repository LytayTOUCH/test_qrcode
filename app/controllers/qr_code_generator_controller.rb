class QrCodeGeneratorController < ApplicationController
  def index
    @qrcode = Barby::QrCode.new('hello, whare are you?')
    @qrcode_for_html = Barby::HtmlOutputter.new(@qrcode)
  end
end
