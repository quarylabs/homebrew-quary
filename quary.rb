# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.1/quary-macos-x86_64-gnu.zip"
    sha256 "1e3eb03f047c14befa5adccd1ca7bbc826aa51f5bb5a3f693fe2cc198cbeff4f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.1/quary-macos-aarch64-gnu.zip"
    sha256 "f28378daa80f14a8a13632162497d3eeec024856a24a9413cbd4cdfeb87e6608"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary/releases/download/v0.3.1/quary-linux-x86_64-gnu.zip"
    sha256 "1a4670a91275ee5d58555e8af5c7538d704b15641f6a38ad5ad8409da7c1370c"
  end

  def install
    bin.install "quary" => "quary"
  end
end
