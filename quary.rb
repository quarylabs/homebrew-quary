# typed: true
# frozen_string_literal: true

# Quary Homebrew Formula
class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"
  depends_on :macos
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.93/quary-0.0.93-quary-macos-x86_64-gnu.zip"
    sha256 "0cc53cc3fc899c439afe68bf5776e7bbc71f45a56aaca4f8eaa4aef141d86166"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.93/quary-0.0.93-quary-macos-aarch64-gnu.zip"
    sha256 "eba10c57eccf74cf14955dc0189792a6a7043ae04d284463093d03b05c0c5e02"
  end
  def install
    bin.install "quary" => "quary"
  end
end
