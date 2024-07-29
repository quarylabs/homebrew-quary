# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.3/quary-macos-x86_64-gnu.zip"
    sha256 "e37198b1be127022fc70ccda899fbb53a591c97a968c4ce54c08b07c529240d5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.3/quary-macos-aarch64-gnu.zip"
    sha256 "05de4c74d939ea15e72d70fd0ebeb6e373ad1611c20e1c6943fdcab7109a6ea4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.3/quary-linux-x86_64-gnu.zip"
    sha256 "c7a550873da6f81c6c5b73ae03ada8e0800f70b35ab6500562d73ed99ef76ac5"
  end

  def install
    bin.install "quary" => "quary"
  end
end
