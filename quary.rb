# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.111/quary-0.0.111-quary-macos-x86_64-gnu.zip"
    sha256 "db5f432ed822b561391e9864571277954c5d039baeabb81f6cf07d7b36b30b20"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/0.0.111/quary-0.0.111-quary-macos-aarch64-gnu.zip"
    sha256 "02945aab38cb5c2c63d1410932f4bd8d532af50d7e3a1211bde5ad3d5c3df2e1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/0.0.111/quary-0.0.111-quary-linux-x86_64-gnu.zip"
    sha256 "83cc8a3461739a72070c380680c0b849f77c7fe08a7b5ab8e83d94ac665c2ab5"
  end

  def install
    bin.install "quary" => "quary"
  end
end
