require 'spec_helper'

describe Completion do
  it { should have_many :answers }
  it { should belong_to :survey }
end