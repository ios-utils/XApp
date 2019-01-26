module Xapp
    
    def initialize_project()
        puts "Initialising empty workspace..."
        system("unzip", "../lib/project-template.zip")
        puts "\t...done!\n\n\tDon't forget to run `pod install --repo-update`"
    end

end