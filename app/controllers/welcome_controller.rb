class WelcomeController < ApplicationController
  def index
  end

  def ph
  	@data = Record.all
  	@line_chart = Gchart.line(
        :title => "example title",
        :data => ph_array,
        :size => '400x200',
        :range => [0, 8]) 
  	end

    def ammonia
      @data = Record.all
    end

    def nitrite
      @data = Record.all
    end

    def nitrate
      @data = Record.all
    end

    def kh
      @data = Record.all
    end

    def gh
      @data = Record.all
    end

    def tankevents
      @data = Record.all
    end

    private
    def ph_array
      records = Record.all
      num = 0
      array = []
      records.each do |t|
        array << t.ph
      end
      return array
    end
end
