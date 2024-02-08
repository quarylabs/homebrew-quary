# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.84/quary-0.0.84-quary-macos-x86_64-gnu.zip"
    sha256 "167663f2e54889753d6e99190fd5a27ed91a799d35a22df9d93d9a115bfa67f6"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.84/quary-0.0.84-quary-macos-aarch64-gnu.zip"
    sha256 "ee3a3a35a002a634d5745d09f7db9781465ece1692b6265a35390d220c18d8ef"
  end
  def install
    bin.install "quary" => "quary"
  end
end
