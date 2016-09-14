require 'rails_helper'

RSpec.describe "dashboard/index.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"

  xit 'renders _dashboard_cohort partial for each cohort' do
    assign (:avtive_cohorts, [double(c), double(c), double(c)])
    render

    expect(view).to render_template(:partial => '_dashboard_cohort', :count => 3)
  end

end

######## Test Examples for View ########

RSpec.describe "events/index", :type => :view do
  it "renders _event partial for each event" do
    assign(:events, [double(Event), double(Event)])
    render
    expect(view).to render_template(:partial => "_event", :count => 2)
  end
end