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
      '/singlesale' => {
          :title => 'Loessalg',
          :template => '/pages/tickets/singlesale.haml'
      },

      # Program/Program
      '/program' => {
          :title => 'Program',
          :template => '/pages/program/index.haml'
      },
        '/adulttheater' => {
            :title => 'Voksenteater',
            :template => '/pages/program/adulttheater.haml'
        },
        '/childtheater' => {
            :title => 'Boerneteater',
            :template => '/pages/program/childtheater.haml'
        },
        '/streetthetater' => {
            :title => 'Gadeteater',
            :template => '/pages/program/streettheater.haml'
        },
        '/theatertours' => {
            :title => 'Teater ture',
            :template => '/pages/program/theatertours.haml'
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
