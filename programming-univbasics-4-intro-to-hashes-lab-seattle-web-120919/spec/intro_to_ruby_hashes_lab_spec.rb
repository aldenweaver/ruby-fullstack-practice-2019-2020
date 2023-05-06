require_relative 'spec_helper'
require_relative '../intro_to_ruby_hashes_lab.rb'

describe "working with hashes" do

  describe "instantiating" do
    describe "new_hash" do
      it "creates an empty hash and returns it" do
        expect(new_hash).to eq({})
      end
    end


    describe "my_hash" do
      it "creates and returns a valid hash that contains key/value pairs of your choice" do
        expect(my_hash).to be_a(Hash)
        expect(my_hash.keys.count).to_not eq(0)
      end
    end

    describe "pioneer" do
      it "creates and returns a hash named pioneer whose key is a symbol :name and whose value is a string, 'Grace Hopper'" do
        expect(pioneer).to be_a(Hash)
        expect(pioneer[:name]).to eq("Grace Hopper")
      end
    end

    describe "id_generator" do
      it "creates and returns a hash with a key :id and a random number assigned to the value" do
        expect(id_generator).to be_a Hash
        expect(id_generator[:id]).to be_an Integer
        expect(id_generator[:id]).to be > 0
      end
    end

    describe "my_hash_creator" do
      it "accepts a key and a value as parameters and returns a hash with this key/value pair inside" do
        expect(my_hash_creator(:name, 'Grace Hopper')).to be_a(Hash)
        expect(my_hash_creator(:name, 'Grace Hopper')).to eq({name: 'Grace Hopper'})

        expect(my_hash_creator(1, 2)).to eq({1 => 2})
      end
    end
  end
end

describe "reading data from a hash" do
  describe "read_from_hash" do
    it "returns the value corresponding to the provided key" do
      expect(read_from_hash({name: 'Steve'}, :name)).to eq('Steve')
      expect(read_from_hash({'name' => 'Tzvi'}, 'name')).to eq('Tzvi')
    end

    it "returns nil if the key is not found in the provided hash" do
      expect(read_from_hash({age: 31}, :name)).to eq(nil)
    end
  end
end

describe "updating data in a hash" do
  describe "update_counting_hash" do
    it "accepts a hash and key as parameters" do
      expect{ update_counting_hash({},'hello') }.to_not raise_error
    end

    it "if key is not present, returns a hash with the provided key assigned to the value of 1" do
      expect(update_counting_hash({},'hello')).to eq({'hello' => 1})
      expect(update_counting_hash({total: 5},:age)).to eq({total: 5, age: 1})
    end

    it "if key is present, returns a hash where the key's value is incremented by 1" do
      expect(update_counting_hash({count: 5},:count)).to eq({count: 6})
      expect(update_counting_hash({'number' => 1, 'amount' => 50},'number')).to eq({'number' => 2, 'amount' => 50})
    end
  end

end
