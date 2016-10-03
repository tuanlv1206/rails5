require 'rails_helper'

describe Api::ProductsController do
  it "routes api/products", :type => :routing do
    expect(get('api/products')).to route_to("api/products#index")
  end

  it "routes api/products/1", :type => :routing do
    expect(get("api/products/1")).to route_to(:controller => "api/products", :action => "show", :id => "1")
  end
end

describe Api::ProductsController, type: :controller do
  describe "#index.json" do
    before {get :index, format: :json}
    it {should render_template :index}
  end

  describe "#show.json" do
    before {get :show, id: 1, format: :json}
    it {should render_template :show}
  end

  describe "#collection" do
    before { expect(subject).to receive(:params).and_return(:params)}
    before {expect(Product).to receive(:search_by).with(:params)}
    it { expect{subject.send :collection}.to_not raise_error}
  end

  describe "#resource" do
    before {expect(subject).to receive(:params).and_return({id: 1})}
    before {expect(Product).to receive(:find).with(1)}
    it {expect{subject.send :resource}.to_not raise_error}
  end
end

describe '.search_by' do
  let(:relation) { double }

  before { expect(Product).to receive(:page).with(1).and_return(relation) }

  context do
    it { expect { Product.search_by 'page' => 1 }.to_not raise_error }
  end

  context do
    before { expect(relation).to receive(:where).with('name ILIKE ?', 'abc%') }

    it { expect { Product.search_by 'page' => 1, 'term' => 'abc' }.to_not raise_error }
  end
end
