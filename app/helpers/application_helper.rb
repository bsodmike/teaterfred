module ApplicationHelper
  
  def pdf_path(file)
    File.join('/pdf', file).to_s
  end
end
