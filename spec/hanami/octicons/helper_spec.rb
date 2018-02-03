# frozen_string_literal: true

require "spec_helper"

RSpec.describe Hanami::Octicons::Helper do
  include described_class

  context "without a symbol it renders nothing" do
    subject(:subject) { octicon(nil) }

    it { is_expected.to eq("") }
  end

  context "renders the symbol svg" do
    subject(:subject) { octicon("x") }

    it { is_expected.to match(%r{<svg.*octicon-x.*><path.*\/><\/svg>}) }
    it { is_expected.to be_a(Hanami::Utils::Escape::SafeString) }
  end

  context "renders the path" do
    subject(:subject) { octicon("alert") }

    it { is_expected.to match(/<path/) }
  end

  context "renders html attributes" do
    subject(:subject) { octicon("alert", foo: "bar") }

    it { is_expected.to match(/foo="bar"/) }
  end

  context "raises errors for unknown symbols" do
    subject(:subject) { -> { octicon("xyz") } }
    let(:error) { %q(Couldn't find octicon symbol for "xyz") }

    it { is_expected.to raise_error(error) }
  end
end
