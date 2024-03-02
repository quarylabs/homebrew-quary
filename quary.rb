# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.96/quary-0.0.96-quary-macos-x86_64-gnu.zip"
    sha256 "a76f55a0d8c4b987231148e2111921f7e0295b45046d4cf740d3424039055705"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.96/quary-0.0.96-quary-macos-aarch64-gnu.zip"
    sha256 "5694f70b4f6d5dc40df67a0af98a2530cffdade78dc2dd5620c8dd7ab93e5772"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.96/quary-0.0.96-quary-linux-x86_64-gnu.zip"
    sha256 "7a44a6640707c8086acda54938c93a6c6ebac6c8d275b0154a30afe5584b4f87"
  end

  def install
    bin.install "quary" => "quary"
  end
end
