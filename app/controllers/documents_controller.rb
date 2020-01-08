class DocumentsController < ApplicationController

  def download
    document = Document.find(params[:id])
    data = open(document.doc.url)
    send_data data.read, filename: document.doc_file_name, type: document.doc_content_type, disposition: 'inline', stream: 'true', buffer_size: '4096'
  end

end