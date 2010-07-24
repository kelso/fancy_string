String.class_eval do
  def fancy
    str = self
    str = str.gsub("."," ")
    str = str.gsub(":"," ")
    str = str.gsub("-"," ")
    str = str.gsub(/[ ]+/," ") # replace "multi" space to one
    str = str.gsub(/ /,"-")    # replace each space to -
    str = str.downcase
    str = str.mb_chars.normalize(:kd).gsub(/[^\-x00-\x7F.]/n, '').to_s
    return str
  end
end

