require 'rubygems'
require 'itext'

doc = Document.new
stamper = PdfStamper.new(doc, FileOutputStream.new('completed.pdf'))
doc.open
doc.add(Paragraph.new("Hello World!"))
stamper.close