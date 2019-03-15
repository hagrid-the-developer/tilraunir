class Note
    attr_accessor :note

    def initialize(note=nil)
        @note = note
        puts "@note is #{@note}"
    end

    def self.create
        self.connect
        note = new(yield)
        note.write
        self.disconnect
    end

    def write
        puts "Writing \"#{@note}\" to the database."
    end

    private

    def self.connect
        puts "Connecting to the database..."
    end

    def self.disconnect
        puts "Disconnecting from the database..."
    end
end

Note.create { "Foo" }
