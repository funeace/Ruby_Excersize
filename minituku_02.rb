def clever_print(a,b,c)
  puts "#{clever_chk(a)} #{clever_chk(b)} #{clever_chk(c)}"
end

def clever_chk(a)
  if a.class == Array
    a.join(" ")
  elsif a.class == Hash
    a.to_a.join(" ")
  else
    a
  end
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language
 
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0