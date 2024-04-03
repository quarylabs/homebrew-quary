# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.106/quary-0.0.106-quary-macos-x86_64-gnu.zip"
    sha256 "d5b2785a451aee5e5edc0e53ff9754df53dd62f903ae1cec4cfd3f5f6a89de42"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.106/quary-0.0.106-quary-macos-aarch64-gnu.zip"
    sha256 "44c8f221663f3b21f83294c59ac77f51027daf1ee76b2bac5ce5790db6e35a71"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.106/quary-0.0.106-quary-linux-x86_64-gnu.zip"
    sha256 "f0cb701010fd2107da3557279534085ceeff71e88fea5c4d247e75338b0bea62"
  end

  def install
    bin.install "quary" => "quary"
  end
end
