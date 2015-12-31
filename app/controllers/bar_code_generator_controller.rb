class BarCodeGeneratorController < ApplicationController
  def index
    @barcode = Barby::Code128.new('hello, whare are you?')
    @barcode_for_html = Barby::HtmlOutputter.new(@barcode)
  end
end
