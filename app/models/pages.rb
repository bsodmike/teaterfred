class Pages < ActiveRecord::Base

  @@pages = {
      '/become_member' => {
          :title => 'Bliv Medlem',
          :template => '/pages/tickets/become_member.haml'
      }
  }


  def self.find_by_path(path)
    @@pages[path]
    #Pages[path]
  end

  def self.get_pages
    @@pages
  end
end
