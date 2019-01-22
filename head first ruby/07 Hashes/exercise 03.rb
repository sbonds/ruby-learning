def create(options = {})
  puts "Creating #{options[:database]} for owner #{options[:user]}..."
end

def connect(database:, host: "localhost", port: 3306, user: "root")
  puts "Connecting to #{database} on #{host} port #{port} as #{user}..."
end

=begin

What is the output for each of these:

create(database: "catalog", user: "carl")
+ 'Creating catalog for owner carl...'

create(user: "carl")
+ 'Creating   for owner carl...'

create
+ 'Creating  for owner  ...'

connect(database: "catalog")
+ 'Connecting to catalog on localhost port 3306 as root'

connect(database: "catalog", password: "1234")
+ 'unknown keyword: password'

connect(user: "carl")
+ 'missing keyword: database'

=end