class Lono::Cfn
  module DiffViewer
    def show_diff(existing_path, new_path)
      command = "#{diff_viewer} #{existing_path} #{new_path}"
      puts "Running: #{command}"
      system(command)
    end

    def diff_viewer
      return ENV['LONO_DIFF'] if ENV['LONO_DIFF']
      system("type colordiff > /dev/null") ? "colordiff" : "diff"
    end
  end
end
