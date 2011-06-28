class TeaterfredPages < ActiveRecord::Base

  @@pages = {
      # About/Om os
      '/about' => {
          :title => 'Om os',
          :template => '/pages/about/index.haml'
      },
        '/board' => {
            :title => 'Bestyrelsen',
            :template => '/pages/about/board.haml'
        },
        '/regulations' => {
            :title => 'Vedtaegter',
            :template => '/pages/about/regulations.haml'
        },

      # Tickets/Billetter
      '/become_member' => {
          :title => 'Bliv Medlem',
          :template => '/pages/tickets/become_member.haml'
      },

      # Admin
      '/admin' => {
          :title => 'Admin',
          :template => '/pages/admin.haml'
      },

      # Contact
      '/contact' => {
          :title => 'Kontact',
          :template => '/pages/contact.haml'
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
