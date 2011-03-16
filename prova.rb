require 'rubygems'
require 'lib/itext'

module Itext

  def self.loadImage(cb)
	
	g2 = cb.createGraphics(PageSize::A4.get_width, PageSize::A4.get_height)
	prm = PrintTranscoder.new
	url = "http://10.1.75.107/ArcGIS/rest/services/Lugano/MapServer/export?bbox=717595.2458537072%2C96172.1520089505%2C717959.15858098%2C96630.27564531413&bboxSR=21781&layers=&layerdefs=&size=788%2C992&imageSR=21781&format=svg&transparent=false&dpi=110&f=image"
	ti = TranscoderInput.new(url)
	prm.transcode(ti, nil)
	pg = PageFormat.new
	pp = Paper.new
	pp.setSize(PageSize::A4.get_width, PageSize::A4.get_height)
	pp.set_imageable_area(39, 79, PageSize::A4.get_width, PageSize::A4.get_height)
	pg.set_paper(pp)
	prm.print(g2, pg, 0)
	g2.dispose
  end
  
  def self.write
    doc = Document.new
    writer = PdfWriter.get_instance(doc, FileOutputStream.new('completed.pdf'))
    doc.open
	loadImage(writer.get_direct_content)
    doc.add(Paragraph.new("Hello World!"))
    doc.close
  end

end

Itext.write