require 'rails_helper'

RSpec.describe Project do

  it { should validate_presence_of(:content) }

  it { should have_many(:tasks) }

end
