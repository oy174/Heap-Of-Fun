####
#
# Test for heap classes written in ruby
#
# OO assignment for SE 256 Fall `13 by Alex Noguchi
#
####

####
# INSTRUCTIONS
#
# run heapsTest.rb using rspec with the file name as an argument 
# EG: `rspec heapsTest.rb myHeapsClasses.rb`
#
# NOTE! This spec is silly because it's only testing the interface,
# and you could make this code pass without implementing a heap.
# This is *only* a spec of the method interface.
#
####

# Get the file to test
testFile = "#{ARGV[0]}"
begin
    require "./"+testFile
rescue LoadError
	puts "Error! Ruby doesn't like your file: `#{testFile}`. Check the file name and use the form `rspec heaps_spec.rb myHeapsClasses.rb`."
	Process.exit
end

# Begin the testing!
describe 'AHeap' do
	it 'should exist' do
		AHeap
	end
	it 'should respond to new' do
		AHeap.should respond_to 'new'
	end
	it 'should create an empty heap' do
		AHeap.new.should_not be nil
	end
	it 'should allow insertions' do
		AHeap.new.insert(1)
	end
	it 'should allow deletions' do
		AHeap.new.insert(1).delete
	end
	it 'should allow peeking' do
		AHeap.new.insert(1).peek.should be 1
	end

end
describe 'LHeap' do
	it 'should exist' do
		LHeap
	end
	it 'should respond to new' do
		LHeap.should respond_to 'new'
	end
	it 'should create an empty heap' do
		LHeap.new.should_not be nil
	end
	it 'should allow insertions' do
		LHeap.new.insert(1)
	end
	it 'should allow deletions' do
		LHeap.new.insert(1).delete
	end
	it 'should allow peeking' do
		LHeap.new.insert(1).peek.should be 1
	end

end
