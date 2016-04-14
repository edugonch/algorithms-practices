# Krunch any string of characters supplied by the user
# of a maximun lenght of 60 characters and crunching characters like R and S
module KrunchingStrings
    def self.krunch str
        raise  ArgumentError.new "String to long" if str.size > 60
        str.gsub(/(R|S)/i, '').strip
    end
end