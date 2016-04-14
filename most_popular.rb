# 2. Most Popular letter 
# You must find the most frequently occurring letter in a sentence. For example, the sentence “the tea is hot” contains three ‘t’s, making is as the required letter. 

# Input: A line full of text having lower case characters and spaces or tabs only. 
# Output: First line is the number of times the most frequently occurring character is seen. Most frequently occurring characters are printed one after another in alphabetical order in the second line. 

# Sample Input: 
# consume hot tea Sample 

# Output: 
# 2, eot

module MostPopular
    def self.find(str)
        str.delete!(' ')
        str = str.chars.group_by{|x| x}.values.group_by{|x| x.length}.sort_by{|key, value| key}.last[1]
        return "#{str[0].count}, #{str.map{|x| x[0]}.join}"
    end
end