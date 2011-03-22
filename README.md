### iText lib

JRuby wrapper for iText Java library

Usage

`gem install itext # only on JRuby`

Example

    require 'rubygems'
    require 'itext'

    Itext::Pdf.generate('prova.pdf') do |pdf|
      pdf.add 'Hello World!'
    end

  