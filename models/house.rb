require_relative('../db/sql_runner.rb')

class House

  attr_reader :id
  attr_accessor :name, :image

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @image = options['image']
  end

end
