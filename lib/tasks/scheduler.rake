desc "This task is called by the Heroku scheduler add-on"
task :fetch_github => :environment do
    puts "Fetch commits from github..."
    Commit.fetch
    puts "done."
end
