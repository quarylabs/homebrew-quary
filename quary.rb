# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.0.127/quary-macos-x86_64-gnu.zip"
    sha256 "5fca7255845425e817fad1c4a9bb72f844dbdde50204da6a68ba4262de77e3ff"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.0.127/quary-macos-aarch64-gnu.zip"
    sha256 "5bd9ea67d5474187e334a6f16170850be92f59ee90a87f022b9dae4d627abd55"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.0.127/quary-linux-x86_64-gnu.zip"
    sha256 "7f02ef9d3816badfb0b1ab34faa65a073308263d6fe5b6c03aedb91d0dd86c2c"
  end

  def install
    bin.install "quary" => "quary"
  end
end
