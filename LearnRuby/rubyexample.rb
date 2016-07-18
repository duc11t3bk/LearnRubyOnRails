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

#---array------------------------------
puts array
puts array.inspect
puts "#{array[0,3]}"

array2= [[1,2],[3,4],[5,6]];
puts array2.inspect;

puts array2[0..2].inspect;

for i in 0...array2.length do
	puts array2[i].size;
	puts array2[i].inspect;
	for j in 0...array2[i].length do
		puts array2[i][j];
	end
end

puts array.values_at(0..2).inspect;
puts array.values_at(0,2,3).inspect;
puts array[-2];

arrayNew = Array.new;
arrayNew.push(1);
arrayNew.push(2);

puts "array new"
arrayNew.each do 
	|iter|
	puts iter
end

arrayReverse = array.reverse;
puts arrayReverse.inspect;
puts array.inspect;
puts array.reverse!.inspect;

array = [1,2,2,2,3,4,5,8,11];
puts "---------------------------"
puts "array.indexof(2) #{array.index(2)}";
puts "array.include? 1 #{array.include? 1}";
puts "array.rindex(2) #{array.rindex(2)}";

puts array.join("-");
puts array.inspect;
puts array.uniq.inspect;
puts array.inspect;

array = Array.new(3,"a");
puts array.inspect;
array = Array.new;
array.push(1);
array << 2 << 3;
array.unshift(0);
puts array.inspect;
array.insert(4,4);
puts array.inspect;

puts array.pop;
puts array.inspect;
array = [4,3,5,1,7,6,2];
puts array.sort.inspect;
puts array.inspect;
array.sort!;
puts array.inspect;

#----hash------------------------

puts "--------------------------------";


hash = Hash.new;
hash[:de]="Germany";
hash[:sk]="Slovakia";
hash[:hu]="Hungary";
hash[:us]="United States";
hash[:no]="Norway";
puts "Hash ";
puts hash;
puts "Hash.has_key?(:de) #{hash.has_key?(:de)}";
puts "Hash.has_value?('Germany') #{hash.has_value?('Germany')}";

hash.each do
	|k,v|
	puts "Key: #{k}, Value: #{v}";
end

hash_key = hash.keys;
for i in 0...hash_key.length do
	puts "Hash[#{hash_key[i]}]=#{hash[hash_key[i]]}";
end

hash1= {1=>"Jane", 2=>"Thomas"};
hash2= {3=>"Robert", 4=>"Julia"};
puts "Hash1 #{hash1}";
puts "Hash2 #{hash2}";

hash = hash1.merge(hash2);
puts "Hash #{hash}";

