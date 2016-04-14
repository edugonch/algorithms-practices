module StringDifferences
    def self.find(str1, str2)
        diff1 = str2.gsub /([^#{str1}])/
        diff2 = str1.gsub /([^#{str2}])/
        [diff1.to_a.join, diff2.to_a.join]
    end
end