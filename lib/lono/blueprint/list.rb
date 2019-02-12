class Lono::Blueprint
  class List
    class << self
      def available
        puts "Current available blueprints:"
        Find.all_blueprints.each do |b|
          full_path = Find.find(b)
          puts "  #{b}: #{full_path}"
        end
      end
    end
  end
end