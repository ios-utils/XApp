class XApp

    VERSION = '0.1.1'
    
    def self.init_template()
        puts "Init empty workspace..."
        system("unzip", __dir__ + "/project-template.zip")
        puts "\t...done!\n\n\tHint: Don't forget to run:\n\t\t`pod install --repo-update`\n"
    end

end