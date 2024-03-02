# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  depends_on :macos
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.95/quary-0.0.95-quary-macos-x86_64-gnu.zip"
    sha256 "840273b2f8e5747e6032fa794462739775631cf96920d21ea532086f971863e6"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.95/quary-0.0.95-quary-macos-aarch64-gnu.zip"
    sha256 "7e174ad80c4ac61ac045d88d42d6e65dceb136238075e23177a267be99e5a6bc"
  end
  def install
    bin.install "quary" => "quary"
  end
end
