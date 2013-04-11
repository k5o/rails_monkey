require 'spec_helper'

describe Answer do
  it { should belong_to :choice }
  it { should belong_to :completion }
end