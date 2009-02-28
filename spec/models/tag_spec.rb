require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tag do
  it { should have_many(:taggings).dependent(:destroy) }
  it { should have_many(:taggings, :dependent => :destroy) }
  it { should have_many(:posts) }

  it { should validate_length_of(:name, :minimum => 1) }
  
  it { should protect_attributes(:secret) }
  it { should_not protect_attributes(:name) }

  it { should allow_mass_assignment_of(:name) }
  it { should_not allow_mass_assignment_of(:secret) }
end

describe Tag do
  should_have_many :taggings, :dependent => :destroy
  should_have_many :posts

  should_validate_length_of :name, :minimum => 1

  should_protect_attributes :secret
end
