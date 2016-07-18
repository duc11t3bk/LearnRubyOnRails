bool = [true, false];
male = bool[rand(2)];

puts "male= #{male}"
if (male)
	puts "We will use name John"
else
	puts "We will use name Victoria"
end

#---------------------------------
:name;
puts :name
puts 5%2;

a= 5.0;
b= 2;
puts a/b;
puts sprintf "%.4f" % (1.0/3);

#----------------------------------

nums = [1,2,3,4];
nums.each do 
	|num|
	puts num;
end

domains = { :de=>"Germany", :sk=> "Slovakia", :us=>"United States", :no=>"Norway"};
puts domains.keys;
puts domains.values;

#----------------------------------
str = "Ha Noi, mua nay vang nhung con mua";
v= str.split(",");
puts v;

puts str[0,str.length];
puts str[0];

puts str+"abcde";
str2= "Ha Noi";
check = str[str2].eql? str2;
puts str["Ha Noi"];
puts check;
puts "kt Ha noi #{str.include? 'Ha noi'}";

name1= "Nguyet a";
name2= "Nguyet b";
puts name1 <=> name2;
puts name1.size;

puts "aaa"+(name1.start_with? "Nguyet").to_s;
puts (name1.end_with? "b");
puts "km %f " %61.1;

#----------------------------------------
#---if--------------------------------
puts "Enter a number: ";
num = 5;

if num > 0 
	puts "Num variable is positive"
	puts "Num variable is #{num}"
elsif num < 0
	puts "Num variable is negotive"
	puts "Num variable is #{num}"
elsif num ==0
	puts "Num variable is #{num}"
end
#---case-when-------------------------

domain = "vn";

case domain
	when "us"
		puts "United state";
	when "de"
		puts "Germany"
	when "no"
		puts "Norway"
	when "vn","vietnam"
		puts "Viet Nam"
	when "vn"
		puts "Viet nam 2"
	else
		puts "Not found"
end
#---for---------------------------------

array = [1,2,3,4,5];
str = "abcde";
puts "size #{array.size} size str: #{str.size}";
puts "length #{array.length} size str : #{str.length}";

for i in 0...array.length do
	puts "array[#{i}]=#{array[i]}"
end
puts "chuoi str"
for i in 0...str.length do
	puts "str[#{i}]=#{str[i]}"
end

#---for-each--------------------------
array.each do
	|iter|
	puts "array #{iter}"
end
puts array
puts array.inspect
puts "#{array[0,3]}"