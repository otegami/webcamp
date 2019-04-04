apple = "Aomori"

if apple == "Nagano"
  puts "りんごの生産地は長野です"
else
  puts "りんごの生産地は青森です"
end

puts apple == "Nagano" ? "りんごの生産地は長野です" : "りんごの生産地は青森です"

apple = "Yamagata"
if apple == "Nagano"
  puts "りんごの生産地は長野です"
elsif apple == "Yamagata"
  puts "りんごの生産地は山形です"
else
  puts "りんごの生産地は青森です"
end
