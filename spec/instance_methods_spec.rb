require 'spec_helper'

describe 'Dog' do
  it 'is defined' do
    expect(defined?(Dog)).to be_truthy
    expect(Dog).to be_a(Class)
  end

  describe '#bark' do
    it 'responds to the #bark instance method' do
      fido = Dog.new
      expect(fido).to respond_to(:bark)
    end

    it 'puts "Woof!"' do
      expect($stdout).to receive(:puts).with("Woof!")

      fido = Dog.new
      fido.bark
    end
  end

  describe '#sit' do
    it 'responds to the #sit instance method' do
      fido = Dog.new
      expect(fido).to respond_to(:sit)
    end

    it 'puts "The Dog is sitting"' do
      expect($stdout).to receive(:puts).with("The Dog is sitting")

      fido = Dog.new
      fido.sit
    end
  end

  context 'variables defined in lib/dog.rb' do
    it 'defines a local variable fido as an instance of a Dog' do
      fido = get_variable_from_file("lib/dog.rb", "fido")
      expect(fido).to be_a(Dog)
    end

    it 'defines a local variable snoopy as an instance of a Dog' do
      snoopy = get_variable_from_file("lib/dog.rb", "snoopy")
      expect(snoopy).to be_a(Dog)
    end

    it 'defines a local variable lassie as an instance of a Dog' do
      lassie = get_variable_from_file("lib/dog.rb", "lassie")
      expect(lassie).to be_a(Dog)
    end
  end
end

describe 'Person' do
  it 'is defined' do
    expect(defined?(Person)).to be_truthy
    expect(Person).to be_a(Class)
  end

  describe '#talk' do
    it 'responds to the #talk instance method' do
      ada = Person.new
      expect(ada).to respond_to(:talk)
    end

    it 'puts "Hello World!"' do
      expect($stdout).to receive(:puts).with("Hello World!")

      ada = Person.new
      ada.talk
    end
  end

  describe '#walk' do
    it 'responds to the #walk instance method' do
      ada = Person.new
      expect(ada).to respond_to(:walk)
    end

    it 'puts "The Person is walking"' do
      expect($stdout).to receive(:puts).with("The Person is walking")

      ada = Person.new
      ada.walk
    end
  end

  context 'variables defined in lib/person.rb' do
    it 'defines a local variable adele_goldberg as an instance of a Person' do
      adele_goldberg = get_variable_from_file("lib/person.rb", "adele_goldberg")
      expect(adele_goldberg).to be_a(Person)
    end

    it 'defines a local variable alan_kay as an instance of a Person' do
      alan_kay = get_variable_from_file("lib/person.rb", "alan_kay")
      expect(alan_kay).to be_a(Person)
    end
  end
end
