class XApp

    VERSION = '0.1.3'
    
    def self.init_template(name)
        puts "\n\s\sInit new project..."
        system("unzip", "-q", __dir__ + "/project-template.zip")
        system("mv", "tmp", name)
        puts "\s\s...done!"
        puts "\n\s\sYour project is ready to go in /" + name
        puts "\s\sHint: Don't forget to run: `pod install`\n"
    end

end
