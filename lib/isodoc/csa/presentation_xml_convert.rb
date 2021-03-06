require_relative "init"
require "metanorma-generic"
require "isodoc"

module IsoDoc
  module Csa
    class PresentationXMLConvert < IsoDoc::Generic::PresentationXMLConvert
      def annex1(f)
        lbl = @xrefs.anchor(f['id'], :label)
        if t = f.at(ns("./title"))
          t.children = "<strong>#{t.children.to_xml}</strong>"
        end
        prefix_name(f, "<br/>", lbl, "title")
      end

      include Init
    end
  end
end

