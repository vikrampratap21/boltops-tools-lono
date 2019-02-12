require "thor"

class Lono::Upgrade < Lono::Command
  autoload :Upgrade4, 'lono/upgrade/upgrade4'
  autoload :Upgrade42, 'lono/upgrade/upgrade42'
  autoload :Upgrade5, 'lono/upgrade/upgrade5'

  desc "v3to4", "Upgrade from version 3 to 4."
  def v3to4
    Upgrade4.new(options).run
  end

  desc "v4to4_2", "Upgrade from version 4.0 to 4.2"
  def v4to4_2
    Upgrade42.start
  end

  desc "v4to5", "Upgrade from version 4.2 to 5.0"
  def v4to5
    Upgrade5.start
  end
end
