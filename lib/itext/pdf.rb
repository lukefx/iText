module Itext

  include_package "com.itextpdf.text"
  include_package "java.io"
  
  import java.io.FileOutputStream
  
  import com.itextpdf.text.Document
  import com.itextpdf.text.PageSize
  import com.itextpdf.text.Paragraph
  import com.itextpdf.text.pdf.PdfWriter
  
  class Pdf
    
    attr_accessor :document, :writer
    
    def initialize(config = {})
      default = { :format => "A4"}.merge(config)
      @document = Document.new(PageSize::A4)
      @writer = PdfWriter.get_instance(@document, FileOutputStream.new('completed.pdf'))
      @document.open
    end
    
    def add(testo)
      @document.add(Paragraph.new(testo))
    end
    
    def close
      @document.close
    end
    
  end

end